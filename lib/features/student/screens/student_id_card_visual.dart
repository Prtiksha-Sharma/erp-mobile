import 'package:flutter/material.dart';

import '../../../core/models/student_certificates.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';

/// Port of the web's IdCardVisual.jsx — brand-gradient card with the
/// institution, initials avatar, name, admission no, class/session pills,
/// card number, and issue/expiry dates. [compact] is the dashboard preview
/// size; the full size is used on the Certificates screen.
class IdCardVisual extends StatelessWidget {
  const IdCardVisual({
    super.key,
    required this.card,
    this.fallbackName,
    this.fallbackInstitution,
    this.compact = false,
  });

  final StudentIdCard card;
  final String? fallbackName;
  final String? fallbackInstitution;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final studentName = card.studentName ?? fallbackName ?? '—';
    final institution = card.institutionName ?? fallbackInstitution ?? 'School';
    final classLabel = [card.className, card.sectionName].whereType<String>().where((s) => s.isNotEmpty).join(' - ');
    final badges = [
      if (classLabel.isNotEmpty) classLabel,
      if (card.sessionName != null && card.sessionName!.isNotEmpty) card.sessionName!,
    ];
    final white70 = Colors.white.withValues(alpha: 0.75);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: AppColors.brandGradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withValues(alpha: 0.25), blurRadius: 16, offset: const Offset(0, 6)),
        ],
      ),
      child: Stack(
        children: [
          // Decorative glows, same as the web card's radial gradients.
          Positioned(
            top: -50,
            right: -50,
            child: _Glow(size: 160, opacity: 0.18),
          ),
          Positioned(
            bottom: -40,
            left: -30,
            child: _Glow(size: 110, opacity: 0.1),
          ),
          Padding(
            padding: EdgeInsets.all(compact ? 16 : 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        institution,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: white70, fontWeight: FontWeight.w500, fontSize: compact ? 12 : 13),
                      ),
                    ),
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.badge_outlined, color: Colors.white, size: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    CircleAvatar(
                      radius: compact ? 18 : 24,
                      backgroundColor: Colors.white.withValues(alpha: 0.2),
                      child: Text(
                        initialsOf(studentName),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: compact ? 13 : 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            studentName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: compact ? 15 : 19,
                            ),
                          ),
                          if (card.admissionNo != null)
                            Text(
                              card.admissionNo!,
                              style: TextStyle(color: white70, fontSize: 12, fontFamily: 'monospace'),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (badges.isNotEmpty || card.cardNumber != null) ...[
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: [
                            for (final b in badges)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.15),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: Text(b, style: const TextStyle(color: Colors.white, fontSize: 11)),
                              ),
                          ],
                        ),
                      ),
                      if (card.cardNumber != null) ...[
                        const SizedBox(width: 8),
                        Text(
                          card.cardNumber!,
                          style: TextStyle(color: white70, fontSize: 11, fontFamily: 'monospace'),
                        ),
                      ],
                    ],
                  ),
                ],
                const SizedBox(height: 12),
                Container(height: 1, color: Colors.white.withValues(alpha: 0.2)),
                const SizedBox(height: 10),
                DefaultTextStyle(
                  style: TextStyle(color: white70, fontSize: 11),
                  child: Row(
                    children: [
                      Expanded(child: Text('Issued ${formatDate(card.issueDate)}')),
                      Text('Valid till ${formatDate(card.expiryDate)}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Glow extends StatelessWidget {
  const _Glow({required this.size, required this.opacity});

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [Colors.white.withValues(alpha: opacity * 3.5), Colors.transparent],
          ),
        ),
      ),
    );
  }
}
