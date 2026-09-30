// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentProfile {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String get admissionNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'student_status') String? get studentStatus;@JsonKey(name: 'institutions') InstitutionRef? get institution;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'current_section') SectionRef? get currentSection;@JsonKey(name: 'applicants') ApplicantInfo? get applicant;@JsonKey(name: 'admission_applications') AdmissionApplicationInfo? get application;@JsonKey(name: 'student_addresses') List<StudentAddress> get addresses;@JsonKey(name: 'student_id_cards') List<IdCardSummary> get idCards;@JsonKey(name: 'student_enrollments') List<EnrollmentSummary> get enrollments;
/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileCopyWith<StudentProfile> get copyWith => _$StudentProfileCopyWithImpl<StudentProfile>(this as StudentProfile, _$identity);

  /// Serializes this StudentProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfile&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.institution, _this.institution) || other.institution == _this.institution)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant)&&(identical(other.application, _this.application) || other.application == _this.application)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&const DeepCollectionEquality().equals(other.idCards, _this.idCards)&&const DeepCollectionEquality().equals(other.enrollments, _this.enrollments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentProfile;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.admissionDate,_this.rollNo,_this.studentStatus,_this.institution,_this.currentClass,_this.currentSection,_this.applicant,_this.application,const DeepCollectionEquality().hash(_this.addresses),const DeepCollectionEquality().hash(_this.idCards),const DeepCollectionEquality().hash(_this.enrollments));
}

@override
String toString() {
  final _this = this as StudentProfile;
  return 'StudentProfile(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, admissionDate: ${_this.admissionDate}, rollNo: ${_this.rollNo}, studentStatus: ${_this.studentStatus}, institution: ${_this.institution}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection}, applicant: ${_this.applicant}, application: ${_this.application}, addresses: ${_this.addresses}, idCards: ${_this.idCards}, enrollments: ${_this.enrollments})';
}


}

/// @nodoc
abstract mixin class $StudentProfileCopyWith<$Res>  {
  factory $StudentProfileCopyWith(StudentProfile value, $Res Function(StudentProfile) _then) = _$StudentProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'applicants') ApplicantInfo? applicant,@JsonKey(name: 'admission_applications') AdmissionApplicationInfo? application,@JsonKey(name: 'student_addresses') List<StudentAddress> addresses,@JsonKey(name: 'student_id_cards') List<IdCardSummary> idCards,@JsonKey(name: 'student_enrollments') List<EnrollmentSummary> enrollments
});


$InstitutionRefCopyWith<$Res>? get institution;$ClassRefCopyWith<$Res>? get currentClass;$SectionRefCopyWith<$Res>? get currentSection;$ApplicantInfoCopyWith<$Res>? get applicant;$AdmissionApplicationInfoCopyWith<$Res>? get application;

}
/// @nodoc
class _$StudentProfileCopyWithImpl<$Res>
    implements $StudentProfileCopyWith<$Res> {
  _$StudentProfileCopyWithImpl(this._self, this._then);

  final StudentProfile _self;
  final $Res Function(StudentProfile) _then;

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = null,Object? admissionDate = freezed,Object? rollNo = freezed,Object? studentStatus = freezed,Object? institution = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicant = freezed,Object? application = freezed,Object? addresses = null,Object? idCards = null,Object? enrollments = null,}) {
  return _then(StudentProfile(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ApplicantInfo?,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as AdmissionApplicationInfo?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<StudentAddress>,idCards: null == idCards ? _self.idCards : idCards // ignore: cast_nullable_to_non_nullable
as List<IdCardSummary>,enrollments: null == enrollments ? _self.enrollments : enrollments // ignore: cast_nullable_to_non_nullable
as List<EnrollmentSummary>,
  ));
}
/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstitutionRefCopyWith<$Res>? get institution {
    if (_self.institution == null) {
    return null;
  }

  return $InstitutionRefCopyWith<$Res>(_self.institution!, (value) {
    return _then(_self.copyWith(institution: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get currentClass {
    if (_self.currentClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.currentClass!, (value) {
    return _then(_self.copyWith(currentClass: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get currentSection {
    if (_self.currentSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.currentSection!, (value) {
    return _then(_self.copyWith(currentSection: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantInfoCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ApplicantInfoCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicationInfoCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $AdmissionApplicationInfoCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentProfile].
extension StudentProfilePatterns on StudentProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentProfile value)  $default,){
final _that = this;
switch (_that) {
case _StudentProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentProfile value)?  $default,){
final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'admission_applications')  AdmissionApplicationInfo? application, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses, @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards, @JsonKey(name: 'student_enrollments')  List<EnrollmentSummary> enrollments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.rollNo,_that.studentStatus,_that.institution,_that.currentClass,_that.currentSection,_that.applicant,_that.application,_that.addresses,_that.idCards,_that.enrollments);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'admission_applications')  AdmissionApplicationInfo? application, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses, @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards, @JsonKey(name: 'student_enrollments')  List<EnrollmentSummary> enrollments)  $default,) {final _that = this;
switch (_that) {
case _StudentProfile():
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.rollNo,_that.studentStatus,_that.institution,_that.currentClass,_that.currentSection,_that.applicant,_that.application,_that.addresses,_that.idCards,_that.enrollments);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'admission_applications')  AdmissionApplicationInfo? application, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses, @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards, @JsonKey(name: 'student_enrollments')  List<EnrollmentSummary> enrollments)?  $default,) {final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.rollNo,_that.studentStatus,_that.institution,_that.currentClass,_that.currentSection,_that.applicant,_that.application,_that.addresses,_that.idCards,_that.enrollments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentProfile implements StudentProfile {
  const _StudentProfile({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') required this.admissionNo, @JsonKey(name: 'admission_date') this.admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'student_status') this.studentStatus, @JsonKey(name: 'institutions') this.institution, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection, @JsonKey(name: 'applicants') this.applicant, @JsonKey(name: 'admission_applications') this.application, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses = const [], @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards = const [], @JsonKey(name: 'student_enrollments')  List<EnrollmentSummary> enrollments = const []}): _addresses = addresses,_idCards = idCards,_enrollments = enrollments;
  factory _StudentProfile.fromJson(Map<String, dynamic> json) => _$StudentProfileFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String admissionNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override@JsonKey(name: 'institutions') final  InstitutionRef? institution;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  SectionRef? currentSection;
@override@JsonKey(name: 'applicants') final  ApplicantInfo? applicant;
@override@JsonKey(name: 'admission_applications') final  AdmissionApplicationInfo? application;
 final  List<StudentAddress> _addresses;
@override@JsonKey(name: 'student_addresses') List<StudentAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  List<IdCardSummary> _idCards;
@override@JsonKey(name: 'student_id_cards') List<IdCardSummary> get idCards {
  if (_idCards is EqualUnmodifiableListView) return _idCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idCards);
}

 final  List<EnrollmentSummary> _enrollments;
@override@JsonKey(name: 'student_enrollments') List<EnrollmentSummary> get enrollments {
  if (_enrollments is EqualUnmodifiableListView) return _enrollments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enrollments);
}


/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentProfileCopyWith<_StudentProfile> get copyWith => __$StudentProfileCopyWithImpl<_StudentProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentProfile&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.institution, institution) || other.institution == institution)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.application, application) || other.application == application)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&const DeepCollectionEquality().equals(other.idCards, _idCards)&&const DeepCollectionEquality().equals(other.enrollments, _enrollments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,admissionDate,rollNo,studentStatus,institution,currentClass,currentSection,applicant,application,const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_idCards),const DeepCollectionEquality().hash(_enrollments));
}

@override
String toString() {
    return 'StudentProfile(studentId: $studentId, admissionNo: $admissionNo, admissionDate: $admissionDate, rollNo: $rollNo, studentStatus: $studentStatus, institution: $institution, currentClass: $currentClass, currentSection: $currentSection, applicant: $applicant, application: $application, addresses: $addresses, idCards: $idCards, enrollments: $enrollments)';
}


}

/// @nodoc
abstract mixin class _$StudentProfileCopyWith<$Res> implements $StudentProfileCopyWith<$Res> {
  factory _$StudentProfileCopyWith(_StudentProfile value, $Res Function(_StudentProfile) _then) = __$StudentProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'applicants') ApplicantInfo? applicant,@JsonKey(name: 'admission_applications') AdmissionApplicationInfo? application,@JsonKey(name: 'student_addresses') List<StudentAddress> addresses,@JsonKey(name: 'student_id_cards') List<IdCardSummary> idCards,@JsonKey(name: 'student_enrollments') List<EnrollmentSummary> enrollments
});


