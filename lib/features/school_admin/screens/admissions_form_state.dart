import 'package:flutter/material.dart';

import '../../../core/models/admin_admissions.dart';
import '../services/staff_directory_service.dart' show isoDate;

/// The admission form's data, validation and payloads — a port of the
/// web's useAdminContinueForm.js (Continue Form) and, for New Application,
/// pre-registration's useRegistrationForm.js + mappers.js +
/// registrationValidators.js. Both flows save through the same endpoints
/// with the same payloads; they differ only in a few validation messages
/// ([AdmissionFormFlow]).
enum AdmissionFormFlow {
  /// NewApplicationPage — the pre-registration validators.
  newApplication,

  /// AdminContinueFormPage — useAdminContinueForm's own validators.
  continueForm,
}

const bloodGroups = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
const qualifications = ['Below 10th', '10th Pass', '12th Pass', 'Graduate', 'Post Graduate', 'Doctorate'];
const occupations = ['Government Service', 'Private Service', 'Business', 'Self Employed', 'Housewife', 'Others'];
const genders = ['Male', 'Female', 'Other'];

/// The six steps' titles (the web's STEP_LABELS differ slightly per flow;
/// these are the Continue Form's, which fit a phone's progress label).
const admissionStepLabels = [
  'Basic Info',
  'Additional Details',
  'Parent / Guardian',
  'Sibling Details',
  'Previous School',
  'Documents & Submit',
];

const _textKeys = [
  'firstName', 'middleName', 'lastName', 'phone', 'email', //
  'nationality', 'motherTongue', 'caste', 'aadhaarNo', 'birthCertificateNo',
  'siblingName1', 'siblingRollNo1', 'siblingName2', 'siblingRollNo2', 'siblingName3', 'siblingRollNo3',
  'schoolName', 'schoolBoard', 'passingYear', 'schoolPct', 'schoolGrade', 'tcNumber',
];

const _parentTextSuffixes = [
  'FirstName',
  'LastName',
  'Aadhaar',
  'Mobile',
  'Email',
  'Designation',
  'Organization',
  'OfficeAddress',
  'AnnualIncome', //
];

final _mobilePattern = RegExp(r'^[6-9]\d{9}$');
final _emailPattern = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
final _aadhaarPattern = RegExp(r'^\d{12}$');

class AdmissionFormData {
  AdmissionFormData() {
    for (final k in _textKeys) {
      _text[k] = TextEditingController();
    }
    for (final prefix in ['father', 'mother']) {
      for (final s in _parentTextSuffixes) {
        _text['$prefix$s'] = TextEditingController();
      }
    }
  }

