import 'package:edusoft_mobile/core/models/hostel_warden.dart';
import 'package:flutter_test/flutter_test.dart';

/// Payload shapes copied from edusoft_backend/src/features/hostel/*.service.js.
void main() {
  test('room with occupancy (lookups.service.js#listActiveRooms)', () {
    final r = WardenRoom.fromJson({
      'room_id': 'r1', 'institution_id': 'i1', 'block_name': null, 'room_number': '12', 'capacity': 3,
      'room_type': 'SHARED', 'is_active': true, 'created_at': '2026-01-01T00:00:00.000Z',
      'updated_at': '2026-01-01T00:00:00.000Z', 'floor_number': 2, 'ac_type': null,
      'occupied_count': 1, 'vacant_count': 2, 'room_status': 'PARTIAL',
    });
    expect(r.vacantCount, 2);
    expect(r.roomStatus, 'PARTIAL');
  });

  test('student allocation with includes', () {
    final a = StudentRoomAllocation.fromJson({
      'allocation_id': 'a1', 'room_id': 'r1', 'student_id': 's1', 'session_id': 'ss', 'bed_number': null,
      'allocated_at': '2026-06-01T10:00:00.000Z', 'vacated_at': null, 'status': 'ACTIVE',
      'hostel_rooms': {'room_id': 'r1', 'room_number': '12', 'capacity': 3, 'floor_number': 2, 'room_type': null, 'ac_type': 'AC'},
      'students': {'student_id': 's1', 'admission_no': 'ADM1', 'applicants': {'first_name': 'Asha', 'last_name': 'Rao'}},
    });
    expect(a.student!.name, 'Asha Rao');
    expect(a.room!.label, 'Room 12 · Floor 2');
  });

  test('bare vacate response parses', () {
    final a = StudentRoomAllocation.fromJson({
      'allocation_id': 'a1', 'room_id': 'r1', 'student_id': 's1', 'session_id': 'ss',
      'status': 'VACATED', 'vacated_at': '2026-06-02T10:00:00.000Z',
    });
    expect(a.room, isNull);
  });

  test('visitor with @db.Time columns', () {
    final v = HostelVisitor.fromJson({
      'visitor_id': 'v1', 'student_id': 's1', 'visitor_name': 'Ravi', 'relation_to_student': 'Father',
      'visit_date': '2026-10-10T00:00:00.000Z', 'check_in_time': '1970-01-01T09:05:00.000Z',
      'check_out_time': null, 'purpose': null, 'approved_by': 'st1', 'created_at': '2026-10-10T09:05:00.000Z',
      'students': {'student_id': 's1', 'admission_no': 'ADM1', 'applicants': {'first_name': 'Asha', 'last_name': null}},
    });
    expect(v.isCheckedOut, isFalse);
  });

  test('student resident profile (nested class/section/users)', () {
    final p = StudentResidentProfile.fromJson({
      'student_id': 's1', 'admission_no': 'ADM1', 'roll_no': '7', 'admission_date': '2024-04-01T00:00:00.000Z',
      'current_class': {'class_name': 'Grade 8'}, 'current_section': null,
      'applicants': {'first_name': 'Asha', 'middle_name': null, 'last_name': 'Rao', 'gender': 'FEMALE', 'dob': null,
        'blood_group': 'O+', 'contact_no': null, 'email_id': null, 'photo_url': null},
      'student_addresses': [{'address_type': 'PERMANENT', 'address_line_1': '1 MG Rd', 'city': 'Pune', 'pincode': '411001'}],
      'parents': [{'relation_type': 'FATHER', 'first_name': 'Ravi', 'last_name': 'Rao', 'mobile_no': '999'}],
      'allocation': {'allocation_id': 'a1', 'room_id': 'r1', 'bed_number': 'B', 'status': 'ACTIVE',
        'hostel_rooms': {'room_id': 'r1', 'room_number': '12', 'floor_number': 2, 'room_type': 'SHARED', 'ac_type': 'AC'}},
    });
    expect(p.className, 'Grade 8');
    expect(p.sectionName, isNull);
    expect(p.addresses.single.oneLine, '1 MG Rd, Pune, 411001');
  });

  test('staff resident profile reads users.email', () {
    final p = StaffResidentProfile.fromJson({
      'staff_id': 'st1', 'full_name': 'K Menon', 'users': {'email': 'k@x.in', 'mobile_no': '1'},
      'allocation': {'allocation_id': 'a2', 'hostel_rooms': {'room_id': 'r2', 'room_number': '3', 'floor_number': 1}},
    });
    expect(p.email, 'k@x.in');
  });

  test('resident, floor, mess rows', () {
    expect(HostelResident.fromJson({
      'resident_type': 'STAFF', 'allocation_id': 'a', 'person_id': 'p', 'identifier': 'E1', 'name': 'K',
      'role_label': 'Teacher', 'bed_number': null, 'allocated_at': null,
      'hostel_rooms': {'room_id': 'r', 'room_number': '1', 'floor_number': 1, 'room_type': null, 'ac_type': null},
    }).isStudent, isFalse);
    expect(WardenFloor.fromJson({'floor_number': 1, 'room_count': 20, 'total_capacity': 40,
      'first_room_number': '1', 'last_room_number': '20'}).roomCount, 20);
    expect(EffectiveMeal.fromJson({'meal_slot': 'LUNCH', 'menu_items': null, 'is_special': false}).menuItems, isNull);
    expect(MessSpecialMenuEntry.fromJson({'special_menu_id': 'x', 'institution_id': 'i',
      'special_date': '2026-10-20T00:00:00.000Z', 'meal_slot': 'DINNER', 'menu_items': 'Biryani', 'updated_by': 's'}).mealSlot, 'DINNER');
  });
}
