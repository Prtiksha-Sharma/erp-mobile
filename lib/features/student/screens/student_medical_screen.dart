import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/student_portal_providers.dart';
import 'student_page_scaffold.dart';

/// Port of MyMedicalPage.jsx — read-only; School Admin owns writes.
class StudentMedicalScreen extends ConsumerWidget {
  const StudentMedicalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StudentPageScaffold(
      title: 'Medical Info',
      body: AsyncValueView(
        value: ref.watch(myMedicalInfoProvider),
        loadingLabel: 'Loading your medical info…',
        onRetry: () => ref.invalidate(myMedicalInfoProvider),
        data: (info) => ResponsiveListView(
          onRefresh: () => ref.refresh(myMedicalInfoProvider.future),
          children: [
            const PageIntro('Health details on file with your School Admin.'),
            SectionCard(
              icon: Icons.monitor_heart_outlined,
              title: 'Health Details',
              child: info == null
                  ? const EmptyState(
                      icon: Icons.monitor_heart_outlined,
                      title: 'No medical info recorded',
                      message: "Your School Admin hasn't added your medical details yet.",
                    )
                  : InfoGrid(
                      minColumnWidth: 160,
                      children: [
                        InfoField(label: 'Blood Group', value: info.bloodGroup),
                        InfoField(label: 'Height', value: info.heightCm == null ? null : '${info.heightCm} cm'),
                        InfoField(label: 'Weight', value: info.weightKg == null ? null : '${info.weightKg} kg'),
                        InfoField(label: 'Doctor Name', value: info.doctorName),
                        InfoField(label: 'Doctor Contact', value: info.doctorContact),
                        InfoField(label: 'Allergies', value: info.allergies),
                        InfoField(label: 'Medical Conditions', value: info.medicalConditions),
                        InfoField(label: 'Remarks', value: info.remarks),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
