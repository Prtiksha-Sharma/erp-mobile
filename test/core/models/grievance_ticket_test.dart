// Constructed from the confirmed Prisma schema (grievance_tickets,
// grievance_responses — prisma/schema.prisma:3295) and the unchanged
// parent/grievances.service.js source, NOT live-captured — the auth
// token expired mid-session with no password available to get a fresh
// one, and this account has no grievances filed yet regardless. See
// grievance_ticket.dart's own comment for the full reasoning.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/grievance_ticket.dart';

const _ticketWithStudentAndStaff = {
  'ticket_id': 't1',
  'category': 'Transport',
  'subject': 'Bus arrived late',
  'description': 'The bus was 30 minutes late for pickup this morning.',
  'status': 'IN_PROGRESS',
  'priority': 'HIGH',
  'created_at': '2026-09-15T08:00:00.000Z',
  'resolved_at': null,
  'students': {
    'student_id': 's1',
    'applicants': {'first_name': 'Lucky', 'last_name': 'Maity'},
  },
  'staff_accounts': {'full_name': 'Priya Sharma'},
  // list responses omit this key entirely — detail responses include it.
};

const _generalTicketNoResponses = {
  'ticket_id': 't2',
  'category': null,
  'subject': 'General feedback',
  'description': 'The parent app is great!',
  'status': 'OPEN',
  'priority': null,
  'created_at': '2026-09-20T10:00:00.000Z',
  'resolved_at': null,
  'students': null,
  'staff_accounts': null,
};

const _detailWithResponses = {
  ..._ticketWithStudentAndStaff,
  'grievance_responses': [
    {
      'response_id': 'r1',
      'responder_role': 'PARENT',
      'body': 'Please look into this.',
      'created_at': '2026-09-15T08:05:00.000Z',
    },
    {
      'response_id': 'r2',
      'responder_role': 'ADMIN',
      'body': 'We are checking with the transport department.',
      'created_at': '2026-09-15T09:00:00.000Z',
    },
  ],
};

void main() {
  group('GrievanceTicket.fromJson', () {
    test('parses a ticket with nested student and assigned staff', () {
      final ticket = GrievanceTicket.fromJson(_ticketWithStudentAndStaff);

      expect(ticket.category, 'Transport');
      expect(ticket.students?.displayName, 'Lucky Maity');
      expect(ticket.staffAccounts?.fullName, 'Priya Sharma');
      expect(ticket.responses, isNull); // key absent — list-view shape
    });

    test('parses a general ticket (no child, no assigned staff, nulls throughout)', () {
      final ticket = GrievanceTicket.fromJson(_generalTicketNoResponses);

      expect(ticket.category, isNull);
      expect(ticket.priority, isNull);
      expect(ticket.students, isNull);
      expect(ticket.staffAccounts, isNull);
    });

    test('parses the detail shape with a real response thread', () {
      final ticket = GrievanceTicket.fromJson(_detailWithResponses);

      expect(ticket.responses, hasLength(2));
      expect(ticket.responses!.first.responderRole, 'PARENT');
      expect(ticket.responses!.last.responderRole, 'ADMIN');
    });
  });

  group('status helpers', () {
    test('grievanceStatusLabel formats known and unknown statuses consistently', () {
      expect(grievanceStatusLabel('IN_PROGRESS'), 'In Progress');
      expect(grievanceStatusLabel('OPEN'), 'Open');
      expect(grievanceStatusLabel('SOME_FUTURE_STATUS'), 'Some Future Status');
    });

    test('grievanceCanReply matches the backend\'s OPEN_STATUSES exactly', () {
      expect(grievanceCanReply('OPEN'), isTrue);
      expect(grievanceCanReply('IN_PROGRESS'), isTrue);
      expect(grievanceCanReply('RESOLVED'), isFalse);
      expect(grievanceCanReply('CLOSED'), isFalse);
    });
  });
}
