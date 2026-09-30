import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/child.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/school_updates_provider.dart';

class ParentSchoolUpdatesScreen extends StatefulWidget {
  const ParentSchoolUpdatesScreen({super.key});

  @override
  State<ParentSchoolUpdatesScreen> createState() => _ParentSchoolUpdatesScreenState();
}

class _ParentSchoolUpdatesScreenState extends State<ParentSchoolUpdatesScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text('School Updates'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Events'), Tab(text: 'Calendar'), Tab(text: 'Activities')],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [_EventsTab(), _CalendarTab(), _ActivitiesTab()],
      ),
    );
  }
}

class _EmptyFeed extends StatelessWidget {
  const _EmptyFeed({required this.icon, required this.message});

  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 48, color: Theme.of(context).colorScheme.outline),
          const SizedBox(height: 12),
          Text(message),
        ],
      ),
    );
  }
}

class _EventsTab extends ConsumerWidget {
  const _EventsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventsAsync = ref.watch(eventsProvider);
    final dateFormat = DateFormat('d MMM yyyy');

    return eventsAsync.when(
      data: (events) {
        if (events.isEmpty) {
          return const _EmptyFeed(icon: Icons.celebration_outlined, message: 'No events posted yet.');
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: events.length,
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (context, i) => _FeedCard(
            icon: Icons.celebration_outlined,
            color: const Color(0xFF7C3AED),
            title: events[i].eventName,
            subtitle: events[i].description,
            date: dateFormat.format(events[i].eventDate),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => ErrorView(message: describeError(err), onRetry: () => ref.invalidate(eventsProvider)),
    );
  }
}

class _CalendarTab extends ConsumerWidget {
  const _CalendarTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarAsync = ref.watch(calendarProvider);
    final dateFormat = DateFormat('d MMM yyyy');

    return calendarAsync.when(
      data: (entries) {
        if (entries.isEmpty) {
          return const _EmptyFeed(
            icon: Icons.calendar_month_outlined,
            message: 'No academic calendar entries yet.',
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: entries.length,
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (context, i) => _FeedCard(
            icon: Icons.calendar_month_outlined,
            color: const Color(0xFF2563EB),
            title: entries[i].eventTitle ?? 'Untitled',
            subtitle: entries[i].eventDescription,
            date: entries[i].eventDate != null ? dateFormat.format(entries[i].eventDate!) : null,
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => ErrorView(message: describeError(err), onRetry: () => ref.invalidate(calendarProvider)),
    );
  }
}

/// Child's own participation shown first (what a parent actually cares
/// about — "what has my child signed up for"), full institution feed below.
class _ActivitiesTab extends ConsumerWidget {
  const _ActivitiesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChild = ref.watch(activeChildProvider);
    final activitiesAsync = ref.watch(activitiesProvider);
    final dateFormat = DateFormat('d MMM yyyy');

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (activeChild != null) ...[
          Text('${activeChild.displayName}\'s Activities', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          _ChildActivitiesSection(studentId: activeChild.studentId, dateFormat: dateFormat),
          const SizedBox(height: 24),
        ],
        Text('All School Activities', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        activitiesAsync.when(
          data: (activities) {
            if (activities.isEmpty) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('No activities posted yet.'),
              );
            }
            return Column(
              children: activities
                  .map((a) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: _FeedCard(
                          icon: Icons.emoji_events_outlined,
                          color: const Color(0xFFD97706),
                          title: a.activityName,
                          subtitle: a.description ?? a.venue,
                          date: a.activityDate != null ? dateFormat.format(a.activityDate!) : null,
                        ),
                      ))
                  .toList(),
            );
          },
          loading: () => const Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator())),
          error: (err, _) => Text(describeError(err)),
        ),
      ],
    );
  }
}

class _ChildActivitiesSection extends ConsumerWidget {
  const _ChildActivitiesSection({required this.studentId, required this.dateFormat});

  final String studentId;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final participationAsync = ref.watch(childActivitiesProvider(studentId));

    return participationAsync.when(
      data: (items) {
        if (items.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text('Not signed up for any activities yet.'),
          );
        }
        return Column(
          children: items
              .map((p) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _FeedCard(
                      icon: Icons.star_outline,
                      color: const Color(0xFF16A34A),
                      title: p.activity.activityName,
                      subtitle: p.result ?? p.remarks ?? 'Result pending',
                      date: p.activity.activityDate != null
                          ? dateFormat.format(p.activity.activityDate!)
                          : null,
                    ),
                  ))
              .toList(),
        );
      },
      loading: () => const Padding(padding: EdgeInsets.all(16), child: Center(child: CircularProgressIndicator())),
      error: (err, _) => Text(describeError(err)),
    );
  }
}

class _FeedCard extends StatelessWidget {
  const _FeedCard({
    required this.icon,
    required this.color,
    required this.title,
    this.subtitle,
    this.date,
  });

  final IconData icon;
  final Color color;
  final String title;
  final String? subtitle;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border(left: BorderSide(color: color, width: 4)),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                if (subtitle != null && subtitle!.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(subtitle!, style: Theme.of(context).textTheme.bodySmall),
                ],
                if (date != null) ...[
                  const SizedBox(height: 6),
                  Text(date!, style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600)),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