  /// Seeds every field from an existing application (Continue Form) —
  /// mapApplicantToForm / mapParentsToForm / mapSiblingsToForm /
  /// mapSchoolToForm.
  factory AdmissionFormData.fromApplication(AdmissionApplicationDetail app) {
    final f = AdmissionFormData();
    f.classId = app.classRef?.classId ?? '';
    f.className = app.classRef?.className ?? '';

    final a = app.applicant;
    if (a != null) {
      f.set('firstName', a.firstName);
      f.set('middleName', a.middleName);
      f.set('lastName', a.lastName);
      f.gender = a.gender ?? '';
      f.dob = a.dob == null ? null : DateTime(a.dob!.year, a.dob!.month, a.dob!.day);
      f.bloodGroup = a.bloodGroup ?? '';
      f.set('nationality', a.nationality);
      f.set('motherTongue', a.motherTongue);
      f.set('aadhaarNo', a.aadhaarNo);
      f.set('birthCertificateNo', a.birthCertificateNo);
      f.set('caste', a.caste);
      f.set('phone', a.contactNo);
      f.set('email', a.emailId);
    }

    void applyParent(String prefix, AdmissionParent? p) {
      if (p == null) return;
      f.set('${prefix}FirstName', p.firstName);
      f.set('${prefix}LastName', p.lastName);
      f.set('${prefix}Aadhaar', p.aadhaarNo);
      f.set('${prefix}Mobile', p.mobileNo);
      f.set('${prefix}Email', p.email);
      f.set('${prefix}Designation', p.designation);
      f.set('${prefix}Organization', p.organization);
      f.set('${prefix}OfficeAddress', p.officeAddress);
      f.set('${prefix}AnnualIncome', p.annualIncome?.toString());
      f.parentSelect['${prefix}Qualification'] = p.qualification ?? '';
      f.parentSelect['${prefix}Occupation'] = p.occupation ?? '';
      f.alumni[prefix] = p.isAlumni == true;
    }

    applyParent('father', app.parents.where((p) => p.relationType == 'FATHER').firstOrNull);
    applyParent('mother', app.parents.where((p) => p.relationType == 'MOTHER').firstOrNull);

    f.hasSibling = app.siblings.isNotEmpty;
    for (final (i, s) in app.siblings.take(3).indexed) {
      f.set('siblingName${i + 1}', s.siblingName);
      f.set('siblingRollNo${i + 1}', s.admissionNo);
    }

    final school = app.previousSchools.firstOrNull;
    if (school != null) {
      f.set('schoolName', school.schoolName);
      f.set('schoolBoard', school.boardName);
      f.set('passingYear', school.passingYear?.toString());
      f.set('schoolPct', school.percentage);
      f.set('schoolGrade', school.classLastAttended);
      f.set('tcNumber', school.tcNumber);
    }
    return f;
  }

  final Map<String, TextEditingController> _text = {};

  /// `fatherQualification`, `motherOccupation`, … — the dropdown-backed fields.
  final Map<String, String> parentSelect = {
    'fatherQualification': '',
    'fatherOccupation': '',
    'motherQualification': '',
    'motherOccupation': '',
  };
  final Map<String, bool> alumni = {'father': false, 'mother': false};

  String classId = '';
  String className = '';
  DateTime? dob;
  String gender = '';
  String bloodGroup = '';
  bool hasSibling = false;

  TextEditingController c(String key) => _text[key]!;
  String v(String key) => _text[key]!.text;
  void set(String key, String? value) => _text[key]!.text = value ?? '';

  void dispose() {
    for (final c in _text.values) {
      c.dispose();
    }
  }

  /// Turning the sibling question off clears the three entries.
  void setHasSibling(bool value) {
    hasSibling = value;
    if (!value) {
      for (final i in [1, 2, 3]) {
        set('siblingName$i', '');
        set('siblingRollNo$i', '');
      }
    }
  }

  // ── Validators ─────────────────────────────────────────────────────────

  static String _minLength(AdmissionFormFlow flow) =>
      flow == AdmissionFormFlow.newApplication ? 'Minimum 2 characters' : 'Must be at least 2 characters';

  static String _mobileCopy(AdmissionFormFlow flow) => flow == AdmissionFormFlow.newApplication
      ? 'Enter a valid 10-digit mobile number (starting 6–9)'
      : 'Enter a valid 10-digit Indian mobile number';

  static String _emailCopy(AdmissionFormFlow flow) =>
      flow == AdmissionFormFlow.newApplication ? 'Enter a valid email address' : 'Invalid email address';

  static String _aadhaarCopy(AdmissionFormFlow flow) => flow == AdmissionFormFlow.newApplication
      ? 'Aadhaar number must be exactly 12 digits'
      : 'Enter a valid 12-digit Aadhaar number';

  /// New Application accepts a `+91`/`91` prefix and separators
  /// (shared/utils/validators.js#isIndianMobile); Continue Form only strips
  /// spaces.
  static bool _isMobile(String value, AdmissionFormFlow flow) {
    if (flow == AdmissionFormFlow.newApplication) {
      final digits = value.replaceAll(RegExp(r'[\s\-()]'), '').replaceFirst(RegExp(r'^\+?91'), '');
      return _mobilePattern.hasMatch(digits);
    }
    return _mobilePattern.hasMatch(value.replaceAll(RegExp(r'\s+'), ''));
  }