@override $InstitutionRefCopyWith<$Res>? get institution;@override $ClassRefCopyWith<$Res>? get currentClass;@override $SectionRefCopyWith<$Res>? get currentSection;@override $ApplicantInfoCopyWith<$Res>? get applicant;@override $AdmissionApplicationInfoCopyWith<$Res>? get application;

}
/// @nodoc
class __$StudentProfileCopyWithImpl<$Res>
    implements _$StudentProfileCopyWith<$Res> {
  __$StudentProfileCopyWithImpl(this._self, this._then);

  final _StudentProfile _self;
  final $Res Function(_StudentProfile) _then;

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = null,Object? admissionDate = freezed,Object? rollNo = freezed,Object? studentStatus = freezed,Object? institution = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicant = freezed,Object? application = freezed,Object? addresses = null,Object? idCards = null,Object? enrollments = null,}) {
  return _then(_StudentProfile(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ApplicantInfo?,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as AdmissionApplicationInfo?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<StudentAddress>,idCards: null == idCards ? _self._idCards : idCards // ignore: cast_nullable_to_non_nullable
as List<IdCardSummary>,enrollments: null == enrollments ? _self._enrollments : enrollments // ignore: cast_nullable_to_non_nullable
as List<EnrollmentSummary>,
  ));
}

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstitutionRefCopyWith<$Res>? get institution {
    if (_self.institution == null) {
    return null;
  }

  return $InstitutionRefCopyWith<$Res>(_self.institution!, (value) {
    return _then(_self.copyWith(institution: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get currentClass {
    if (_self.currentClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.currentClass!, (value) {
    return _then(_self.copyWith(currentClass: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get currentSection {
    if (_self.currentSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.currentSection!, (value) {
    return _then(_self.copyWith(currentSection: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantInfoCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ApplicantInfoCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicationInfoCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $AdmissionApplicationInfoCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}
}


/// @nodoc
mixin _$ApplicantInfo {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; DateTime? get dob;@JsonKey(name: 'blood_group') String? get bloodGroup; String? get nationality;@JsonKey(name: 'contact_no') String? get contactNo;@JsonKey(name: 'email_id') String? get emailId;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'categories') CategoryRef? get category;@JsonKey(name: 'religions') ReligionRef? get religion;
/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicantInfoCopyWith<ApplicantInfo> get copyWith => _$ApplicantInfoCopyWithImpl<ApplicantInfo>(this as ApplicantInfo, _$identity);

  /// Serializes this ApplicantInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApplicantInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicantInfo&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.bloodGroup, _this.bloodGroup) || other.bloodGroup == _this.bloodGroup)&&(identical(other.nationality, _this.nationality) || other.nationality == _this.nationality)&&(identical(other.contactNo, _this.contactNo) || other.contactNo == _this.contactNo)&&(identical(other.emailId, _this.emailId) || other.emailId == _this.emailId)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.religion, _this.religion) || other.religion == _this.religion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApplicantInfo;
  return Object.hash(runtimeType,_this.firstName,_this.middleName,_this.lastName,_this.gender,_this.dob,_this.bloodGroup,_this.nationality,_this.contactNo,_this.emailId,_this.photoUrl,_this.category,_this.religion);
}

@override
String toString() {
  final _this = this as ApplicantInfo;
  return 'ApplicantInfo(firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, gender: ${_this.gender}, dob: ${_this.dob}, bloodGroup: ${_this.bloodGroup}, nationality: ${_this.nationality}, contactNo: ${_this.contactNo}, emailId: ${_this.emailId}, photoUrl: ${_this.photoUrl}, category: ${_this.category}, religion: ${_this.religion})';
}


}

/// @nodoc
abstract mixin class $ApplicantInfoCopyWith<$Res>  {
  factory $ApplicantInfoCopyWith(ApplicantInfo value, $Res Function(ApplicantInfo) _then) = _$ApplicantInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup, String? nationality,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'categories') CategoryRef? category,@JsonKey(name: 'religions') ReligionRef? religion
});


$CategoryRefCopyWith<$Res>? get category;$ReligionRefCopyWith<$Res>? get religion;

}
/// @nodoc
class _$ApplicantInfoCopyWithImpl<$Res>
    implements $ApplicantInfoCopyWith<$Res> {
  _$ApplicantInfoCopyWithImpl(this._self, this._then);

  final ApplicantInfo _self;
  final $Res Function(ApplicantInfo) _then;

/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? nationality = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? photoUrl = freezed,Object? category = freezed,Object? religion = freezed,}) {
  return _then(ApplicantInfo(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryRef?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as ReligionRef?,
  ));
}
/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryRefCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryRefCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReligionRefCopyWith<$Res>? get religion {
    if (_self.religion == null) {
    return null;
  }

  return $ReligionRefCopyWith<$Res>(_self.religion!, (value) {
    return _then(_self.copyWith(religion: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApplicantInfo].
extension ApplicantInfoPatterns on ApplicantInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicantInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicantInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicantInfo value)  $default,){
final _that = this;
switch (_that) {
case _ApplicantInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicantInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicantInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'categories')  CategoryRef? category, @JsonKey(name: 'religions')  ReligionRef? religion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicantInfo() when $default != null:
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.contactNo,_that.emailId,_that.photoUrl,_that.category,_that.religion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'categories')  CategoryRef? category, @JsonKey(name: 'religions')  ReligionRef? religion)  $default,) {final _that = this;
switch (_that) {
case _ApplicantInfo():
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.contactNo,_that.emailId,_that.photoUrl,_that.category,_that.religion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'categories')  CategoryRef? category, @JsonKey(name: 'religions')  ReligionRef? religion)?  $default,) {final _that = this;
switch (_that) {
case _ApplicantInfo() when $default != null:
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.contactNo,_that.emailId,_that.photoUrl,_that.category,_that.religion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicantInfo implements ApplicantInfo {
  const _ApplicantInfo({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.dob, @JsonKey(name: 'blood_group') this.bloodGroup, this.nationality, @JsonKey(name: 'contact_no') this.contactNo, @JsonKey(name: 'email_id') this.emailId, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'categories') this.category, @JsonKey(name: 'religions') this.religion});
  factory _ApplicantInfo.fromJson(Map<String, dynamic> json) => _$ApplicantInfoFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override final  String? nationality;
@override@JsonKey(name: 'contact_no') final  String? contactNo;
@override@JsonKey(name: 'email_id') final  String? emailId;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'categories') final  CategoryRef? category;
@override@JsonKey(name: 'religions') final  ReligionRef? religion;

/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicantInfoCopyWith<_ApplicantInfo> get copyWith => __$ApplicantInfoCopyWithImpl<_ApplicantInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicantInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicantInfo&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.religion, religion) || other.religion == religion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,middleName,lastName,gender,dob,bloodGroup,nationality,contactNo,emailId,photoUrl,category,religion);
}

@override
String toString() {
    return 'ApplicantInfo(firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, dob: $dob, bloodGroup: $bloodGroup, nationality: $nationality, contactNo: $contactNo, emailId: $emailId, photoUrl: $photoUrl, category: $category, religion: $religion)';
}


}

/// @nodoc
abstract mixin class _$ApplicantInfoCopyWith<$Res> implements $ApplicantInfoCopyWith<$Res> {
  factory _$ApplicantInfoCopyWith(_ApplicantInfo value, $Res Function(_ApplicantInfo) _then) = __$ApplicantInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup, String? nationality,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'categories') CategoryRef? category,@JsonKey(name: 'religions') ReligionRef? religion
});


@override $CategoryRefCopyWith<$Res>? get category;@override $ReligionRefCopyWith<$Res>? get religion;

}
/// @nodoc
class __$ApplicantInfoCopyWithImpl<$Res>
    implements _$ApplicantInfoCopyWith<$Res> {
  __$ApplicantInfoCopyWithImpl(this._self, this._then);

  final _ApplicantInfo _self;
  final $Res Function(_ApplicantInfo) _then;

/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? nationality = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? photoUrl = freezed,Object? category = freezed,Object? religion = freezed,}) {
  return _then(_ApplicantInfo(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryRef?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as ReligionRef?,
  ));
}

