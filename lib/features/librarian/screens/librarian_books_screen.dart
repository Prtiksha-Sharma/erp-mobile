import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/library.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/librarian_providers.dart';
import '../services/librarian_service.dart';
import '../../../core/error/failure.dart';
import 'librarian_page_scaffold.dart';

enum _Availability { all, available, unavailable }

/// Book catalog — GET /librarian/books. The backend returns the whole
/// catalog, so search / category / availability filtering is done here.
class LibrarianBooksScreen extends ConsumerStatefulWidget {
  const LibrarianBooksScreen({super.key});

  @override
  ConsumerState<LibrarianBooksScreen> createState() => _LibrarianBooksScreenState();
}

class _LibrarianBooksScreenState extends ConsumerState<LibrarianBooksScreen> {
  final _search = TextEditingController();
  String _query = '';
  String? _category;
  _Availability _availability = _Availability.all;
  bool _showInactive = false;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<LibraryBook> _filter(List<LibraryBook> books) {
    final q = _query.trim().toLowerCase();
    return books.where((b) {
      if (!_showInactive && !b.isActive) return false;
      if (_category != null && b.category != _category) return false;
      if (_availability == _Availability.available && b.availableCopies <= 0) return false;
      if (_availability == _Availability.unavailable && b.availableCopies > 0) return false;
      if (q.isEmpty) return true;
      return [b.title, b.author, b.publisher, b.accessionNo].any((f) => (f ?? '').toLowerCase().contains(q));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(librarianBooksProvider);

    return LibrarianPageScaffold(
      title: 'Book Catalog',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showBookFormSheet(context, ref),
        icon: const Icon(Icons.add),
        label: const Text('Add book'),
      ),
      body: AsyncValueView<List<LibraryBook>>(
        value: value,
        onRetry: () => ref.invalidate(librarianBooksProvider),
        data: (books) {
          final categories = ({for (final b in books) if ((b.category ?? '').trim().isNotEmpty) b.category!}.toList()
            ..sort());
          final filtered = _filter(books);
          return ResponsiveListView(
            onRefresh: () => ref.refresh(librarianBooksProvider.future),
            children: [
              LibrarySearchField(
                controller: _search,
                hint: 'Search title, author, publisher or accession no.',
                onChanged: (v) => setState(() => _query = v),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  for (final a in _Availability.values)
                    ChoiceChip(
                      label: Text(switch (a) {
                        _Availability.all => 'All',
                        _Availability.available => 'Available',
                        _Availability.unavailable => 'All issued',
                      }),
                      selected: _availability == a,
                      onSelected: (_) => setState(() => _availability = a),
                    ),
                  FilterChip(
                    label: const Text('Show deactivated'),
                    selected: _showInactive,
                    onSelected: (v) => setState(() => _showInactive = v),
                  ),
                ],
              ),
              if (categories.isNotEmpty) ...[
                const SizedBox(height: 8),
                DropdownButtonFormField<String?>(
                  key: ValueKey(_category),
                  initialValue: _category,
                  isExpanded: true,
                  decoration: const InputDecoration(labelText: 'Category', isDense: true),
                  items: [
                    const DropdownMenuItem<String?>(value: null, child: Text('All categories')),
                    for (final c in categories) DropdownMenuItem<String?>(value: c, child: Text(c)),
                  ],
                  onChanged: (v) => setState(() => _category = v),
                ),
              ],
              const SizedBox(height: 16),
              if (books.isEmpty)
                const EmptyCard(
                  icon: Icons.menu_book_outlined,
                  title: 'No books yet',
                  message: 'Tap "Add book" to start your catalog.',
                )
              else if (filtered.isEmpty)
                const EmptyCard(
                  icon: Icons.search_off,
                  title: 'No matching books',
                  message: 'Try a different search or clear the filters.',
                )
              else
                DividedCard(
                  children: [
                    for (final b in filtered)
                      _BookTile(book: b, onTap: () => showBookDetailSheet(context, ref, b)),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}

class _BookTile extends StatelessWidget {
  const _BookTile({required this.book, required this.onTap});

  final LibraryBook book;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final subtitle = [
      if ((book.author ?? '').isNotEmpty) book.author!,
      if ((book.accessionNo ?? '').isNotEmpty) 'Acc. ${book.accessionNo}',
    ].join('  ·  ');
    return ListTile(
      onTap: onTap,
      title: Text(book.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: subtitle.isEmpty
          ? null
          : Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: scheme.onSurfaceVariant)),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!book.isActive)
            const StatusBadge(label: 'Deactivated')
          else
            StatusBadge(
              label: '${book.availableCopies}/${book.totalCopies} available',
              variant: book.availableCopies > 0 ? BadgeVariant.success : BadgeVariant.danger,
            ),
        ],
      ),
    );
  }
}

/// Detail sheet — everything about the title, with edit and (de)activate.
Future<void> showBookDetailSheet(BuildContext context, WidgetRef ref, LibraryBook book) {
  return showLibrarianFormSheet<void>(
    context,
    (sheetContext) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(book.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Row(
          children: [
            StatusBadge(
              label: book.isActive ? 'Active' : 'Deactivated',
              variant: book.isActive ? BadgeVariant.success : BadgeVariant.neutral,
            ),
            const SizedBox(width: 8),
            StatusBadge(
              label: '${book.availableCopies} of ${book.totalCopies} available',
              variant: book.availableCopies > 0 ? BadgeVariant.primary : BadgeVariant.danger,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Wrap(
          runSpacing: 12,
          spacing: 24,
          children: [
            _field('Author', book.author),
            _field('Accession no.', book.accessionNo),
            _field('Category', book.category),
            _field('Class', book.instituteClass),
            _field('Publisher', book.publisher),
            _field('Edition', book.edition),
            _field('Year', book.publicationYear?.toString()),
            _field('Language', book.language),
            _field('Shelf / rack', book.shelfRack),
            _field('Copies issued out', '${book.issuedOut}'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () async {
                final changed = await showLibraryConfirm(
                  sheetContext,
                  title: book.isActive ? 'Deactivate book?' : 'Reactivate book?',
                  message: book.isActive
                      ? '"${book.title}" will no longer be available to issue. Existing loans are not affected.'
                      : '"${book.title}" will be available to issue again.',
                  confirmLabel: book.isActive ? 'Deactivate' : 'Reactivate',
                  dangerous: book.isActive,
                  action: () async {
                    final result = book.isActive
                        ? await LibrarianService().deactivateBook(book.bookId)
                        : await LibrarianService().setBookActive(book.bookId, true);
                    return switch (result) {
                      Ok() => null,
                      Err(:final failure) => failure.userMessage,
                    };
                  },
                );
                if (!changed || !sheetContext.mounted) return;
                invalidateLibraryData(ref);
                Navigator.of(sheetContext).pop();
              },
              child: Text(book.isActive ? 'Deactivate' : 'Reactivate'),
            ),
            const SizedBox(width: 8),
            FilledButton.icon(
              onPressed: () {
                Navigator.of(sheetContext).pop();
                showBookFormSheet(context, ref, book: book);
              },
              icon: const Icon(Icons.edit_outlined),
              label: const Text('Edit'),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _field(String label, String? value) => SizedBox(width: 150, child: InfoField(label: label, value: value));

/// Add / edit form. POST /books requires only a title; editing cannot drop
/// total copies below the number currently issued out (the backend 400s).
Future<void> showBookFormSheet(BuildContext context, WidgetRef ref, {LibraryBook? book}) {
  return showLibrarianFormSheet<void>(context, (_) => _BookForm(book: book, ref: ref));
}

class _BookForm extends StatefulWidget {
  const _BookForm({required this.book, required this.ref});

  final LibraryBook? book;
  final WidgetRef ref;

  @override
  State<_BookForm> createState() => _BookFormState();
}

class _BookFormState extends State<_BookForm> {
  final _formKey = GlobalKey<FormState>();
  late final _title = TextEditingController(text: widget.book?.title);
  late final _author = TextEditingController(text: widget.book?.author);
  late final _accession = TextEditingController(text: widget.book?.accessionNo);
  late final _category = TextEditingController(text: widget.book?.category);
  late final _publisher = TextEditingController(text: widget.book?.publisher);
  late final _edition = TextEditingController(text: widget.book?.edition);
  late final _year = TextEditingController(text: widget.book?.publicationYear?.toString());
  late final _language = TextEditingController(text: widget.book?.language);
  late final _shelf = TextEditingController(text: widget.book?.shelfRack);
  late final _class = TextEditingController(text: widget.book?.instituteClass);
  late final _copies = TextEditingController(text: '${widget.book?.totalCopies ?? 1}');
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    for (final c in [_title, _author, _accession, _category, _publisher, _edition, _year, _language, _shelf, _class, _copies]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final input = LibraryBookInput(
      title: _title.text,
      author: _author.text,
      accessionNo: _accession.text,
      category: _category.text,
      publisher: _publisher.text,
      edition: _edition.text,
      publicationYear: int.tryParse(_year.text.trim()),
      language: _language.text,
      shelfRack: _shelf.text,
      instituteClass: _class.text,
      totalCopies: int.parse(_copies.text.trim()),
    );
    final service = LibrarianService();
    final result = widget.book == null
        ? await service.createBook(input)
        : await service.updateBook(widget.book!.bookId, input);
    if (!mounted) return;
    switch (result) {
      case Ok():
        invalidateLibraryData(widget.ref);
        Navigator.of(context).pop();
        showSnack(context, widget.book == null ? 'Book added' : 'Book updated');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  Widget _text(TextEditingController c, String label, {bool required = false, TextInputType? type}) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: TextFormField(
          controller: c,
          keyboardType: type,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(labelText: required ? '$label *' : label),
          validator: required ? (v) => (v == null || v.trim().isEmpty) ? 'Required' : null : null,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(widget.book == null ? 'Add book' : 'Edit book',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          _text(_title, 'Title', required: true),
          _text(_author, 'Author'),
          _text(_accession, 'Accession no.'),
          _text(_category, 'Category'),
          _text(_class, 'Class'),
          _text(_publisher, 'Publisher'),
          _text(_edition, 'Edition'),
          _text(_year, 'Publication year', type: TextInputType.number),
          _text(_language, 'Language'),
          _text(_shelf, 'Shelf / rack'),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: TextFormField(
              controller: _copies,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Total copies *',
                helperText: widget.book == null ? null : 'Cannot be fewer than copies currently issued (${widget.book!.issuedOut}).',
              ),
              validator: (v) {
                final n = int.tryParse((v ?? '').trim());
                if (n == null || n < 0) return 'Enter a number, 0 or more';
                if (widget.book == null && n < 1) return 'Enter at least 1 copy';
                return null;
              },
            ),
          ),
          if (_error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ),
          SheetActions(busy: _busy, onSubmit: _submit, submitLabel: widget.book == null ? 'Add book' : 'Save changes'),
        ],
      ),
    );
  }
}
