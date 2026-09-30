// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_brief.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentBrief {

@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'applicants') ApplicantInfo? get applicant;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'current_section') SectionRef? get currentSection;
/// Create a copy of StudentBrief
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<StudentBrief> get copyWith => _$StudentBriefCopyWithImpl<StudentBrief>(this as StudentBrief, _$identity);

  /// Serializes this StudentBrief to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentBrief;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentBrief&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentBrief;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.applicant,_this.currentClass,_this.currentSection);
}

@override
String toString() {
  final _this = this as StudentBrief;
  return 'StudentBrief(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, applicant: ${_this.applicant}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection})';
}


}

/// @nodoc
abstract mixin class $StudentBriefCopyWith<$Res>  {
  factory $StudentBriefCopyWith(StudentBrief value, $Res Function(StudentBrief) _then) = _$StudentBriefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'applicants') ApplicantInfo? applicant,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection
});


$ApplicantInfoCopyWith<$Res>? get applicant;$ClassRefCopyWith<$Res>? get currentClass;$SectionRefCopyWith<$Res>? get currentSection;

}
/// @nodoc
class _$StudentBriefCopyWithImpl<$Res>
    implements $StudentBriefCopyWith<$Res> {
  _$StudentBriefCopyWithImpl(this._self, this._then);

  final StudentBrief _self;
  final $Res Function(StudentBrief) _then;

/// Create a copy of StudentBrief
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? admissionNo = freezed,Object? rollNo = freezed,Object? applicant = freezed,Object? currentClass = freezed,Object? currentSection = freezed,}) {
  return _then(StudentBrief(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ApplicantInfo?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}
/// Create a copy of StudentBrief
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
}/// Create a copy of StudentBrief
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
}/// Create a copy of StudentBrief
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
}
}


/// Adds pattern-matching-related methods to [StudentBrief].
extension StudentBriefPatterns on StudentBrief {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentBrief value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentBrief() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentBrief value)  $default,){
final _that = this;
switch (_that) {
case _StudentBrief():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentBrief value)?  $default,){
final _that = this;
switch (_that) {
case _StudentBrief() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentBrief() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.applicant,_that.currentClass,_that.currentSection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection)  $default,) {final _that = this;
switch (_that) {
case _StudentBrief():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.applicant,_that.currentClass,_that.currentSection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection)?  $default,) {final _that = this;
switch (_that) {
case _StudentBrief() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.applicant,_that.currentClass,_that.currentSection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentBrief implements StudentBrief {
  const _StudentBrief({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'applicants') this.applicant, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection});
  factory _StudentBrief.fromJson(Map<String, dynamic> json) => _$StudentBriefFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'applicants') final  ApplicantInfo? applicant;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  SectionRef? currentSection;

/// Create a copy of StudentBrief
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentBriefCopyWith<_StudentBrief> get copyWith => __$StudentBriefCopyWithImpl<_StudentBrief>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentBriefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentBrief&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,applicant,currentClass,currentSection);
}

@override
String toString() {
    return 'StudentBrief(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, applicant: $applicant, currentClass: $currentClass, currentSection: $currentSection)';
}


}

/// @nodoc
abstract mixin class _$StudentBriefCopyWith<$Res> implements $StudentBriefCopyWith<$Res> {
  factory _$StudentBriefCopyWith(_StudentBrief value, $Res Function(_StudentBrief) _then) = __$StudentBriefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'applicants') ApplicantInfo? applicant,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection
});


@override $ApplicantInfoCopyWith<$Res>? get applicant;@override $ClassRefCopyWith<$Res>? get currentClass;@override $SectionRefCopyWith<$Res>? get currentSection;

}
/// @nodoc
class __$StudentBriefCopyWithImpl<$Res>
    implements _$StudentBriefCopyWith<$Res> {
  __$StudentBriefCopyWithImpl(this._self, this._then);

  final _StudentBrief _self;
  final $Res Function(_StudentBrief) _then;

/// Create a copy of StudentBrief
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? admissionNo = freezed,Object? rollNo = freezed,Object? applicant = freezed,Object? currentClass = freezed,Object? currentSection = freezed,}) {
  return _then(_StudentBrief(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ApplicantInfo?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}

/// Create a copy of StudentBrief
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
}/// Create a copy of StudentBrief
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
}/// Create a copy of StudentBrief
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
}
}

// dart format on
