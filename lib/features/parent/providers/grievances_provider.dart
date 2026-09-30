import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/grievance_ticket.dart';
import '../services/grievances_service.dart';

/// NOT keyed by studentId — grievances are scoped to the parent account,
/// not a specific child (confirmed: listMyGrievances(parentAccountIds)
/// filters by parent_account_id, never student_id). A ticket can
/// optionally reference one child, but the list itself always shows every
/// ticket this parent has filed, same non-child-scoped shape as the
/// Events/Activities institution feed.
final grievancesListProvider = FutureProvider<List<GrievanceTicket>>((ref) async {
  final result = await GrievancesService().getMyGrievances();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

/// Keyed by ticketId.
final grievanceDetailProvider = FutureProvider.family<GrievanceTicket, String>(
  (ref, ticketId) async {
    final result = await GrievancesService().getGrievance(ticketId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