  Map<String, String> validateStep1(AdmissionFormFlow flow) {
    final e = <String, String>{};
    final first = v('firstName').trim();
    final last = v('lastName').trim();
    if (first.isEmpty) {
      e['firstName'] = 'First name is required';
    } else if (first.length < 2) {
      e['firstName'] = _minLength(flow);
    }
    if (last.isEmpty) {
      e['lastName'] = 'Last name is required';
    } else if (last.length < 2) {
      e['lastName'] = _minLength(flow);
    }
    if (flow == AdmissionFormFlow.newApplication && classId.isEmpty) e['class'] = 'Please select a class';
    if (dob == null) e['dob'] = 'Date of birth is required';
    if (gender.isEmpty) e['gender'] = 'Please select gender';
    final phone = v('phone').trim();
    if (phone.isEmpty) {
      e['phone'] = 'Phone number is required';
    } else if (!_isMobile(phone, flow)) {
      e['phone'] = _mobileCopy(flow);
    }
    final email = v('email').trim();
    if (email.isNotEmpty && !_emailPattern.hasMatch(email)) e['email'] = _emailCopy(flow);
    return e;
  }

  Map<String, String> validateStep2(AdmissionFormFlow flow) {
    final e = <String, String>{};
    if (v('nationality').trim().isEmpty) e['nationality'] = 'Nationality is required';
    final aadhaar = v('aadhaarNo').replaceAll(RegExp(r'\s+'), '');
    if (aadhaar.isNotEmpty && !_aadhaarPattern.hasMatch(aadhaar)) e['aadhaarNo'] = _aadhaarCopy(flow);
    return e;
  }

  Map<String, String> validateStep3(AdmissionFormFlow flow) {
    final e = <String, String>{};
    void parent(String prefix, String label) {
      final fn = v('${prefix}FirstName').trim();
      final ln = v('${prefix}LastName').trim();
      final ad = v('${prefix}Aadhaar').replaceAll(RegExp(r'\s+'), '');
      final mb = v('${prefix}Mobile').trim();
      final em = v('${prefix}Email').trim();
      if (fn.isEmpty) {
        e['${prefix}FirstName'] = '$label first name is required';
      } else if (fn.length < 2) {
        e['${prefix}FirstName'] = _minLength(flow);
      }
      if (ln.isEmpty) {
        e['${prefix}LastName'] = '$label last name is required';
      } else if (ln.length < 2) {
        e['${prefix}LastName'] = _minLength(flow);
      }
      if (ad.isEmpty) {
        e['${prefix}Aadhaar'] = 'Aadhaar number is required';
      } else if (!_aadhaarPattern.hasMatch(ad)) {
        e['${prefix}Aadhaar'] = _aadhaarCopy(flow);
      }
      if (mb.isEmpty) {
        e['${prefix}Mobile'] = 'Contact number is required';
      } else if (!_isMobile(mb, flow)) {
        e['${prefix}Mobile'] = _mobileCopy(flow);
      }
      if (em.isNotEmpty && !_emailPattern.hasMatch(em)) e['${prefix}Email'] = _emailCopy(flow);
    }

    parent('father', "Father's");
    parent('mother', "Mother's");
    return e;
  }

  Map<String, String> validateStep4() => {
    if (hasSibling && v('siblingName1').trim().isEmpty) 'siblingName1': 'Sibling 1 name is required',
  };

