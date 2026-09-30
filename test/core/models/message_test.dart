// Constructed from a direct read of parent/messages.service.js and the
// `messages`/`message_threads` Prisma models — not live-captured, no
// messages exist yet on this test account. See message.dart's own comment
// for the full reasoning.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/message.dart';

const _threadListShape = {
  'thread_id': 't1',
  'staff_id': 's1',
  'status': 'OPEN',
  'last_message_at': '2026-09-20T10:00:00.000Z',
  'staff_accounts': {
    'staff_id': 's1',
    'user_id': 'u1',
    'full_name': 'Priya Sharma',
    'designation': 'Class Teacher',
    'profile_photo_url': null,
  },
  'messages': [
    {
      'message_id': 'm2',
      'thread_id': 't1',
      'sender_role': 'TEACHER',
      'body': 'Thanks, noted.',
      'attachment_url': null,
      'read_at': null,
      'created_at': '2026-09-20T10:00:00.000Z',
    },
  ],
};

void main() {
  group('TeacherContact.fromJson', () {
    test('parses the /messages/teachers list shape', () {
      final teacher = TeacherContact.fromJson({
        'staff_id': 's1',
        'full_name': 'Priya Sharma',
        'designation': 'Class Teacher',
        'department': 'Primary',
        'profile_photo_url': null,
      });
      expect(teacher.staffId, 's1');
      expect(teacher.department, 'Primary');
    });
  });

  group('MessageThread.fromJson', () {
    test('parses the list-view shape (messages holds only the latest one)', () {
      final thread = MessageThread.fromJson(_threadListShape);
      expect(thread.staff.userId, 'u1');
      expect(thread.messages, hasLength(1));
      expect(thread.messages.first.senderRole, SenderRole.teacher);
    });

    test('parses the detail-view shape (messages holds the full ascending thread)', () {
      final detail = {
        ..._threadListShape,
        'messages': [
          {
            'message_id': 'm1',
            'thread_id': 't1',
            'sender_role': 'PARENT',
            'body': 'Is homework submitted?',
            'attachment_url': null,
            'read_at': '2026-09-20T09:59:00.000Z',
            'created_at': '2026-09-20T09:55:00.000Z',
          },
          (_threadListShape['messages'] as List).first,
        ],
      };
      final thread = MessageThread.fromJson(Map<String, dynamic>.from(detail));
      expect(thread.messages, hasLength(2));
      expect(thread.messages.first.senderRole, SenderRole.parent);
      expect(thread.messages.last.senderRole, SenderRole.teacher);
    });

    test('falls back to unknown for an unrecognized sender_role', () {
      final message = ChatMessage.fromJson({
        'message_id': 'm3',
        'thread_id': 't1',
        'sender_role': 'BOT',
        'body': 'hi',
        'attachment_url': null,
        'read_at': null,
        'created_at': null,
      });
      expect(message.senderRole, SenderRole.unknown);
    });
  });
}
