// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_certificates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentIdCard {

@JsonKey(name: 'id_card_id') String get idCardId;@JsonKey(name: 'card_number') String? get cardNumber;@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'expiry_date') DateTime? get expiryDate;@JsonKey(name: 'student_name') String? get studentName;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'institution_name') String? get institutionName;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of StudentIdCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentIdCardCopyWith<StudentIdCard> get copyWith => _$StudentIdCardCopyWithImpl<StudentIdCard>(this as StudentIdCard, _$identity);

  /// Serializes this StudentIdCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentIdCard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentIdCard&&(identical(other.idCardId, _this.idCardId) || other.idCardId == _this.idCardId)&&(identical(other.cardNumber, _this.cardNumber) || other.cardNumber == _this.cardNumber)&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.expiryDate, _this.expiryDate) || other.expiryDate == _this.expiryDate)&&(identical(other.studentName, _this.studentName) || other.studentName == _this.studentName)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.institutionName, _this.institutionName) || other.institutionName == _this.institutionName)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentIdCard;
  return Object.hash(runtimeType,_this.idCardId,_this.cardNumber,_this.issueDate,_this.expiryDate,_this.studentName,_this.admissionNo,_this.className,_this.sectionName,_this.institutionName,_this.sessionName);
}

@override
String toString() {
  final _this = this as StudentIdCard;
  return 'StudentIdCard(idCardId: ${_this.idCardId}, cardNumber: ${_this.cardNumber}, issueDate: ${_this.issueDate}, expiryDate: ${_this.expiryDate}, studentName: ${_this.studentName}, admissionNo: ${_this.admissionNo}, className: ${_this.className}, sectionName: ${_this.sectionName}, institutionName: ${_this.institutionName}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $StudentIdCardCopyWith<$Res>  {
  factory $StudentIdCardCopyWith(StudentIdCard value, $Res Function(StudentIdCard) _then) = _$StudentIdCardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_card_id') String idCardId,@JsonKey(name: 'card_number') String? cardNumber,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'expiry_date') DateTime? expiryDate,@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$StudentIdCardCopyWithImpl<$Res>
    implements $StudentIdCardCopyWith<$Res> {
  _$StudentIdCardCopyWithImpl(this._self, this._then);

  final StudentIdCard _self;
  final $Res Function(StudentIdCard) _then;

/// Create a copy of StudentIdCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idCardId = null,Object? cardNumber = freezed,Object? issueDate = freezed,Object? expiryDate = freezed,Object? studentName = freezed,Object? admissionNo = freezed,Object? className = freezed,Object? sectionName = freezed,Object? institutionName = freezed,Object? sessionName = freezed,}) {
  return _then(StudentIdCard(
idCardId: null == idCardId ? _self.idCardId : idCardId // ignore: cast_nullable_to_non_nullable
as String,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentIdCard].
extension StudentIdCardPatterns on StudentIdCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentIdCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentIdCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentIdCard value)  $default,){
final _that = this;
switch (_that) {
case _StudentIdCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentIdCard value)?  $default,){
final _that = this;
switch (_that) {
case _StudentIdCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_card_id')  String idCardId, @JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'expiry_date')  DateTime? expiryDate, @JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'session_name')  String? sessionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentIdCard() when $default != null:
return $default(_that.idCardId,_that.cardNumber,_that.issueDate,_that.expiryDate,_that.studentName,_that.admissionNo,_that.className,_that.sectionName,_that.institutionName,_that.sessionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_card_id')  String idCardId, @JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'expiry_date')  DateTime? expiryDate, @JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'session_name')  String? sessionName)  $default,) {final _that = this;
switch (_that) {
case _StudentIdCard():
return $default(_that.idCardId,_that.cardNumber,_that.issueDate,_that.expiryDate,_that.studentName,_that.admissionNo,_that.className,_that.sectionName,_that.institutionName,_that.sessionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_card_id')  String idCardId, @JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'expiry_date')  DateTime? expiryDate, @JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'session_name')  String? sessionName)?  $default,) {final _that = this;
switch (_that) {
case _StudentIdCard() when $default != null:
return $default(_that.idCardId,_that.cardNumber,_that.issueDate,_that.expiryDate,_that.studentName,_that.admissionNo,_that.className,_that.sectionName,_that.institutionName,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentIdCard implements StudentIdCard {
  const _StudentIdCard({@JsonKey(name: 'id_card_id') required this.idCardId, @JsonKey(name: 'card_number') this.cardNumber, @JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'expiry_date') this.expiryDate, @JsonKey(name: 'student_name') this.studentName, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'institution_name') this.institutionName, @JsonKey(name: 'session_name') this.sessionName});
  factory _StudentIdCard.fromJson(Map<String, dynamic> json) => _$StudentIdCardFromJson(json);

@override@JsonKey(name: 'id_card_id') final  String idCardId;
@override@JsonKey(name: 'card_number') final  String? cardNumber;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'expiry_date') final  DateTime? expiryDate;
@override@JsonKey(name: 'student_name') final  String? studentName;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'institution_name') final  String? institutionName;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of StudentIdCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentIdCardCopyWith<_StudentIdCard> get copyWith => __$StudentIdCardCopyWithImpl<_StudentIdCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentIdCardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentIdCard&&(identical(other.idCardId, idCardId) || other.idCardId == idCardId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.institutionName, institutionName) || other.institutionName == institutionName)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,idCardId,cardNumber,issueDate,expiryDate,studentName,admissionNo,className,sectionName,institutionName,sessionName);
}

@override
String toString() {
    return 'StudentIdCard(idCardId: $idCardId, cardNumber: $cardNumber, issueDate: $issueDate, expiryDate: $expiryDate, studentName: $studentName, admissionNo: $admissionNo, className: $className, sectionName: $sectionName, institutionName: $institutionName, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$StudentIdCardCopyWith<$Res> implements $StudentIdCardCopyWith<$Res> {
  factory _$StudentIdCardCopyWith(_StudentIdCard value, $Res Function(_StudentIdCard) _then) = __$StudentIdCardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_card_id') String idCardId,@JsonKey(name: 'card_number') String? cardNumber,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'expiry_date') DateTime? expiryDate,@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$StudentIdCardCopyWithImpl<$Res>
    implements _$StudentIdCardCopyWith<$Res> {
  __$StudentIdCardCopyWithImpl(this._self, this._then);

  final _StudentIdCard _self;
  final $Res Function(_StudentIdCard) _then;

/// Create a copy of StudentIdCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idCardId = null,Object? cardNumber = freezed,Object? issueDate = freezed,Object? expiryDate = freezed,Object? studentName = freezed,Object? admissionNo = freezed,Object? className = freezed,Object? sectionName = freezed,Object? institutionName = freezed,Object? sessionName = freezed,}) {
  return _then(_StudentIdCard(
idCardId: null == idCardId ? _self.idCardId : idCardId // ignore: cast_nullable_to_non_nullable
as String,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudentCertificate {

@JsonKey(name: 'certificate_type') String get certificateType;@JsonKey(name: 'issued_date') DateTime? get issuedDate;@JsonKey(name: 'institution_name') String? get institutionName; String get content; CertificateStudent? get student;
/// Create a copy of StudentCertificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCertificateCopyWith<StudentCertificate> get copyWith => _$StudentCertificateCopyWithImpl<StudentCertificate>(this as StudentCertificate, _$identity);

  /// Serializes this StudentCertificate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentCertificate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentCertificate&&(identical(other.certificateType, _this.certificateType) || other.certificateType == _this.certificateType)&&(identical(other.issuedDate, _this.issuedDate) || other.issuedDate == _this.issuedDate)&&(identical(other.institutionName, _this.institutionName) || other.institutionName == _this.institutionName)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentCertificate;
  return Object.hash(runtimeType,_this.certificateType,_this.issuedDate,_this.institutionName,_this.content,_this.student);
}

@override
String toString() {
  final _this = this as StudentCertificate;
  return 'StudentCertificate(certificateType: ${_this.certificateType}, issuedDate: ${_this.issuedDate}, institutionName: ${_this.institutionName}, content: ${_this.content}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $StudentCertificateCopyWith<$Res>  {
  factory $StudentCertificateCopyWith(StudentCertificate value, $Res Function(StudentCertificate) _then) = _$StudentCertificateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'certificate_type') String certificateType,@JsonKey(name: 'issued_date') DateTime? issuedDate,@JsonKey(name: 'institution_name') String? institutionName, String content, CertificateStudent? student
});


$CertificateStudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$StudentCertificateCopyWithImpl<$Res>
    implements $StudentCertificateCopyWith<$Res> {
  _$StudentCertificateCopyWithImpl(this._self, this._then);

  final StudentCertificate _self;
  final $Res Function(StudentCertificate) _then;

/// Create a copy of StudentCertificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? certificateType = null,Object? issuedDate = freezed,Object? institutionName = freezed,Object? content = null,Object? student = freezed,}) {
  return _then(StudentCertificate(
certificateType: null == certificateType ? _self.certificateType : certificateType // ignore: cast_nullable_to_non_nullable
as String,issuedDate: freezed == issuedDate ? _self.issuedDate : issuedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as CertificateStudent?,
  ));
}
/// Create a copy of StudentCertificate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CertificateStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $CertificateStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentCertificate].
extension StudentCertificatePatterns on StudentCertificate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentCertificate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentCertificate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentCertificate value)  $default,){
final _that = this;
switch (_that) {
case _StudentCertificate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentCertificate value)?  $default,){
final _that = this;
switch (_that) {
case _StudentCertificate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'certificate_type')  String certificateType, @JsonKey(name: 'issued_date')  DateTime? issuedDate, @JsonKey(name: 'institution_name')  String? institutionName,  String content,  CertificateStudent? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentCertificate() when $default != null:
return $default(_that.certificateType,_that.issuedDate,_that.institutionName,_that.content,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'certificate_type')  String certificateType, @JsonKey(name: 'issued_date')  DateTime? issuedDate, @JsonKey(name: 'institution_name')  String? institutionName,  String content,  CertificateStudent? student)  $default,) {final _that = this;
switch (_that) {
case _StudentCertificate():
return $default(_that.certificateType,_that.issuedDate,_that.institutionName,_that.content,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'certificate_type')  String certificateType, @JsonKey(name: 'issued_date')  DateTime? issuedDate, @JsonKey(name: 'institution_name')  String? institutionName,  String content,  CertificateStudent? student)?  $default,) {final _that = this;
switch (_that) {
case _StudentCertificate() when $default != null:
return $default(_that.certificateType,_that.issuedDate,_that.institutionName,_that.content,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentCertificate implements StudentCertificate {
  const _StudentCertificate({@JsonKey(name: 'certificate_type') required this.certificateType, @JsonKey(name: 'issued_date') this.issuedDate, @JsonKey(name: 'institution_name') this.institutionName, required this.content, this.student});
  factory _StudentCertificate.fromJson(Map<String, dynamic> json) => _$StudentCertificateFromJson(json);

@override@JsonKey(name: 'certificate_type') final  String certificateType;
@override@JsonKey(name: 'issued_date') final  DateTime? issuedDate;
@override@JsonKey(name: 'institution_name') final  String? institutionName;
@override final  String content;
@override final  CertificateStudent? student;

/// Create a copy of StudentCertificate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCertificateCopyWith<_StudentCertificate> get copyWith => __$StudentCertificateCopyWithImpl<_StudentCertificate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentCertificateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentCertificate&&(identical(other.certificateType, certificateType) || other.certificateType == certificateType)&&(identical(other.issuedDate, issuedDate) || other.issuedDate == issuedDate)&&(identical(other.institutionName, institutionName) || other.institutionName == institutionName)&&(identical(other.content, content) || other.content == content)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,certificateType,issuedDate,institutionName,content,student);
}

@override
String toString() {
    return 'StudentCertificate(certificateType: $certificateType, issuedDate: $issuedDate, institutionName: $institutionName, content: $content, student: $student)';
}


}

/// @nodoc
abstract mixin class _$StudentCertificateCopyWith<$Res> implements $StudentCertificateCopyWith<$Res> {
  factory _$StudentCertificateCopyWith(_StudentCertificate value, $Res Function(_StudentCertificate) _then) = __$StudentCertificateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'certificate_type') String certificateType,@JsonKey(name: 'issued_date') DateTime? issuedDate,@JsonKey(name: 'institution_name') String? institutionName, String content, CertificateStudent? student
});


@override $CertificateStudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$StudentCertificateCopyWithImpl<$Res>
    implements _$StudentCertificateCopyWith<$Res> {
  __$StudentCertificateCopyWithImpl(this._self, this._then);

  final _StudentCertificate _self;
  final $Res Function(_StudentCertificate) _then;

/// Create a copy of StudentCertificate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? certificateType = null,Object? issuedDate = freezed,Object? institutionName = freezed,Object? content = null,Object? student = freezed,}) {
  return _then(_StudentCertificate(
certificateType: null == certificateType ? _self.certificateType : certificateType // ignore: cast_nullable_to_non_nullable
as String,issuedDate: freezed == issuedDate ? _self.issuedDate : issuedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as CertificateStudent?,
  ));
}

/// Create a copy of StudentCertificate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CertificateStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $CertificateStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$CertificateStudent {

 String? get name;@JsonKey(name: 'admission_no') String? get admissionNo;
/// Create a copy of CertificateStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificateStudentCopyWith<CertificateStudent> get copyWith => _$CertificateStudentCopyWithImpl<CertificateStudent>(this as CertificateStudent, _$identity);

  /// Serializes this CertificateStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CertificateStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CertificateStudent&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CertificateStudent;
  return Object.hash(runtimeType,_this.name,_this.admissionNo);
}