  Map<String, String> validateStep5() {
    final e = <String, String>{};
    if (v('schoolName').trim().isEmpty) e['schoolName'] = 'School name is required';
    final yearText = v('passingYear').trim();
    if (yearText.isNotEmpty) {
      final yr = num.tryParse(yearText);
      if (yr == null || yr < 1900 || yr > DateTime.now().year) e['passingYear'] = 'Enter a valid year';
    }
    final pctText = v('schoolPct').trim();
    if (pctText.isNotEmpty) {
      final pct = num.tryParse(pctText);
      if (pct == null || pct < 0 || pct > 100) e['schoolPct'] = 'Percentage must be between 0 and 100';
    }
    return e;
  }

  // ── Payloads (camelCase form → snake_case API) ─────────────────────────

  String? _opt(String key) => v(key).trim().isEmpty ? null : v(key).trim();

  Map<String, dynamic> basicDetailsPayload() => {
    'first_name': v('firstName').trim(),
    'middle_name': ?_opt('middleName'),
    'last_name': v('lastName').trim(),
    'gender': gender,
    'dob': isoDate(dob!),
    'blood_group': ?(bloodGroup.isEmpty ? null : bloodGroup),
    'nationality': ?_opt('nationality'),
    'mother_tongue': ?_opt('motherTongue'),
    'aadhaar_no': ?_opt('aadhaarNo'),
    'birth_certificate_no': ?_opt('birthCertificateNo'),
    'caste': ?_opt('caste'),
    'contact_no': v('phone').trim(),
    'email_id': ?_opt('email'),
  };

  Map<String, dynamic> _parent(String prefix, String relation) {
    final income = _opt('${prefix}AnnualIncome');
    final qualification = parentSelect['${prefix}Qualification'] ?? '';
    final occupation = parentSelect['${prefix}Occupation'] ?? '';
    return {
      'relation_type': relation,
      'first_name': v('${prefix}FirstName').trim(),
      'last_name': ?_opt('${prefix}LastName'),
      'aadhaar_no': ?_opt('${prefix}Aadhaar'),
      'mobile_no': ?_opt('${prefix}Mobile'),
      'email': ?_opt('${prefix}Email'),
      'qualification': ?(qualification.isEmpty ? null : qualification),
      'occupation': ?(occupation.isEmpty ? null : occupation),
      'designation': ?_opt('${prefix}Designation'),
      'organization': ?_opt('${prefix}Organization'),
      'office_address': ?_opt('${prefix}OfficeAddress'),
      'annual_income': ?(income == null ? null : num.tryParse(income)),
      'is_alumni': alumni[prefix] ?? false,
    };
  }

  List<Map<String, dynamic>> parentsPayload() => [_parent('father', 'FATHER'), _parent('mother', 'MOTHER')];

  Map<String, dynamic> siblingsPayload() {
    if (!hasSibling) return {'has_sibling': false, 'siblings': <Map<String, dynamic>>[]};
    final siblings = [
      for (final i in [1, 2, 3])
        if (v('siblingName$i').trim().isNotEmpty)
          {
            'sibling_name': v('siblingName$i').trim(),
            'admission_no': ?_opt('siblingRollNo$i'),
            'currently_studying': true,
          },
    ];
    return {'has_sibling': true, 'siblings': siblings};
  }

  Map<String, dynamic> previousSchoolPayload() {
    final year = _opt('passingYear');
    final pct = _opt('schoolPct');
    return {
      'school_name': v('schoolName').trim(),
      'board_name': ?_opt('schoolBoard'),
      'passing_year': ?(year == null ? null : num.tryParse(year)),
      'percentage': ?(pct == null ? null : num.tryParse(pct)),
      'class_last_attended': ?_opt('schoolGrade'),
      'tc_number': ?_opt('tcNumber'),
    };
  }

  /// determineResumeStep: where an unfinished application picks up.
  static int resumeStep(AdmissionApplicationDetail app) {
    final a = app.applicant;
    if (a == null || (a.firstName ?? '').isEmpty) return 1;
    if ((a.nationality ?? '').isEmpty) return 2;
    if (app.parents.isEmpty) return 3;
    if (app.previousSchools.isEmpty) return 4;
    return 6;
  }
}