/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryRefCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryRefCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ApplicantInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReligionRefCopyWith<$Res>? get religion {
    if (_self.religion == null) {
    return null;
  }

  return $ReligionRefCopyWith<$Res>(_self.religion!, (value) {
    return _then(_self.copyWith(religion: value));
  });
}
}


/// @nodoc
mixin _$CategoryRef {

@JsonKey(name: 'category_name') String? get categoryName;
/// Create a copy of CategoryRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryRefCopyWith<CategoryRef> get copyWith => _$CategoryRefCopyWithImpl<CategoryRef>(this as CategoryRef, _$identity);

  /// Serializes this CategoryRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CategoryRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryRef&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CategoryRef;
  return Object.hash(runtimeType,_this.categoryName);
}

@override
String toString() {
  final _this = this as CategoryRef;
  return 'CategoryRef(categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $CategoryRefCopyWith<$Res>  {
  factory $CategoryRefCopyWith(CategoryRef value, $Res Function(CategoryRef) _then) = _$CategoryRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class _$CategoryRefCopyWithImpl<$Res>
    implements $CategoryRefCopyWith<$Res> {
  _$CategoryRefCopyWithImpl(this._self, this._then);

  final CategoryRef _self;
  final $Res Function(CategoryRef) _then;

/// Create a copy of CategoryRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryName = freezed,}) {
  return _then(CategoryRef(
categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryRef].
extension CategoryRefPatterns on CategoryRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryRef value)  $default,){
final _that = this;
switch (_that) {
case _CategoryRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryRef value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_name')  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryRef() when $default != null:
return $default(_that.categoryName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_name')  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _CategoryRef():
return $default(_that.categoryName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'category_name')  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _CategoryRef() when $default != null:
return $default(_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryRef implements CategoryRef {
  const _CategoryRef({@JsonKey(name: 'category_name') this.categoryName});
  factory _CategoryRef.fromJson(Map<String, dynamic> json) => _$CategoryRefFromJson(json);

@override@JsonKey(name: 'category_name') final  String? categoryName;

/// Create a copy of CategoryRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryRefCopyWith<_CategoryRef> get copyWith => __$CategoryRefCopyWithImpl<_CategoryRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryRef&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,categoryName);
}

@override
String toString() {
    return 'CategoryRef(categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$CategoryRefCopyWith<$Res> implements $CategoryRefCopyWith<$Res> {
  factory _$CategoryRefCopyWith(_CategoryRef value, $Res Function(_CategoryRef) _then) = __$CategoryRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class __$CategoryRefCopyWithImpl<$Res>
    implements _$CategoryRefCopyWith<$Res> {
  __$CategoryRefCopyWithImpl(this._self, this._then);

  final _CategoryRef _self;
  final $Res Function(_CategoryRef) _then;

/// Create a copy of CategoryRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryName = freezed,}) {
  return _then(_CategoryRef(
categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReligionRef {

@JsonKey(name: 'religion_name') String? get religionName;
/// Create a copy of ReligionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReligionRefCopyWith<ReligionRef> get copyWith => _$ReligionRefCopyWithImpl<ReligionRef>(this as ReligionRef, _$identity);

  /// Serializes this ReligionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReligionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReligionRef&&(identical(other.religionName, _this.religionName) || other.religionName == _this.religionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReligionRef;
  return Object.hash(runtimeType,_this.religionName);
}

@override
String toString() {
  final _this = this as ReligionRef;
  return 'ReligionRef(religionName: ${_this.religionName})';
}


}

/// @nodoc
abstract mixin class $ReligionRefCopyWith<$Res>  {
  factory $ReligionRefCopyWith(ReligionRef value, $Res Function(ReligionRef) _then) = _$ReligionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'religion_name') String? religionName
});




}
/// @nodoc
class _$ReligionRefCopyWithImpl<$Res>
    implements $ReligionRefCopyWith<$Res> {
  _$ReligionRefCopyWithImpl(this._self, this._then);

  final ReligionRef _self;
  final $Res Function(ReligionRef) _then;

/// Create a copy of ReligionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? religionName = freezed,}) {
  return _then(ReligionRef(
religionName: freezed == religionName ? _self.religionName : religionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReligionRef].
extension ReligionRefPatterns on ReligionRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReligionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReligionRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReligionRef value)  $default,){
final _that = this;
switch (_that) {
case _ReligionRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReligionRef value)?  $default,){
final _that = this;
switch (_that) {
case _ReligionRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'religion_name')  String? religionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReligionRef() when $default != null:
return $default(_that.religionName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'religion_name')  String? religionName)  $default,) {final _that = this;
switch (_that) {
case _ReligionRef():
return $default(_that.religionName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'religion_name')  String? religionName)?  $default,) {final _that = this;
switch (_that) {
case _ReligionRef() when $default != null:
return $default(_that.religionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReligionRef implements ReligionRef {
  const _ReligionRef({@JsonKey(name: 'religion_name') this.religionName});
  factory _ReligionRef.fromJson(Map<String, dynamic> json) => _$ReligionRefFromJson(json);

@override@JsonKey(name: 'religion_name') final  String? religionName;

/// Create a copy of ReligionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReligionRefCopyWith<_ReligionRef> get copyWith => __$ReligionRefCopyWithImpl<_ReligionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReligionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReligionRef&&(identical(other.religionName, religionName) || other.religionName == religionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,religionName);
}

@override
String toString() {
    return 'ReligionRef(religionName: $religionName)';
}


}

/// @nodoc
abstract mixin class _$ReligionRefCopyWith<$Res> implements $ReligionRefCopyWith<$Res> {
  factory _$ReligionRefCopyWith(_ReligionRef value, $Res Function(_ReligionRef) _then) = __$ReligionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'religion_name') String? religionName
});




}
/// @nodoc
class __$ReligionRefCopyWithImpl<$Res>
    implements _$ReligionRefCopyWith<$Res> {
  __$ReligionRefCopyWithImpl(this._self, this._then);

  final _ReligionRef _self;
  final $Res Function(_ReligionRef) _then;

/// Create a copy of ReligionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? religionName = freezed,}) {
  return _then(_ReligionRef(
religionName: freezed == religionName ? _self.religionName : religionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionApplicationInfo {

 List<ParentInfo> get parents;@JsonKey(name: 'previous_schools') List<PreviousSchool> get previousSchools;
/// Create a copy of AdmissionApplicationInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicationInfoCopyWith<AdmissionApplicationInfo> get copyWith => _$AdmissionApplicationInfoCopyWithImpl<AdmissionApplicationInfo>(this as AdmissionApplicationInfo, _$identity);

  /// Serializes this AdmissionApplicationInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionApplicationInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicationInfo&&const DeepCollectionEquality().equals(other.parents, _this.parents)&&const DeepCollectionEquality().equals(other.previousSchools, _this.previousSchools));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionApplicationInfo;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.parents),const DeepCollectionEquality().hash(_this.previousSchools));
}

@override
String toString() {
  final _this = this as AdmissionApplicationInfo;
  return 'AdmissionApplicationInfo(parents: ${_this.parents}, previousSchools: ${_this.previousSchools})';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicationInfoCopyWith<$Res>  {
  factory $AdmissionApplicationInfoCopyWith(AdmissionApplicationInfo value, $Res Function(AdmissionApplicationInfo) _then) = _$AdmissionApplicationInfoCopyWithImpl;
@useResult
$Res call({
 List<ParentInfo> parents,@JsonKey(name: 'previous_schools') List<PreviousSchool> previousSchools
});




}
/// @nodoc
class _$AdmissionApplicationInfoCopyWithImpl<$Res>
    implements $AdmissionApplicationInfoCopyWith<$Res> {
  _$AdmissionApplicationInfoCopyWithImpl(this._self, this._then);

  final AdmissionApplicationInfo _self;
  final $Res Function(AdmissionApplicationInfo) _then;

/// Create a copy of AdmissionApplicationInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parents = null,Object? previousSchools = null,}) {
  return _then(AdmissionApplicationInfo(
parents: null == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<ParentInfo>,previousSchools: null == previousSchools ? _self.previousSchools : previousSchools // ignore: cast_nullable_to_non_nullable
as List<PreviousSchool>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionApplicationInfo].
extension AdmissionApplicationInfoPatterns on AdmissionApplicationInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicationInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicationInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicationInfo value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicationInfo value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ParentInfo> parents, @JsonKey(name: 'previous_schools')  List<PreviousSchool> previousSchools)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicationInfo() when $default != null:
return $default(_that.parents,_that.previousSchools);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ParentInfo> parents, @JsonKey(name: 'previous_schools')  List<PreviousSchool> previousSchools)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationInfo():
return $default(_that.parents,_that.previousSchools);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ParentInfo> parents, @JsonKey(name: 'previous_schools')  List<PreviousSchool> previousSchools)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationInfo() when $default != null:
return $default(_that.parents,_that.previousSchools);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicationInfo implements AdmissionApplicationInfo {
  const _AdmissionApplicationInfo({ List<ParentInfo> parents = const [], @JsonKey(name: 'previous_schools')  List<PreviousSchool> previousSchools = const []}): _parents = parents,_previousSchools = previousSchools;
  factory _AdmissionApplicationInfo.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationInfoFromJson(json);

 final  List<ParentInfo> _parents;
@override@JsonKey() List<ParentInfo> get parents {
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parents);
}

 final  List<PreviousSchool> _previousSchools;
@override@JsonKey(name: 'previous_schools') List<PreviousSchool> get previousSchools {
  if (_previousSchools is EqualUnmodifiableListView) return _previousSchools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousSchools);
}


/// Create a copy of AdmissionApplicationInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicationInfoCopyWith<_AdmissionApplicationInfo> get copyWith => __$AdmissionApplicationInfoCopyWithImpl<_AdmissionApplicationInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicationInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicationInfo&&const DeepCollectionEquality().equals(other.parents, _parents)&&const DeepCollectionEquality().equals(other.previousSchools, _previousSchools));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_parents),const DeepCollectionEquality().hash(_previousSchools));
}

@override
String toString() {
    return 'AdmissionApplicationInfo(parents: $parents, previousSchools: $previousSchools)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicationInfoCopyWith<$Res> implements $AdmissionApplicationInfoCopyWith<$Res> {
  factory _$AdmissionApplicationInfoCopyWith(_AdmissionApplicationInfo value, $Res Function(_AdmissionApplicationInfo) _then) = __$AdmissionApplicationInfoCopyWithImpl;
@override @useResult
$Res call({
 List<ParentInfo> parents,@JsonKey(name: 'previous_schools') List<PreviousSchool> previousSchools
});




}
/// @nodoc
class __$AdmissionApplicationInfoCopyWithImpl<$Res>
    implements _$AdmissionApplicationInfoCopyWith<$Res> {
  __$AdmissionApplicationInfoCopyWithImpl(this._self, this._then);

  final _AdmissionApplicationInfo _self;
  final $Res Function(_AdmissionApplicationInfo) _then;

/// Create a copy of AdmissionApplicationInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parents = null,Object? previousSchools = null,}) {
  return _then(_AdmissionApplicationInfo(
parents: null == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<ParentInfo>,previousSchools: null == previousSchools ? _self._previousSchools : previousSchools // ignore: cast_nullable_to_non_nullable
as List<PreviousSchool>,
  ));
}


}


/// @nodoc
mixin _$StudentAddress {

@JsonKey(name: 'address_id') String get addressId;@JsonKey(name: 'address_type') String? get addressType;@JsonKey(name: 'address_line_1') String? get addressLine1;@JsonKey(name: 'address_line_2') String? get addressLine2; String? get landmark; String? get city; String? get state;@LooseStringConverter() String? get pincode;
/// Create a copy of StudentAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentAddressCopyWith<StudentAddress> get copyWith => _$StudentAddressCopyWithImpl<StudentAddress>(this as StudentAddress, _$identity);

  /// Serializes this StudentAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentAddress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentAddress&&(identical(other.addressId, _this.addressId) || other.addressId == _this.addressId)&&(identical(other.addressType, _this.addressType) || other.addressType == _this.addressType)&&(identical(other.addressLine1, _this.addressLine1) || other.addressLine1 == _this.addressLine1)&&(identical(other.addressLine2, _this.addressLine2) || other.addressLine2 == _this.addressLine2)&&(identical(other.landmark, _this.landmark) || other.landmark == _this.landmark)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.pincode, _this.pincode) || other.pincode == _this.pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentAddress;
  return Object.hash(runtimeType,_this.addressId,_this.addressType,_this.addressLine1,_this.addressLine2,_this.landmark,_this.city,_this.state,_this.pincode);
}

@override
String toString() {
  final _this = this as StudentAddress;
  return 'StudentAddress(addressId: ${_this.addressId}, addressType: ${_this.addressType}, addressLine1: ${_this.addressLine1}, addressLine2: ${_this.addressLine2}, landmark: ${_this.landmark}, city: ${_this.city}, state: ${_this.state}, pincode: ${_this.pincode})';
}


}

/// @nodoc
abstract mixin class $StudentAddressCopyWith<$Res>  {
  factory $StudentAddressCopyWith(StudentAddress value, $Res Function(StudentAddress) _then) = _$StudentAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address_id') String addressId,@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'address_line_1') String? addressLine1,@JsonKey(name: 'address_line_2') String? addressLine2, String? landmark, String? city, String? state,@LooseStringConverter() String? pincode
});




}
/// @nodoc
class _$StudentAddressCopyWithImpl<$Res>
    implements $StudentAddressCopyWith<$Res> {
  _$StudentAddressCopyWithImpl(this._self, this._then);

  final StudentAddress _self;
  final $Res Function(StudentAddress) _then;

/// Create a copy of StudentAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressId = null,Object? addressType = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? landmark = freezed,Object? city = freezed,Object? state = freezed,Object? pincode = freezed,}) {
  return _then(StudentAddress(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as String,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,landmark: freezed == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentAddress].
extension StudentAddressPatterns on StudentAddress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentAddress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentAddress value)  $default,){
final _that = this;
switch (_that) {
case _StudentAddress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentAddress value)?  $default,){
final _that = this;
switch (_that) {
case _StudentAddress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_id')  String addressId, @JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line_1')  String? addressLine1, @JsonKey(name: 'address_line_2')  String? addressLine2,  String? landmark,  String? city,  String? state, @LooseStringConverter()  String? pincode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentAddress() when $default != null:
return $default(_that.addressId,_that.addressType,_that.addressLine1,_that.addressLine2,_that.landmark,_that.city,_that.state,_that.pincode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_id')  String addressId, @JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line_1')  String? addressLine1, @JsonKey(name: 'address_line_2')  String? addressLine2,  String? landmark,  String? city,  String? state, @LooseStringConverter()  String? pincode)  $default,) {final _that = this;
switch (_that) {
case _StudentAddress():
return $default(_that.addressId,_that.addressType,_that.addressLine1,_that.addressLine2,_that.landmark,_that.city,_that.state,_that.pincode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address_id')  String addressId, @JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line_1')  String? addressLine1, @JsonKey(name: 'address_line_2')  String? addressLine2,  String? landmark,  String? city,  String? state, @LooseStringConverter()  String? pincode)?  $default,) {final _that = this;
switch (_that) {
case _StudentAddress() when $default != null:
return $default(_that.addressId,_that.addressType,_that.addressLine1,_that.addressLine2,_that.landmark,_that.city,_that.state,_that.pincode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentAddress implements StudentAddress {
  const _StudentAddress({@JsonKey(name: 'address_id') required this.addressId, @JsonKey(name: 'address_type') this.addressType, @JsonKey(name: 'address_line_1') this.addressLine1, @JsonKey(name: 'address_line_2') this.addressLine2, this.landmark, this.city, this.state, @LooseStringConverter() this.pincode});
  factory _StudentAddress.fromJson(Map<String, dynamic> json) => _$StudentAddressFromJson(json);

@override@JsonKey(name: 'address_id') final  String addressId;
@override@JsonKey(name: 'address_type') final  String? addressType;
@override@JsonKey(name: 'address_line_1') final  String? addressLine1;
@override@JsonKey(name: 'address_line_2') final  String? addressLine2;
@override final  String? landmark;
@override final  String? city;
@override final  String? state;
@override@LooseStringConverter() final  String? pincode;

/// Create a copy of StudentAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentAddressCopyWith<_StudentAddress> get copyWith => __$StudentAddressCopyWithImpl<_StudentAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentAddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentAddress&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,addressId,addressType,addressLine1,addressLine2,landmark,city,state,pincode);
}

@override
String toString() {
    return 'StudentAddress(addressId: $addressId, addressType: $addressType, addressLine1: $addressLine1, addressLine2: $addressLine2, landmark: $landmark, city: $city, state: $state, pincode: $pincode)';
}


}

/// @nodoc
abstract mixin class _$StudentAddressCopyWith<$Res> implements $StudentAddressCopyWith<$Res> {
  factory _$StudentAddressCopyWith(_StudentAddress value, $Res Function(_StudentAddress) _then) = __$StudentAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address_id') String addressId,@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'address_line_1') String? addressLine1,@JsonKey(name: 'address_line_2') String? addressLine2, String? landmark, String? city, String? state,@LooseStringConverter() String? pincode
});




}
/// @nodoc
class __$StudentAddressCopyWithImpl<$Res>
    implements _$StudentAddressCopyWith<$Res> {
  __$StudentAddressCopyWithImpl(this._self, this._then);

  final _StudentAddress _self;
  final $Res Function(_StudentAddress) _then;

/// Create a copy of StudentAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressId = null,Object? addressType = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? landmark = freezed,Object? city = freezed,Object? state = freezed,Object? pincode = freezed,}) {
  return _then(_StudentAddress(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as String,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,landmark: freezed == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParentInfo {

@JsonKey(name: 'parent_id') String get parentId;@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;
/// Create a copy of ParentInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentInfoCopyWith<ParentInfo> get copyWith => _$ParentInfoCopyWithImpl<ParentInfo>(this as ParentInfo, _$identity);

  /// Serializes this ParentInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParentInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentInfo&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParentInfo;
  return Object.hash(runtimeType,_this.parentId,_this.relationType,_this.firstName,_this.lastName,_this.mobileNo,_this.email);
}

@override
String toString() {
  final _this = this as ParentInfo;
  return 'ParentInfo(parentId: ${_this.parentId}, relationType: ${_this.relationType}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, mobileNo: ${_this.mobileNo}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $ParentInfoCopyWith<$Res>  {
  factory $ParentInfoCopyWith(ParentInfo value, $Res Function(ParentInfo) _then) = _$ParentInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class _$ParentInfoCopyWithImpl<$Res>
    implements $ParentInfoCopyWith<$Res> {
  _$ParentInfoCopyWithImpl(this._self, this._then);

  final ParentInfo _self;
  final $Res Function(ParentInfo) _then;

/// Create a copy of ParentInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentId = null,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(ParentInfo(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentInfo].
extension ParentInfoPatterns on ParentInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentInfo value)  $default,){
final _that = this;
switch (_that) {
case _ParentInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ParentInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentInfo() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)  $default,) {final _that = this;
switch (_that) {
case _ParentInfo():
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _ParentInfo() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentInfo implements ParentInfo {
  const _ParentInfo({@JsonKey(name: 'parent_id') required this.parentId, @JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.email});
  factory _ParentInfo.fromJson(Map<String, dynamic> json) => _$ParentInfoFromJson(json);

@override@JsonKey(name: 'parent_id') final  String parentId;
@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;

/// Create a copy of ParentInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentInfoCopyWith<_ParentInfo> get copyWith => __$ParentInfoCopyWithImpl<_ParentInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentInfo&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentId,relationType,firstName,lastName,mobileNo,email);
}

@override
String toString() {
    return 'ParentInfo(parentId: $parentId, relationType: $relationType, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, email: $email)';
}


}

/// @nodoc
abstract mixin class _$ParentInfoCopyWith<$Res> implements $ParentInfoCopyWith<$Res> {
  factory _$ParentInfoCopyWith(_ParentInfo value, $Res Function(_ParentInfo) _then) = __$ParentInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class __$ParentInfoCopyWithImpl<$Res>
    implements _$ParentInfoCopyWith<$Res> {
  __$ParentInfoCopyWithImpl(this._self, this._then);

  final _ParentInfo _self;
  final $Res Function(_ParentInfo) _then;

/// Create a copy of ParentInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentId = null,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(_ParentInfo(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PreviousSchool {

@JsonKey(name: 'previous_school_id') String get previousSchoolId;@JsonKey(name: 'school_name') String? get schoolName;@JsonKey(name: 'board_name') String? get boardName;@JsonKey(name: 'class_last_attended') String? get classLastAttended;@LooseStringConverter() String? get percentage;
/// Create a copy of PreviousSchool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreviousSchoolCopyWith<PreviousSchool> get copyWith => _$PreviousSchoolCopyWithImpl<PreviousSchool>(this as PreviousSchool, _$identity);

  /// Serializes this PreviousSchool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PreviousSchool;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousSchool&&(identical(other.previousSchoolId, _this.previousSchoolId) || other.previousSchoolId == _this.previousSchoolId)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.boardName, _this.boardName) || other.boardName == _this.boardName)&&(identical(other.classLastAttended, _this.classLastAttended) || other.classLastAttended == _this.classLastAttended)&&(identical(other.percentage, _this.percentage) || other.percentage == _this.percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PreviousSchool;
  return Object.hash(runtimeType,_this.previousSchoolId,_this.schoolName,_this.boardName,_this.classLastAttended,_this.percentage);
}

@override
String toString() {
  final _this = this as PreviousSchool;
  return 'PreviousSchool(previousSchoolId: ${_this.previousSchoolId}, schoolName: ${_this.schoolName}, boardName: ${_this.boardName}, classLastAttended: ${_this.classLastAttended}, percentage: ${_this.percentage})';
}


}

/// @nodoc
abstract mixin class $PreviousSchoolCopyWith<$Res>  {
  factory $PreviousSchoolCopyWith(PreviousSchool value, $Res Function(PreviousSchool) _then) = _$PreviousSchoolCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'previous_school_id') String previousSchoolId,@JsonKey(name: 'school_name') String? schoolName,@JsonKey(name: 'board_name') String? boardName,@JsonKey(name: 'class_last_attended') String? classLastAttended,@LooseStringConverter() String? percentage
});




}
/// @nodoc
class _$PreviousSchoolCopyWithImpl<$Res>
    implements $PreviousSchoolCopyWith<$Res> {
  _$PreviousSchoolCopyWithImpl(this._self, this._then);

  final PreviousSchool _self;
  final $Res Function(PreviousSchool) _then;

/// Create a copy of PreviousSchool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? previousSchoolId = null,Object? schoolName = freezed,Object? boardName = freezed,Object? classLastAttended = freezed,Object? percentage = freezed,}) {
  return _then(PreviousSchool(
previousSchoolId: null == previousSchoolId ? _self.previousSchoolId : previousSchoolId // ignore: cast_nullable_to_non_nullable
as String,schoolName: freezed == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String?,boardName: freezed == boardName ? _self.boardName : boardName // ignore: cast_nullable_to_non_nullable
as String?,classLastAttended: freezed == classLastAttended ? _self.classLastAttended : classLastAttended // ignore: cast_nullable_to_non_nullable
as String?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreviousSchool].
extension PreviousSchoolPatterns on PreviousSchool {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreviousSchool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreviousSchool() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreviousSchool value)  $default,){
final _that = this;
switch (_that) {
case _PreviousSchool():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreviousSchool value)?  $default,){
final _that = this;
switch (_that) {
case _PreviousSchool() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_school_id')  String previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreviousSchool() when $default != null:
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_school_id')  String previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage)  $default,) {final _that = this;
switch (_that) {
case _PreviousSchool():
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'previous_school_id')  String previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage)?  $default,) {final _that = this;
switch (_that) {
case _PreviousSchool() when $default != null:
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreviousSchool implements PreviousSchool {
  const _PreviousSchool({@JsonKey(name: 'previous_school_id') required this.previousSchoolId, @JsonKey(name: 'school_name') this.schoolName, @JsonKey(name: 'board_name') this.boardName, @JsonKey(name: 'class_last_attended') this.classLastAttended, @LooseStringConverter() this.percentage});
  factory _PreviousSchool.fromJson(Map<String, dynamic> json) => _$PreviousSchoolFromJson(json);

@override@JsonKey(name: 'previous_school_id') final  String previousSchoolId;
@override@JsonKey(name: 'school_name') final  String? schoolName;
@override@JsonKey(name: 'board_name') final  String? boardName;
@override@JsonKey(name: 'class_last_attended') final  String? classLastAttended;
@override@LooseStringConverter() final  String? percentage;

/// Create a copy of PreviousSchool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreviousSchoolCopyWith<_PreviousSchool> get copyWith => __$PreviousSchoolCopyWithImpl<_PreviousSchool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreviousSchoolToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousSchool&&(identical(other.previousSchoolId, previousSchoolId) || other.previousSchoolId == previousSchoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.boardName, boardName) || other.boardName == boardName)&&(identical(other.classLastAttended, classLastAttended) || other.classLastAttended == classLastAttended)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,previousSchoolId,schoolName,boardName,classLastAttended,percentage);
}

@override
String toString() {
    return 'PreviousSchool(previousSchoolId: $previousSchoolId, schoolName: $schoolName, boardName: $boardName, classLastAttended: $classLastAttended, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$PreviousSchoolCopyWith<$Res> implements $PreviousSchoolCopyWith<$Res> {
  factory _$PreviousSchoolCopyWith(_PreviousSchool value, $Res Function(_PreviousSchool) _then) = __$PreviousSchoolCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'previous_school_id') String previousSchoolId,@JsonKey(name: 'school_name') String? schoolName,@JsonKey(name: 'board_name') String? boardName,@JsonKey(name: 'class_last_attended') String? classLastAttended,@LooseStringConverter() String? percentage
});




}
/// @nodoc
class __$PreviousSchoolCopyWithImpl<$Res>
    implements _$PreviousSchoolCopyWith<$Res> {
  __$PreviousSchoolCopyWithImpl(this._self, this._then);

  final _PreviousSchool _self;
  final $Res Function(_PreviousSchool) _then;

/// Create a copy of PreviousSchool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previousSchoolId = null,Object? schoolName = freezed,Object? boardName = freezed,Object? classLastAttended = freezed,Object? percentage = freezed,}) {
  return _then(_PreviousSchool(
previousSchoolId: null == previousSchoolId ? _self.previousSchoolId : previousSchoolId // ignore: cast_nullable_to_non_nullable
as String,schoolName: freezed == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String?,boardName: freezed == boardName ? _self.boardName : boardName // ignore: cast_nullable_to_non_nullable
as String?,classLastAttended: freezed == classLastAttended ? _self.classLastAttended : classLastAttended // ignore: cast_nullable_to_non_nullable
as String?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$IdCardSummary {

@JsonKey(name: 'card_number') String? get cardNumber;@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'expiry_date') DateTime? get expiryDate;
/// Create a copy of IdCardSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdCardSummaryCopyWith<IdCardSummary> get copyWith => _$IdCardSummaryCopyWithImpl<IdCardSummary>(this as IdCardSummary, _$identity);

  /// Serializes this IdCardSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as IdCardSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdCardSummary&&(identical(other.cardNumber, _this.cardNumber) || other.cardNumber == _this.cardNumber)&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.expiryDate, _this.expiryDate) || other.expiryDate == _this.expiryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as IdCardSummary;
  return Object.hash(runtimeType,_this.cardNumber,_this.issueDate,_this.expiryDate);
}

@override
String toString() {
  final _this = this as IdCardSummary;
  return 'IdCardSummary(cardNumber: ${_this.cardNumber}, issueDate: ${_this.issueDate}, expiryDate: ${_this.expiryDate})';
}


}

/// @nodoc
abstract mixin class $IdCardSummaryCopyWith<$Res>  {
  factory $IdCardSummaryCopyWith(IdCardSummary value, $Res Function(IdCardSummary) _then) = _$IdCardSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'card_number') String? cardNumber,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'expiry_date') DateTime? expiryDate
});




}
/// @nodoc
class _$IdCardSummaryCopyWithImpl<$Res>
    implements $IdCardSummaryCopyWith<$Res> {
  _$IdCardSummaryCopyWithImpl(this._self, this._then);

  final IdCardSummary _self;
  final $Res Function(IdCardSummary) _then;

/// Create a copy of IdCardSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = freezed,Object? issueDate = freezed,Object? expiryDate = freezed,}) {
  return _then(IdCardSummary(
cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [IdCardSummary].
extension IdCardSummaryPatterns on IdCardSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdCardSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdCardSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdCardSummary value)  $default,){
final _that = this;
switch (_that) {
case _IdCardSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdCardSummary value)?  $default,){
final _that = this;
switch (_that) {
case _IdCardSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'expiry_date')  DateTime? expiryDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdCardSummary() when $default != null:
return $default(_that.cardNumber,_that.issueDate,_that.expiryDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'expiry_date')  DateTime? expiryDate)  $default,) {final _that = this;
switch (_that) {
case _IdCardSummary():
return $default(_that.cardNumber,_that.issueDate,_that.expiryDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'expiry_date')  DateTime? expiryDate)?  $default,) {final _that = this;
switch (_that) {
case _IdCardSummary() when $default != null:
return $default(_that.cardNumber,_that.issueDate,_that.expiryDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IdCardSummary implements IdCardSummary {
  const _IdCardSummary({@JsonKey(name: 'card_number') this.cardNumber, @JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'expiry_date') this.expiryDate});
  factory _IdCardSummary.fromJson(Map<String, dynamic> json) => _$IdCardSummaryFromJson(json);

@override@JsonKey(name: 'card_number') final  String? cardNumber;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'expiry_date') final  DateTime? expiryDate;

/// Create a copy of IdCardSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdCardSummaryCopyWith<_IdCardSummary> get copyWith => __$IdCardSummaryCopyWithImpl<_IdCardSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IdCardSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdCardSummary&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,cardNumber,issueDate,expiryDate);
}

@override
String toString() {
    return 'IdCardSummary(cardNumber: $cardNumber, issueDate: $issueDate, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class _$IdCardSummaryCopyWith<$Res> implements $IdCardSummaryCopyWith<$Res> {
  factory _$IdCardSummaryCopyWith(_IdCardSummary value, $Res Function(_IdCardSummary) _then) = __$IdCardSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'card_number') String? cardNumber,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'expiry_date') DateTime? expiryDate
});




}
/// @nodoc
class __$IdCardSummaryCopyWithImpl<$Res>
    implements _$IdCardSummaryCopyWith<$Res> {
  __$IdCardSummaryCopyWithImpl(this._self, this._then);

  final _IdCardSummary _self;
  final $Res Function(_IdCardSummary) _then;

/// Create a copy of IdCardSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = freezed,Object? issueDate = freezed,Object? expiryDate = freezed,}) {
  return _then(_IdCardSummary(
cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$EnrollmentSummary {

@JsonKey(name: 'academic_sessions') SessionRef? get session;
/// Create a copy of EnrollmentSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentSummaryCopyWith<EnrollmentSummary> get copyWith => _$EnrollmentSummaryCopyWithImpl<EnrollmentSummary>(this as EnrollmentSummary, _$identity);

  /// Serializes this EnrollmentSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EnrollmentSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentSummary&&(identical(other.session, _this.session) || other.session == _this.session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EnrollmentSummary;
  return Object.hash(runtimeType,_this.session);
}

@override
String toString() {
  final _this = this as EnrollmentSummary;
  return 'EnrollmentSummary(session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $EnrollmentSummaryCopyWith<$Res>  {
  factory $EnrollmentSummaryCopyWith(EnrollmentSummary value, $Res Function(EnrollmentSummary) _then) = _$EnrollmentSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'academic_sessions') SessionRef? session
});


$SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class _$EnrollmentSummaryCopyWithImpl<$Res>
    implements $EnrollmentSummaryCopyWith<$Res> {
  _$EnrollmentSummaryCopyWithImpl(this._self, this._then);

  final EnrollmentSummary _self;
  final $Res Function(EnrollmentSummary) _then;

/// Create a copy of EnrollmentSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? session = freezed,}) {
  return _then(EnrollmentSummary(
session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}
/// Create a copy of EnrollmentSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}


/// Adds pattern-matching-related methods to [EnrollmentSummary].
extension EnrollmentSummaryPatterns on EnrollmentSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollmentSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollmentSummary value)  $default,){
final _that = this;
switch (_that) {
case _EnrollmentSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollmentSummary value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollmentSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentSummary() when $default != null:
return $default(_that.session);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'academic_sessions')  SessionRef? session)  $default,) {final _that = this;
switch (_that) {
case _EnrollmentSummary():
return $default(_that.session);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,) {final _that = this;
switch (_that) {
case _EnrollmentSummary() when $default != null:
return $default(_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrollmentSummary implements EnrollmentSummary {
  const _EnrollmentSummary({@JsonKey(name: 'academic_sessions') this.session});
  factory _EnrollmentSummary.fromJson(Map<String, dynamic> json) => _$EnrollmentSummaryFromJson(json);

@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;

/// Create a copy of EnrollmentSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentSummaryCopyWith<_EnrollmentSummary> get copyWith => __$EnrollmentSummaryCopyWithImpl<_EnrollmentSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentSummary&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,session);
}

@override
String toString() {
    return 'EnrollmentSummary(session: $session)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentSummaryCopyWith<$Res> implements $EnrollmentSummaryCopyWith<$Res> {
  factory _$EnrollmentSummaryCopyWith(_EnrollmentSummary value, $Res Function(_EnrollmentSummary) _then) = __$EnrollmentSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'academic_sessions') SessionRef? session
});


@override $SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class __$EnrollmentSummaryCopyWithImpl<$Res>
    implements _$EnrollmentSummaryCopyWith<$Res> {
  __$EnrollmentSummaryCopyWithImpl(this._self, this._then);

  final _EnrollmentSummary _self;
  final $Res Function(_EnrollmentSummary) _then;

/// Create a copy of EnrollmentSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? session = freezed,}) {
  return _then(_EnrollmentSummary(
session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}

/// Create a copy of EnrollmentSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

// dart format on