@override
String toString() {
  final _this = this as CertificateStudent;
  return 'CertificateStudent(name: ${_this.name}, admissionNo: ${_this.admissionNo})';
}


}

/// @nodoc
abstract mixin class $CertificateStudentCopyWith<$Res>  {
  factory $CertificateStudentCopyWith(CertificateStudent value, $Res Function(CertificateStudent) _then) = _$CertificateStudentCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'admission_no') String? admissionNo
});




}
/// @nodoc
class _$CertificateStudentCopyWithImpl<$Res>
    implements $CertificateStudentCopyWith<$Res> {
  _$CertificateStudentCopyWithImpl(this._self, this._then);

  final CertificateStudent _self;
  final $Res Function(CertificateStudent) _then;

/// Create a copy of CertificateStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? admissionNo = freezed,}) {
  return _then(CertificateStudent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CertificateStudent].
extension CertificateStudentPatterns on CertificateStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CertificateStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CertificateStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CertificateStudent value)  $default,){
final _that = this;
switch (_that) {
case _CertificateStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CertificateStudent value)?  $default,){
final _that = this;
switch (_that) {
case _CertificateStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'admission_no')  String? admissionNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CertificateStudent() when $default != null:
return $default(_that.name,_that.admissionNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'admission_no')  String? admissionNo)  $default,) {final _that = this;
switch (_that) {
case _CertificateStudent():
return $default(_that.name,_that.admissionNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'admission_no')  String? admissionNo)?  $default,) {final _that = this;
switch (_that) {
case _CertificateStudent() when $default != null:
return $default(_that.name,_that.admissionNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CertificateStudent implements CertificateStudent {
  const _CertificateStudent({this.name, @JsonKey(name: 'admission_no') this.admissionNo});
  factory _CertificateStudent.fromJson(Map<String, dynamic> json) => _$CertificateStudentFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;

/// Create a copy of CertificateStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificateStudentCopyWith<_CertificateStudent> get copyWith => __$CertificateStudentCopyWithImpl<_CertificateStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificateStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CertificateStudent&&(identical(other.name, name) || other.name == name)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,admissionNo);
}

@override
String toString() {
    return 'CertificateStudent(name: $name, admissionNo: $admissionNo)';
}


}

/// @nodoc
abstract mixin class _$CertificateStudentCopyWith<$Res> implements $CertificateStudentCopyWith<$Res> {
  factory _$CertificateStudentCopyWith(_CertificateStudent value, $Res Function(_CertificateStudent) _then) = __$CertificateStudentCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'admission_no') String? admissionNo
});




}
/// @nodoc
class __$CertificateStudentCopyWithImpl<$Res>
    implements _$CertificateStudentCopyWith<$Res> {
  __$CertificateStudentCopyWithImpl(this._self, this._then);

  final _CertificateStudent _self;
  final $Res Function(_CertificateStudent) _then;

/// Create a copy of CertificateStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? admissionNo = freezed,}) {
  return _then(_CertificateStudent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
