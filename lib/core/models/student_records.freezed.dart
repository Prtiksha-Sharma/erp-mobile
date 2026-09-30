// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentDocument {

@JsonKey(name: 'document_id') String get documentId;@JsonKey(name: 'document_name') String get documentName;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'file_url') String? get fileUrl;@JsonKey(name: 'file_size')@LooseNumConverter() num? get fileSize;@JsonKey(name: 'verification_status') String? get verificationStatus;@JsonKey(name: 'uploaded_at') DateTime? get uploadedAt;
/// Create a copy of StudentDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentDocumentCopyWith<StudentDocument> get copyWith => _$StudentDocumentCopyWithImpl<StudentDocument>(this as StudentDocument, _$identity);

  /// Serializes this StudentDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentDocument&&(identical(other.documentId, _this.documentId) || other.documentId == _this.documentId)&&(identical(other.documentName, _this.documentName) || other.documentName == _this.documentName)&&(identical(other.fileName, _this.fileName) || other.fileName == _this.fileName)&&(identical(other.fileUrl, _this.fileUrl) || other.fileUrl == _this.fileUrl)&&(identical(other.fileSize, _this.fileSize) || other.fileSize == _this.fileSize)&&(identical(other.verificationStatus, _this.verificationStatus) || other.verificationStatus == _this.verificationStatus)&&(identical(other.uploadedAt, _this.uploadedAt) || other.uploadedAt == _this.uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentDocument;
  return Object.hash(runtimeType,_this.documentId,_this.documentName,_this.fileName,_this.fileUrl,_this.fileSize,_this.verificationStatus,_this.uploadedAt);
}

@override
String toString() {
  final _this = this as StudentDocument;
  return 'StudentDocument(documentId: ${_this.documentId}, documentName: ${_this.documentName}, fileName: ${_this.fileName}, fileUrl: ${_this.fileUrl}, fileSize: ${_this.fileSize}, verificationStatus: ${_this.verificationStatus}, uploadedAt: ${_this.uploadedAt})';
}


}

/// @nodoc
abstract mixin class $StudentDocumentCopyWith<$Res>  {
  factory $StudentDocumentCopyWith(StudentDocument value, $Res Function(StudentDocument) _then) = _$StudentDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_name') String documentName,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'file_size')@LooseNumConverter() num? fileSize,@JsonKey(name: 'verification_status') String? verificationStatus,@JsonKey(name: 'uploaded_at') DateTime? uploadedAt
});




}
/// @nodoc
class _$StudentDocumentCopyWithImpl<$Res>
    implements $StudentDocumentCopyWith<$Res> {
  _$StudentDocumentCopyWithImpl(this._self, this._then);

  final StudentDocument _self;
  final $Res Function(StudentDocument) _then;

/// Create a copy of StudentDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? documentName = null,Object? fileName = freezed,Object? fileUrl = freezed,Object? fileSize = freezed,Object? verificationStatus = freezed,Object? uploadedAt = freezed,}) {
  return _then(StudentDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentName: null == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as num?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentDocument].
extension StudentDocumentPatterns on StudentDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentDocument value)  $default,){
final _that = this;
switch (_that) {
case _StudentDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentDocument value)?  $default,){
final _that = this;
switch (_that) {
case _StudentDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_name')  String documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'verification_status')  String? verificationStatus, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentDocument() when $default != null:
return $default(_that.documentId,_that.documentName,_that.fileName,_that.fileUrl,_that.fileSize,_that.verificationStatus,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_name')  String documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'verification_status')  String? verificationStatus, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _StudentDocument():
return $default(_that.documentId,_that.documentName,_that.fileName,_that.fileUrl,_that.fileSize,_that.verificationStatus,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_name')  String documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'verification_status')  String? verificationStatus, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _StudentDocument() when $default != null:
return $default(_that.documentId,_that.documentName,_that.fileName,_that.fileUrl,_that.fileSize,_that.verificationStatus,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentDocument implements StudentDocument {
  const _StudentDocument({@JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'document_name') required this.documentName, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'file_url') this.fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter() this.fileSize, @JsonKey(name: 'verification_status') this.verificationStatus, @JsonKey(name: 'uploaded_at') this.uploadedAt});
  factory _StudentDocument.fromJson(Map<String, dynamic> json) => _$StudentDocumentFromJson(json);

@override@JsonKey(name: 'document_id') final  String documentId;
@override@JsonKey(name: 'document_name') final  String documentName;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'file_url') final  String? fileUrl;
@override@JsonKey(name: 'file_size')@LooseNumConverter() final  num? fileSize;
@override@JsonKey(name: 'verification_status') final  String? verificationStatus;
@override@JsonKey(name: 'uploaded_at') final  DateTime? uploadedAt;

/// Create a copy of StudentDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentDocumentCopyWith<_StudentDocument> get copyWith => __$StudentDocumentCopyWithImpl<_StudentDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentDocument&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentId,documentName,fileName,fileUrl,fileSize,verificationStatus,uploadedAt);
}

@override
String toString() {
    return 'StudentDocument(documentId: $documentId, documentName: $documentName, fileName: $fileName, fileUrl: $fileUrl, fileSize: $fileSize, verificationStatus: $verificationStatus, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$StudentDocumentCopyWith<$Res> implements $StudentDocumentCopyWith<$Res> {
  factory _$StudentDocumentCopyWith(_StudentDocument value, $Res Function(_StudentDocument) _then) = __$StudentDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_name') String documentName,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'file_size')@LooseNumConverter() num? fileSize,@JsonKey(name: 'verification_status') String? verificationStatus,@JsonKey(name: 'uploaded_at') DateTime? uploadedAt
});




}
/// @nodoc
class __$StudentDocumentCopyWithImpl<$Res>
    implements _$StudentDocumentCopyWith<$Res> {
  __$StudentDocumentCopyWithImpl(this._self, this._then);

  final _StudentDocument _self;
  final $Res Function(_StudentDocument) _then;

/// Create a copy of StudentDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? documentName = null,Object? fileName = freezed,Object? fileUrl = freezed,Object? fileSize = freezed,Object? verificationStatus = freezed,Object? uploadedAt = freezed,}) {
  return _then(_StudentDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentName: null == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as num?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StudentLeave {

@JsonKey(name: 'leave_id') String get leaveId;@JsonKey(name: 'leave_type') String get leaveType;@JsonKey(name: 'from_date') DateTime get fromDate;@JsonKey(name: 'to_date') DateTime get toDate;@JsonKey(name: 'total_days')@LooseNumConverter() num? get totalDays; String? get reason; String? get status; String? get remarks;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of StudentLeave
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentLeaveCopyWith<StudentLeave> get copyWith => _$StudentLeaveCopyWithImpl<StudentLeave>(this as StudentLeave, _$identity);

  /// Serializes this StudentLeave to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentLeave;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentLeave&&(identical(other.leaveId, _this.leaveId) || other.leaveId == _this.leaveId)&&(identical(other.leaveType, _this.leaveType) || other.leaveType == _this.leaveType)&&(identical(other.fromDate, _this.fromDate) || other.fromDate == _this.fromDate)&&(identical(other.toDate, _this.toDate) || other.toDate == _this.toDate)&&(identical(other.totalDays, _this.totalDays) || other.totalDays == _this.totalDays)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentLeave;
  return Object.hash(runtimeType,_this.leaveId,_this.leaveType,_this.fromDate,_this.toDate,_this.totalDays,_this.reason,_this.status,_this.remarks,_this.student);
}

@override
String toString() {
  final _this = this as StudentLeave;
  return 'StudentLeave(leaveId: ${_this.leaveId}, leaveType: ${_this.leaveType}, fromDate: ${_this.fromDate}, toDate: ${_this.toDate}, totalDays: ${_this.totalDays}, reason: ${_this.reason}, status: ${_this.status}, remarks: ${_this.remarks}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $StudentLeaveCopyWith<$Res>  {
  factory $StudentLeaveCopyWith(StudentLeave value, $Res Function(StudentLeave) _then) = _$StudentLeaveCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'leave_type') String leaveType,@JsonKey(name: 'from_date') DateTime fromDate,@JsonKey(name: 'to_date') DateTime toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$StudentLeaveCopyWithImpl<$Res>
    implements $StudentLeaveCopyWith<$Res> {
  _$StudentLeaveCopyWithImpl(this._self, this._then);

  final StudentLeave _self;
  final $Res Function(StudentLeave) _then;

/// Create a copy of StudentLeave
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveId = null,Object? leaveType = null,Object? fromDate = null,Object? toDate = null,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(StudentLeave(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of StudentLeave
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentBriefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentLeave].
extension StudentLeavePatterns on StudentLeave {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentLeave value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentLeave() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentLeave value)  $default,){
final _that = this;
switch (_that) {
case _StudentLeave():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentLeave value)?  $default,){
final _that = this;
switch (_that) {
case _StudentLeave() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentLeave() when $default != null:
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _StudentLeave():
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _StudentLeave() when $default != null:
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.remarks,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentLeave implements StudentLeave {
  const _StudentLeave({@JsonKey(name: 'leave_id') required this.leaveId, @JsonKey(name: 'leave_type') required this.leaveType, @JsonKey(name: 'from_date') required this.fromDate, @JsonKey(name: 'to_date') required this.toDate, @JsonKey(name: 'total_days')@LooseNumConverter() this.totalDays, this.reason, this.status, this.remarks, @JsonKey(name: 'students') this.student});
  factory _StudentLeave.fromJson(Map<String, dynamic> json) => _$StudentLeaveFromJson(json);

@override@JsonKey(name: 'leave_id') final  String leaveId;
@override@JsonKey(name: 'leave_type') final  String leaveType;
@override@JsonKey(name: 'from_date') final  DateTime fromDate;
@override@JsonKey(name: 'to_date') final  DateTime toDate;
@override@JsonKey(name: 'total_days')@LooseNumConverter() final  num? totalDays;
@override final  String? reason;
@override final  String? status;
@override final  String? remarks;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of StudentLeave
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentLeaveCopyWith<_StudentLeave> get copyWith => __$StudentLeaveCopyWithImpl<_StudentLeave>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentLeaveToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentLeave&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaveId,leaveType,fromDate,toDate,totalDays,reason,status,remarks,student);
}

@override
String toString() {
    return 'StudentLeave(leaveId: $leaveId, leaveType: $leaveType, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, reason: $reason, status: $status, remarks: $remarks, student: $student)';
}


}

/// @nodoc
abstract mixin class _$StudentLeaveCopyWith<$Res> implements $StudentLeaveCopyWith<$Res> {
  factory _$StudentLeaveCopyWith(_StudentLeave value, $Res Function(_StudentLeave) _then) = __$StudentLeaveCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'leave_type') String leaveType,@JsonKey(name: 'from_date') DateTime fromDate,@JsonKey(name: 'to_date') DateTime toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$StudentLeaveCopyWithImpl<$Res>
    implements _$StudentLeaveCopyWith<$Res> {
  __$StudentLeaveCopyWithImpl(this._self, this._then);

  final _StudentLeave _self;
  final $Res Function(_StudentLeave) _then;

/// Create a copy of StudentLeave
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveId = null,Object? leaveType = null,Object? fromDate = null,Object? toDate = null,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(_StudentLeave(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of StudentLeave
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentBriefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$MedicalInfo {

@JsonKey(name: 'blood_group') String? get bloodGroup;@JsonKey(name: 'height_cm')@LooseStringConverter() String? get heightCm;@JsonKey(name: 'weight_kg')@LooseStringConverter() String? get weightKg; String? get allergies;@JsonKey(name: 'medical_conditions') String? get medicalConditions;@JsonKey(name: 'doctor_name') String? get doctorName;@JsonKey(name: 'doctor_contact') String? get doctorContact; String? get remarks;
/// Create a copy of MedicalInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalInfoCopyWith<MedicalInfo> get copyWith => _$MedicalInfoCopyWithImpl<MedicalInfo>(this as MedicalInfo, _$identity);

  /// Serializes this MedicalInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MedicalInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalInfo&&(identical(other.bloodGroup, _this.bloodGroup) || other.bloodGroup == _this.bloodGroup)&&(identical(other.heightCm, _this.heightCm) || other.heightCm == _this.heightCm)&&(identical(other.weightKg, _this.weightKg) || other.weightKg == _this.weightKg)&&(identical(other.allergies, _this.allergies) || other.allergies == _this.allergies)&&(identical(other.medicalConditions, _this.medicalConditions) || other.medicalConditions == _this.medicalConditions)&&(identical(other.doctorName, _this.doctorName) || other.doctorName == _this.doctorName)&&(identical(other.doctorContact, _this.doctorContact) || other.doctorContact == _this.doctorContact)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MedicalInfo;
  return Object.hash(runtimeType,_this.bloodGroup,_this.heightCm,_this.weightKg,_this.allergies,_this.medicalConditions,_this.doctorName,_this.doctorContact,_this.remarks);
}

@override
String toString() {
  final _this = this as MedicalInfo;
  return 'MedicalInfo(bloodGroup: ${_this.bloodGroup}, heightCm: ${_this.heightCm}, weightKg: ${_this.weightKg}, allergies: ${_this.allergies}, medicalConditions: ${_this.medicalConditions}, doctorName: ${_this.doctorName}, doctorContact: ${_this.doctorContact}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $MedicalInfoCopyWith<$Res>  {
  factory $MedicalInfoCopyWith(MedicalInfo value, $Res Function(MedicalInfo) _then) = _$MedicalInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'height_cm')@LooseStringConverter() String? heightCm,@JsonKey(name: 'weight_kg')@LooseStringConverter() String? weightKg, String? allergies,@JsonKey(name: 'medical_conditions') String? medicalConditions,@JsonKey(name: 'doctor_name') String? doctorName,@JsonKey(name: 'doctor_contact') String? doctorContact, String? remarks
});




}
/// @nodoc
class _$MedicalInfoCopyWithImpl<$Res>
    implements $MedicalInfoCopyWith<$Res> {
  _$MedicalInfoCopyWithImpl(this._self, this._then);

  final MedicalInfo _self;
  final $Res Function(MedicalInfo) _then;

/// Create a copy of MedicalInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bloodGroup = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? allergies = freezed,Object? medicalConditions = freezed,Object? doctorName = freezed,Object? doctorContact = freezed,Object? remarks = freezed,}) {
  return _then(MedicalInfo(
bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as String?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String?,allergies: freezed == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as String?,medicalConditions: freezed == medicalConditions ? _self.medicalConditions : medicalConditions // ignore: cast_nullable_to_non_nullable
as String?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,doctorContact: freezed == doctorContact ? _self.doctorContact : doctorContact // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicalInfo].
extension MedicalInfoPatterns on MedicalInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicalInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicalInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicalInfo value)  $default,){
final _that = this;
switch (_that) {
case _MedicalInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicalInfo value)?  $default,){
final _that = this;
switch (_that) {
case _MedicalInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'height_cm')@LooseStringConverter()  String? heightCm, @JsonKey(name: 'weight_kg')@LooseStringConverter()  String? weightKg,  String? allergies, @JsonKey(name: 'medical_conditions')  String? medicalConditions, @JsonKey(name: 'doctor_name')  String? doctorName, @JsonKey(name: 'doctor_contact')  String? doctorContact,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicalInfo() when $default != null:
return $default(_that.bloodGroup,_that.heightCm,_that.weightKg,_that.allergies,_that.medicalConditions,_that.doctorName,_that.doctorContact,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'height_cm')@LooseStringConverter()  String? heightCm, @JsonKey(name: 'weight_kg')@LooseStringConverter()  String? weightKg,  String? allergies, @JsonKey(name: 'medical_conditions')  String? medicalConditions, @JsonKey(name: 'doctor_name')  String? doctorName, @JsonKey(name: 'doctor_contact')  String? doctorContact,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _MedicalInfo():
return $default(_that.bloodGroup,_that.heightCm,_that.weightKg,_that.allergies,_that.medicalConditions,_that.doctorName,_that.doctorContact,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'height_cm')@LooseStringConverter()  String? heightCm, @JsonKey(name: 'weight_kg')@LooseStringConverter()  String? weightKg,  String? allergies, @JsonKey(name: 'medical_conditions')  String? medicalConditions, @JsonKey(name: 'doctor_name')  String? doctorName, @JsonKey(name: 'doctor_contact')  String? doctorContact,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _MedicalInfo() when $default != null:
return $default(_that.bloodGroup,_that.heightCm,_that.weightKg,_that.allergies,_that.medicalConditions,_that.doctorName,_that.doctorContact,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MedicalInfo implements MedicalInfo {
  const _MedicalInfo({@JsonKey(name: 'blood_group') this.bloodGroup, @JsonKey(name: 'height_cm')@LooseStringConverter() this.heightCm, @JsonKey(name: 'weight_kg')@LooseStringConverter() this.weightKg, this.allergies, @JsonKey(name: 'medical_conditions') this.medicalConditions, @JsonKey(name: 'doctor_name') this.doctorName, @JsonKey(name: 'doctor_contact') this.doctorContact, this.remarks});
  factory _MedicalInfo.fromJson(Map<String, dynamic> json) => _$MedicalInfoFromJson(json);

@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override@JsonKey(name: 'height_cm')@LooseStringConverter() final  String? heightCm;
@override@JsonKey(name: 'weight_kg')@LooseStringConverter() final  String? weightKg;
@override final  String? allergies;
@override@JsonKey(name: 'medical_conditions') final  String? medicalConditions;
@override@JsonKey(name: 'doctor_name') final  String? doctorName;
@override@JsonKey(name: 'doctor_contact') final  String? doctorContact;
@override final  String? remarks;

/// Create a copy of MedicalInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalInfoCopyWith<_MedicalInfo> get copyWith => __$MedicalInfoCopyWithImpl<_MedicalInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicalInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalInfo&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.allergies, allergies) || other.allergies == allergies)&&(identical(other.medicalConditions, medicalConditions) || other.medicalConditions == medicalConditions)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.doctorContact, doctorContact) || other.doctorContact == doctorContact)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,bloodGroup,heightCm,weightKg,allergies,medicalConditions,doctorName,doctorContact,remarks);
}

@override
String toString() {
    return 'MedicalInfo(bloodGroup: $bloodGroup, heightCm: $heightCm, weightKg: $weightKg, allergies: $allergies, medicalConditions: $medicalConditions, doctorName: $doctorName, doctorContact: $doctorContact, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$MedicalInfoCopyWith<$Res> implements $MedicalInfoCopyWith<$Res> {
  factory _$MedicalInfoCopyWith(_MedicalInfo value, $Res Function(_MedicalInfo) _then) = __$MedicalInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'height_cm')@LooseStringConverter() String? heightCm,@JsonKey(name: 'weight_kg')@LooseStringConverter() String? weightKg, String? allergies,@JsonKey(name: 'medical_conditions') String? medicalConditions,@JsonKey(name: 'doctor_name') String? doctorName,@JsonKey(name: 'doctor_contact') String? doctorContact, String? remarks
});




}
/// @nodoc
class __$MedicalInfoCopyWithImpl<$Res>
    implements _$MedicalInfoCopyWith<$Res> {
  __$MedicalInfoCopyWithImpl(this._self, this._then);

  final _MedicalInfo _self;
  final $Res Function(_MedicalInfo) _then;

/// Create a copy of MedicalInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bloodGroup = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? allergies = freezed,Object? medicalConditions = freezed,Object? doctorName = freezed,Object? doctorContact = freezed,Object? remarks = freezed,}) {
  return _then(_MedicalInfo(
bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as String?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String?,allergies: freezed == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as String?,medicalConditions: freezed == medicalConditions ? _self.medicalConditions : medicalConditions // ignore: cast_nullable_to_non_nullable
as String?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,doctorContact: freezed == doctorContact ? _self.doctorContact : doctorContact // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DisciplineRecord {

@JsonKey(name: 'discipline_id') String get disciplineId;@JsonKey(name: 'incident_date') DateTime? get incidentDate;@JsonKey(name: 'incident_type') String get incidentType; String? get description; String? get severity;@JsonKey(name: 'action_taken') String? get actionTaken; String? get status;@JsonKey(name: 'resolved_at') DateTime? get resolvedAt; String? get remarks;@JsonKey(name: 'attachment_url') String? get attachmentUrl;
/// Create a copy of DisciplineRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisciplineRecordCopyWith<DisciplineRecord> get copyWith => _$DisciplineRecordCopyWithImpl<DisciplineRecord>(this as DisciplineRecord, _$identity);

  /// Serializes this DisciplineRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DisciplineRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisciplineRecord&&(identical(other.disciplineId, _this.disciplineId) || other.disciplineId == _this.disciplineId)&&(identical(other.incidentDate, _this.incidentDate) || other.incidentDate == _this.incidentDate)&&(identical(other.incidentType, _this.incidentType) || other.incidentType == _this.incidentType)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.actionTaken, _this.actionTaken) || other.actionTaken == _this.actionTaken)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DisciplineRecord;
  return Object.hash(runtimeType,_this.disciplineId,_this.incidentDate,_this.incidentType,_this.description,_this.severity,_this.actionTaken,_this.status,_this.resolvedAt,_this.remarks,_this.attachmentUrl);
}

@override
String toString() {
  final _this = this as DisciplineRecord;
  return 'DisciplineRecord(disciplineId: ${_this.disciplineId}, incidentDate: ${_this.incidentDate}, incidentType: ${_this.incidentType}, description: ${_this.description}, severity: ${_this.severity}, actionTaken: ${_this.actionTaken}, status: ${_this.status}, resolvedAt: ${_this.resolvedAt}, remarks: ${_this.remarks}, attachmentUrl: ${_this.attachmentUrl})';
}


}

/// @nodoc
abstract mixin class $DisciplineRecordCopyWith<$Res>  {
  factory $DisciplineRecordCopyWith(DisciplineRecord value, $Res Function(DisciplineRecord) _then) = _$DisciplineRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'discipline_id') String disciplineId,@JsonKey(name: 'incident_date') DateTime? incidentDate,@JsonKey(name: 'incident_type') String incidentType, String? description, String? severity,@JsonKey(name: 'action_taken') String? actionTaken, String? status,@JsonKey(name: 'resolved_at') DateTime? resolvedAt, String? remarks,@JsonKey(name: 'attachment_url') String? attachmentUrl
});




}
/// @nodoc
class _$DisciplineRecordCopyWithImpl<$Res>
    implements $DisciplineRecordCopyWith<$Res> {
  _$DisciplineRecordCopyWithImpl(this._self, this._then);

  final DisciplineRecord _self;
  final $Res Function(DisciplineRecord) _then;

/// Create a copy of DisciplineRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? disciplineId = null,Object? incidentDate = freezed,Object? incidentType = null,Object? description = freezed,Object? severity = freezed,Object? actionTaken = freezed,Object? status = freezed,Object? resolvedAt = freezed,Object? remarks = freezed,Object? attachmentUrl = freezed,}) {
  return _then(DisciplineRecord(
disciplineId: null == disciplineId ? _self.disciplineId : disciplineId // ignore: cast_nullable_to_non_nullable
as String,incidentDate: freezed == incidentDate ? _self.incidentDate : incidentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisciplineRecord].
extension DisciplineRecordPatterns on DisciplineRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisciplineRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisciplineRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisciplineRecord value)  $default,){
final _that = this;
switch (_that) {
case _DisciplineRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisciplineRecord value)?  $default,){
final _that = this;
switch (_that) {
case _DisciplineRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'discipline_id')  String disciplineId, @JsonKey(name: 'incident_date')  DateTime? incidentDate, @JsonKey(name: 'incident_type')  String incidentType,  String? description,  String? severity, @JsonKey(name: 'action_taken')  String? actionTaken,  String? status, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  String? remarks, @JsonKey(name: 'attachment_url')  String? attachmentUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisciplineRecord() when $default != null:
return $default(_that.disciplineId,_that.incidentDate,_that.incidentType,_that.description,_that.severity,_that.actionTaken,_that.status,_that.resolvedAt,_that.remarks,_that.attachmentUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'discipline_id')  String disciplineId, @JsonKey(name: 'incident_date')  DateTime? incidentDate, @JsonKey(name: 'incident_type')  String incidentType,  String? description,  String? severity, @JsonKey(name: 'action_taken')  String? actionTaken,  String? status, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  String? remarks, @JsonKey(name: 'attachment_url')  String? attachmentUrl)  $default,) {final _that = this;
switch (_that) {
case _DisciplineRecord():
return $default(_that.disciplineId,_that.incidentDate,_that.incidentType,_that.description,_that.severity,_that.actionTaken,_that.status,_that.resolvedAt,_that.remarks,_that.attachmentUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'discipline_id')  String disciplineId, @JsonKey(name: 'incident_date')  DateTime? incidentDate, @JsonKey(name: 'incident_type')  String incidentType,  String? description,  String? severity, @JsonKey(name: 'action_taken')  String? actionTaken,  String? status, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  String? remarks, @JsonKey(name: 'attachment_url')  String? attachmentUrl)?  $default,) {final _that = this;
switch (_that) {
case _DisciplineRecord() when $default != null:
return $default(_that.disciplineId,_that.incidentDate,_that.incidentType,_that.description,_that.severity,_that.actionTaken,_that.status,_that.resolvedAt,_that.remarks,_that.attachmentUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisciplineRecord implements DisciplineRecord {
  const _DisciplineRecord({@JsonKey(name: 'discipline_id') required this.disciplineId, @JsonKey(name: 'incident_date') this.incidentDate, @JsonKey(name: 'incident_type') required this.incidentType, this.description, this.severity, @JsonKey(name: 'action_taken') this.actionTaken, this.status, @JsonKey(name: 'resolved_at') this.resolvedAt, this.remarks, @JsonKey(name: 'attachment_url') this.attachmentUrl});
  factory _DisciplineRecord.fromJson(Map<String, dynamic> json) => _$DisciplineRecordFromJson(json);

@override@JsonKey(name: 'discipline_id') final  String disciplineId;
@override@JsonKey(name: 'incident_date') final  DateTime? incidentDate;
@override@JsonKey(name: 'incident_type') final  String incidentType;
@override final  String? description;
@override final  String? severity;
@override@JsonKey(name: 'action_taken') final  String? actionTaken;
@override final  String? status;
@override@JsonKey(name: 'resolved_at') final  DateTime? resolvedAt;
@override final  String? remarks;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;

/// Create a copy of DisciplineRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisciplineRecordCopyWith<_DisciplineRecord> get copyWith => __$DisciplineRecordCopyWithImpl<_DisciplineRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisciplineRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisciplineRecord&&(identical(other.disciplineId, disciplineId) || other.disciplineId == disciplineId)&&(identical(other.incidentDate, incidentDate) || other.incidentDate == incidentDate)&&(identical(other.incidentType, incidentType) || other.incidentType == incidentType)&&(identical(other.description, description) || other.description == description)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,disciplineId,incidentDate,incidentType,description,severity,actionTaken,status,resolvedAt,remarks,attachmentUrl);
}

@override
String toString() {
    return 'DisciplineRecord(disciplineId: $disciplineId, incidentDate: $incidentDate, incidentType: $incidentType, description: $description, severity: $severity, actionTaken: $actionTaken, status: $status, resolvedAt: $resolvedAt, remarks: $remarks, attachmentUrl: $attachmentUrl)';
}


}

/// @nodoc
abstract mixin class _$DisciplineRecordCopyWith<$Res> implements $DisciplineRecordCopyWith<$Res> {
  factory _$DisciplineRecordCopyWith(_DisciplineRecord value, $Res Function(_DisciplineRecord) _then) = __$DisciplineRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'discipline_id') String disciplineId,@JsonKey(name: 'incident_date') DateTime? incidentDate,@JsonKey(name: 'incident_type') String incidentType, String? description, String? severity,@JsonKey(name: 'action_taken') String? actionTaken, String? status,@JsonKey(name: 'resolved_at') DateTime? resolvedAt, String? remarks,@JsonKey(name: 'attachment_url') String? attachmentUrl
});




}
/// @nodoc
class __$DisciplineRecordCopyWithImpl<$Res>
    implements _$DisciplineRecordCopyWith<$Res> {
  __$DisciplineRecordCopyWithImpl(this._self, this._then);

  final _DisciplineRecord _self;
  final $Res Function(_DisciplineRecord) _then;

/// Create a copy of DisciplineRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? disciplineId = null,Object? incidentDate = freezed,Object? incidentType = null,Object? description = freezed,Object? severity = freezed,Object? actionTaken = freezed,Object? status = freezed,Object? resolvedAt = freezed,Object? remarks = freezed,Object? attachmentUrl = freezed,}) {
  return _then(_DisciplineRecord(
disciplineId: null == disciplineId ? _self.disciplineId : disciplineId // ignore: cast_nullable_to_non_nullable
as String,incidentDate: freezed == incidentDate ? _self.incidentDate : incidentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PromotionRecord {

@JsonKey(name: 'promotion_id') String get promotionId;@JsonKey(name: 'promotion_status') String? get promotionStatus;@JsonKey(name: 'promoted_at') DateTime? get promotedAt; String? get remarks;@JsonKey(name: 'from_session') SessionRef? get fromSession;@JsonKey(name: 'to_session') SessionRef? get toSession;@JsonKey(name: 'from_class') ClassRef? get fromClass;@JsonKey(name: 'to_class') ClassRef? get toClass;@JsonKey(name: 'from_section') SectionRef? get fromSection;@JsonKey(name: 'to_section') SectionRef? get toSection;@JsonKey(name: 'promoted_by_user') PromotedByRef? get promotedBy;
/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionRecordCopyWith<PromotionRecord> get copyWith => _$PromotionRecordCopyWithImpl<PromotionRecord>(this as PromotionRecord, _$identity);

  /// Serializes this PromotionRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PromotionRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionRecord&&(identical(other.promotionId, _this.promotionId) || other.promotionId == _this.promotionId)&&(identical(other.promotionStatus, _this.promotionStatus) || other.promotionStatus == _this.promotionStatus)&&(identical(other.promotedAt, _this.promotedAt) || other.promotedAt == _this.promotedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.fromSession, _this.fromSession) || other.fromSession == _this.fromSession)&&(identical(other.toSession, _this.toSession) || other.toSession == _this.toSession)&&(identical(other.fromClass, _this.fromClass) || other.fromClass == _this.fromClass)&&(identical(other.toClass, _this.toClass) || other.toClass == _this.toClass)&&(identical(other.fromSection, _this.fromSection) || other.fromSection == _this.fromSection)&&(identical(other.toSection, _this.toSection) || other.toSection == _this.toSection)&&(identical(other.promotedBy, _this.promotedBy) || other.promotedBy == _this.promotedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PromotionRecord;
  return Object.hash(runtimeType,_this.promotionId,_this.promotionStatus,_this.promotedAt,_this.remarks,_this.fromSession,_this.toSession,_this.fromClass,_this.toClass,_this.fromSection,_this.toSection,_this.promotedBy);
}

@override
String toString() {
  final _this = this as PromotionRecord;
  return 'PromotionRecord(promotionId: ${_this.promotionId}, promotionStatus: ${_this.promotionStatus}, promotedAt: ${_this.promotedAt}, remarks: ${_this.remarks}, fromSession: ${_this.fromSession}, toSession: ${_this.toSession}, fromClass: ${_this.fromClass}, toClass: ${_this.toClass}, fromSection: ${_this.fromSection}, toSection: ${_this.toSection}, promotedBy: ${_this.promotedBy})';
}


}

/// @nodoc
abstract mixin class $PromotionRecordCopyWith<$Res>  {
  factory $PromotionRecordCopyWith(PromotionRecord value, $Res Function(PromotionRecord) _then) = _$PromotionRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'promotion_id') String promotionId,@JsonKey(name: 'promotion_status') String? promotionStatus,@JsonKey(name: 'promoted_at') DateTime? promotedAt, String? remarks,@JsonKey(name: 'from_session') SessionRef? fromSession,@JsonKey(name: 'to_session') SessionRef? toSession,@JsonKey(name: 'from_class') ClassRef? fromClass,@JsonKey(name: 'to_class') ClassRef? toClass,@JsonKey(name: 'from_section') SectionRef? fromSection,@JsonKey(name: 'to_section') SectionRef? toSection,@JsonKey(name: 'promoted_by_user') PromotedByRef? promotedBy
});


$SessionRefCopyWith<$Res>? get fromSession;$SessionRefCopyWith<$Res>? get toSession;$ClassRefCopyWith<$Res>? get fromClass;$ClassRefCopyWith<$Res>? get toClass;$SectionRefCopyWith<$Res>? get fromSection;$SectionRefCopyWith<$Res>? get toSection;$PromotedByRefCopyWith<$Res>? get promotedBy;

}
/// @nodoc
class _$PromotionRecordCopyWithImpl<$Res>
    implements $PromotionRecordCopyWith<$Res> {
  _$PromotionRecordCopyWithImpl(this._self, this._then);

  final PromotionRecord _self;
  final $Res Function(PromotionRecord) _then;

/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promotionId = null,Object? promotionStatus = freezed,Object? promotedAt = freezed,Object? remarks = freezed,Object? fromSession = freezed,Object? toSession = freezed,Object? fromClass = freezed,Object? toClass = freezed,Object? fromSection = freezed,Object? toSection = freezed,Object? promotedBy = freezed,}) {
  return _then(PromotionRecord(
promotionId: null == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String,promotionStatus: freezed == promotionStatus ? _self.promotionStatus : promotionStatus // ignore: cast_nullable_to_non_nullable
as String?,promotedAt: freezed == promotedAt ? _self.promotedAt : promotedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,fromSession: freezed == fromSession ? _self.fromSession : fromSession // ignore: cast_nullable_to_non_nullable
as SessionRef?,toSession: freezed == toSession ? _self.toSession : toSession // ignore: cast_nullable_to_non_nullable
as SessionRef?,fromClass: freezed == fromClass ? _self.fromClass : fromClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,toClass: freezed == toClass ? _self.toClass : toClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,fromSection: freezed == fromSection ? _self.fromSection : fromSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,toSection: freezed == toSection ? _self.toSection : toSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,promotedBy: freezed == promotedBy ? _self.promotedBy : promotedBy // ignore: cast_nullable_to_non_nullable
as PromotedByRef?,
  ));
}
/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get fromSession {
    if (_self.fromSession == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.fromSession!, (value) {
    return _then(_self.copyWith(fromSession: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get toSession {
    if (_self.toSession == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.toSession!, (value) {
    return _then(_self.copyWith(toSession: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get fromClass {
    if (_self.fromClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.fromClass!, (value) {
    return _then(_self.copyWith(fromClass: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get toClass {
    if (_self.toClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.toClass!, (value) {
    return _then(_self.copyWith(toClass: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get fromSection {
    if (_self.fromSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.fromSection!, (value) {
    return _then(_self.copyWith(fromSection: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get toSection {
    if (_self.toSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.toSection!, (value) {
    return _then(_self.copyWith(toSection: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotedByRefCopyWith<$Res>? get promotedBy {
    if (_self.promotedBy == null) {
    return null;
  }

  return $PromotedByRefCopyWith<$Res>(_self.promotedBy!, (value) {
    return _then(_self.copyWith(promotedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionRecord].
extension PromotionRecordPatterns on PromotionRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionRecord value)  $default,){
final _that = this;
switch (_that) {
case _PromotionRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionRecord value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'promotion_id')  String promotionId, @JsonKey(name: 'promotion_status')  String? promotionStatus, @JsonKey(name: 'promoted_at')  DateTime? promotedAt,  String? remarks, @JsonKey(name: 'from_session')  SessionRef? fromSession, @JsonKey(name: 'to_session')  SessionRef? toSession, @JsonKey(name: 'from_class')  ClassRef? fromClass, @JsonKey(name: 'to_class')  ClassRef? toClass, @JsonKey(name: 'from_section')  SectionRef? fromSection, @JsonKey(name: 'to_section')  SectionRef? toSection, @JsonKey(name: 'promoted_by_user')  PromotedByRef? promotedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionRecord() when $default != null:
return $default(_that.promotionId,_that.promotionStatus,_that.promotedAt,_that.remarks,_that.fromSession,_that.toSession,_that.fromClass,_that.toClass,_that.fromSection,_that.toSection,_that.promotedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'promotion_id')  String promotionId, @JsonKey(name: 'promotion_status')  String? promotionStatus, @JsonKey(name: 'promoted_at')  DateTime? promotedAt,  String? remarks, @JsonKey(name: 'from_session')  SessionRef? fromSession, @JsonKey(name: 'to_session')  SessionRef? toSession, @JsonKey(name: 'from_class')  ClassRef? fromClass, @JsonKey(name: 'to_class')  ClassRef? toClass, @JsonKey(name: 'from_section')  SectionRef? fromSection, @JsonKey(name: 'to_section')  SectionRef? toSection, @JsonKey(name: 'promoted_by_user')  PromotedByRef? promotedBy)  $default,) {final _that = this;
switch (_that) {
case _PromotionRecord():
return $default(_that.promotionId,_that.promotionStatus,_that.promotedAt,_that.remarks,_that.fromSession,_that.toSession,_that.fromClass,_that.toClass,_that.fromSection,_that.toSection,_that.promotedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'promotion_id')  String promotionId, @JsonKey(name: 'promotion_status')  String? promotionStatus, @JsonKey(name: 'promoted_at')  DateTime? promotedAt,  String? remarks, @JsonKey(name: 'from_session')  SessionRef? fromSession, @JsonKey(name: 'to_session')  SessionRef? toSession, @JsonKey(name: 'from_class')  ClassRef? fromClass, @JsonKey(name: 'to_class')  ClassRef? toClass, @JsonKey(name: 'from_section')  SectionRef? fromSection, @JsonKey(name: 'to_section')  SectionRef? toSection, @JsonKey(name: 'promoted_by_user')  PromotedByRef? promotedBy)?  $default,) {final _that = this;
switch (_that) {
case _PromotionRecord() when $default != null:
return $default(_that.promotionId,_that.promotionStatus,_that.promotedAt,_that.remarks,_that.fromSession,_that.toSession,_that.fromClass,_that.toClass,_that.fromSection,_that.toSection,_that.promotedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionRecord implements PromotionRecord {
  const _PromotionRecord({@JsonKey(name: 'promotion_id') required this.promotionId, @JsonKey(name: 'promotion_status') this.promotionStatus, @JsonKey(name: 'promoted_at') this.promotedAt, this.remarks, @JsonKey(name: 'from_session') this.fromSession, @JsonKey(name: 'to_session') this.toSession, @JsonKey(name: 'from_class') this.fromClass, @JsonKey(name: 'to_class') this.toClass, @JsonKey(name: 'from_section') this.fromSection, @JsonKey(name: 'to_section') this.toSection, @JsonKey(name: 'promoted_by_user') this.promotedBy});
  factory _PromotionRecord.fromJson(Map<String, dynamic> json) => _$PromotionRecordFromJson(json);

@override@JsonKey(name: 'promotion_id') final  String promotionId;
@override@JsonKey(name: 'promotion_status') final  String? promotionStatus;
@override@JsonKey(name: 'promoted_at') final  DateTime? promotedAt;
@override final  String? remarks;
@override@JsonKey(name: 'from_session') final  SessionRef? fromSession;
@override@JsonKey(name: 'to_session') final  SessionRef? toSession;
@override@JsonKey(name: 'from_class') final  ClassRef? fromClass;
@override@JsonKey(name: 'to_class') final  ClassRef? toClass;
@override@JsonKey(name: 'from_section') final  SectionRef? fromSection;
@override@JsonKey(name: 'to_section') final  SectionRef? toSection;
@override@JsonKey(name: 'promoted_by_user') final  PromotedByRef? promotedBy;

/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionRecordCopyWith<_PromotionRecord> get copyWith => __$PromotionRecordCopyWithImpl<_PromotionRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionRecord&&(identical(other.promotionId, promotionId) || other.promotionId == promotionId)&&(identical(other.promotionStatus, promotionStatus) || other.promotionStatus == promotionStatus)&&(identical(other.promotedAt, promotedAt) || other.promotedAt == promotedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.fromSession, fromSession) || other.fromSession == fromSession)&&(identical(other.toSession, toSession) || other.toSession == toSession)&&(identical(other.fromClass, fromClass) || other.fromClass == fromClass)&&(identical(other.toClass, toClass) || other.toClass == toClass)&&(identical(other.fromSection, fromSection) || other.fromSection == fromSection)&&(identical(other.toSection, toSection) || other.toSection == toSection)&&(identical(other.promotedBy, promotedBy) || other.promotedBy == promotedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,promotionId,promotionStatus,promotedAt,remarks,fromSession,toSession,fromClass,toClass,fromSection,toSection,promotedBy);
}

@override
String toString() {
    return 'PromotionRecord(promotionId: $promotionId, promotionStatus: $promotionStatus, promotedAt: $promotedAt, remarks: $remarks, fromSession: $fromSession, toSession: $toSession, fromClass: $fromClass, toClass: $toClass, fromSection: $fromSection, toSection: $toSection, promotedBy: $promotedBy)';
}


}

/// @nodoc
abstract mixin class _$PromotionRecordCopyWith<$Res> implements $PromotionRecordCopyWith<$Res> {
  factory _$PromotionRecordCopyWith(_PromotionRecord value, $Res Function(_PromotionRecord) _then) = __$PromotionRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'promotion_id') String promotionId,@JsonKey(name: 'promotion_status') String? promotionStatus,@JsonKey(name: 'promoted_at') DateTime? promotedAt, String? remarks,@JsonKey(name: 'from_session') SessionRef? fromSession,@JsonKey(name: 'to_session') SessionRef? toSession,@JsonKey(name: 'from_class') ClassRef? fromClass,@JsonKey(name: 'to_class') ClassRef? toClass,@JsonKey(name: 'from_section') SectionRef? fromSection,@JsonKey(name: 'to_section') SectionRef? toSection,@JsonKey(name: 'promoted_by_user') PromotedByRef? promotedBy
});


@override $SessionRefCopyWith<$Res>? get fromSession;@override $SessionRefCopyWith<$Res>? get toSession;@override $ClassRefCopyWith<$Res>? get fromClass;@override $ClassRefCopyWith<$Res>? get toClass;@override $SectionRefCopyWith<$Res>? get fromSection;@override $SectionRefCopyWith<$Res>? get toSection;@override $PromotedByRefCopyWith<$Res>? get promotedBy;

}
/// @nodoc
class __$PromotionRecordCopyWithImpl<$Res>
    implements _$PromotionRecordCopyWith<$Res> {
  __$PromotionRecordCopyWithImpl(this._self, this._then);

  final _PromotionRecord _self;
  final $Res Function(_PromotionRecord) _then;

/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promotionId = null,Object? promotionStatus = freezed,Object? promotedAt = freezed,Object? remarks = freezed,Object? fromSession = freezed,Object? toSession = freezed,Object? fromClass = freezed,Object? toClass = freezed,Object? fromSection = freezed,Object? toSection = freezed,Object? promotedBy = freezed,}) {
  return _then(_PromotionRecord(
promotionId: null == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String,promotionStatus: freezed == promotionStatus ? _self.promotionStatus : promotionStatus // ignore: cast_nullable_to_non_nullable
as String?,promotedAt: freezed == promotedAt ? _self.promotedAt : promotedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,fromSession: freezed == fromSession ? _self.fromSession : fromSession // ignore: cast_nullable_to_non_nullable
as SessionRef?,toSession: freezed == toSession ? _self.toSession : toSession // ignore: cast_nullable_to_non_nullable
as SessionRef?,fromClass: freezed == fromClass ? _self.fromClass : fromClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,toClass: freezed == toClass ? _self.toClass : toClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,fromSection: freezed == fromSection ? _self.fromSection : fromSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,toSection: freezed == toSection ? _self.toSection : toSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,promotedBy: freezed == promotedBy ? _self.promotedBy : promotedBy // ignore: cast_nullable_to_non_nullable
as PromotedByRef?,
  ));
}

/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get fromSession {
    if (_self.fromSession == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.fromSession!, (value) {
    return _then(_self.copyWith(fromSession: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get toSession {
    if (_self.toSession == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.toSession!, (value) {
    return _then(_self.copyWith(toSession: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get fromClass {
    if (_self.fromClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.fromClass!, (value) {
    return _then(_self.copyWith(fromClass: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get toClass {
    if (_self.toClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.toClass!, (value) {
    return _then(_self.copyWith(toClass: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get fromSection {
    if (_self.fromSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.fromSection!, (value) {
    return _then(_self.copyWith(fromSection: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get toSection {
    if (_self.toSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.toSection!, (value) {
    return _then(_self.copyWith(toSection: value));
  });
}/// Create a copy of PromotionRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotedByRefCopyWith<$Res>? get promotedBy {
    if (_self.promotedBy == null) {
    return null;
  }

  return $PromotedByRefCopyWith<$Res>(_self.promotedBy!, (value) {
    return _then(_self.copyWith(promotedBy: value));
  });
}
}


/// @nodoc
mixin _$PromotedByRef {

 String? get username;
/// Create a copy of PromotedByRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotedByRefCopyWith<PromotedByRef> get copyWith => _$PromotedByRefCopyWithImpl<PromotedByRef>(this as PromotedByRef, _$identity);

  /// Serializes this PromotedByRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PromotedByRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotedByRef&&(identical(other.username, _this.username) || other.username == _this.username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PromotedByRef;
  return Object.hash(runtimeType,_this.username);
}

@override
String toString() {
  final _this = this as PromotedByRef;
  return 'PromotedByRef(username: ${_this.username})';
}


}

/// @nodoc
abstract mixin class $PromotedByRefCopyWith<$Res>  {
  factory $PromotedByRefCopyWith(PromotedByRef value, $Res Function(PromotedByRef) _then) = _$PromotedByRefCopyWithImpl;
@useResult
$Res call({
 String? username
});




}
/// @nodoc
class _$PromotedByRefCopyWithImpl<$Res>
    implements $PromotedByRefCopyWith<$Res> {
  _$PromotedByRefCopyWithImpl(this._self, this._then);

  final PromotedByRef _self;
  final $Res Function(PromotedByRef) _then;

/// Create a copy of PromotedByRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,}) {
  return _then(PromotedByRef(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotedByRef].
extension PromotedByRefPatterns on PromotedByRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotedByRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotedByRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotedByRef value)  $default,){
final _that = this;
switch (_that) {
case _PromotedByRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotedByRef value)?  $default,){
final _that = this;
switch (_that) {
case _PromotedByRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotedByRef() when $default != null:
return $default(_that.username);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? username)  $default,) {final _that = this;
switch (_that) {
case _PromotedByRef():
return $default(_that.username);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? username)?  $default,) {final _that = this;
switch (_that) {
case _PromotedByRef() when $default != null:
return $default(_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotedByRef implements PromotedByRef {
  const _PromotedByRef({this.username});
  factory _PromotedByRef.fromJson(Map<String, dynamic> json) => _$PromotedByRefFromJson(json);

@override final  String? username;

/// Create a copy of PromotedByRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotedByRefCopyWith<_PromotedByRef> get copyWith => __$PromotedByRefCopyWithImpl<_PromotedByRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotedByRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotedByRef&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,username);
}

@override
String toString() {
    return 'PromotedByRef(username: $username)';
}


}

/// @nodoc
abstract mixin class _$PromotedByRefCopyWith<$Res> implements $PromotedByRefCopyWith<$Res> {
  factory _$PromotedByRefCopyWith(_PromotedByRef value, $Res Function(_PromotedByRef) _then) = __$PromotedByRefCopyWithImpl;
@override @useResult
$Res call({
 String? username
});




}
/// @nodoc
class __$PromotedByRefCopyWithImpl<$Res>
    implements _$PromotedByRefCopyWith<$Res> {
  __$PromotedByRefCopyWithImpl(this._self, this._then);

  final _PromotedByRef _self;
  final $Res Function(_PromotedByRef) _then;

/// Create a copy of PromotedByRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,}) {
  return _then(_PromotedByRef(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TransportAssignment {

 TransportRoute get route; TransportStop? get stop; TransportBus? get bus; TransportDriver? get driver;
/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportAssignmentCopyWith<TransportAssignment> get copyWith => _$TransportAssignmentCopyWithImpl<TransportAssignment>(this as TransportAssignment, _$identity);

  /// Serializes this TransportAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportAssignment&&(identical(other.route, _this.route) || other.route == _this.route)&&(identical(other.stop, _this.stop) || other.stop == _this.stop)&&(identical(other.bus, _this.bus) || other.bus == _this.bus)&&(identical(other.driver, _this.driver) || other.driver == _this.driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportAssignment;
  return Object.hash(runtimeType,_this.route,_this.stop,_this.bus,_this.driver);
}

@override
String toString() {
  final _this = this as TransportAssignment;
  return 'TransportAssignment(route: ${_this.route}, stop: ${_this.stop}, bus: ${_this.bus}, driver: ${_this.driver})';
}


}

/// @nodoc
abstract mixin class $TransportAssignmentCopyWith<$Res>  {
  factory $TransportAssignmentCopyWith(TransportAssignment value, $Res Function(TransportAssignment) _then) = _$TransportAssignmentCopyWithImpl;
@useResult
$Res call({
 TransportRoute route, TransportStop? stop, TransportBus? bus, TransportDriver? driver
});


$TransportRouteCopyWith<$Res> get route;$TransportStopCopyWith<$Res>? get stop;$TransportBusCopyWith<$Res>? get bus;$TransportDriverCopyWith<$Res>? get driver;

}
/// @nodoc
class _$TransportAssignmentCopyWithImpl<$Res>
    implements $TransportAssignmentCopyWith<$Res> {
  _$TransportAssignmentCopyWithImpl(this._self, this._then);

  final TransportAssignment _self;
  final $Res Function(TransportAssignment) _then;

/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? route = null,Object? stop = freezed,Object? bus = freezed,Object? driver = freezed,}) {
  return _then(TransportAssignment(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TransportRoute,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as TransportStop?,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as TransportBus?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as TransportDriver?,
  ));
}
/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportRouteCopyWith<$Res> get route {
  
  return $TransportRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $TransportStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportBusCopyWith<$Res>? get bus {
    if (_self.bus == null) {
    return null;
  }

  return $TransportBusCopyWith<$Res>(_self.bus!, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportDriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $TransportDriverCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransportAssignment].
extension TransportAssignmentPatterns on TransportAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportAssignment value)  $default,){
final _that = this;
switch (_that) {
case _TransportAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _TransportAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransportRoute route,  TransportStop? stop,  TransportBus? bus,  TransportDriver? driver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportAssignment() when $default != null:
return $default(_that.route,_that.stop,_that.bus,_that.driver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransportRoute route,  TransportStop? stop,  TransportBus? bus,  TransportDriver? driver)  $default,) {final _that = this;
switch (_that) {
case _TransportAssignment():
return $default(_that.route,_that.stop,_that.bus,_that.driver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransportRoute route,  TransportStop? stop,  TransportBus? bus,  TransportDriver? driver)?  $default,) {final _that = this;
switch (_that) {
case _TransportAssignment() when $default != null:
return $default(_that.route,_that.stop,_that.bus,_that.driver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportAssignment implements TransportAssignment {
  const _TransportAssignment({required this.route, this.stop, this.bus, this.driver});
  factory _TransportAssignment.fromJson(Map<String, dynamic> json) => _$TransportAssignmentFromJson(json);

@override final  TransportRoute route;
@override final  TransportStop? stop;
@override final  TransportBus? bus;
@override final  TransportDriver? driver;

/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportAssignmentCopyWith<_TransportAssignment> get copyWith => __$TransportAssignmentCopyWithImpl<_TransportAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportAssignment&&(identical(other.route, route) || other.route == route)&&(identical(other.stop, stop) || other.stop == stop)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,route,stop,bus,driver);
}

@override
String toString() {
    return 'TransportAssignment(route: $route, stop: $stop, bus: $bus, driver: $driver)';
}


}

/// @nodoc
abstract mixin class _$TransportAssignmentCopyWith<$Res> implements $TransportAssignmentCopyWith<$Res> {
  factory _$TransportAssignmentCopyWith(_TransportAssignment value, $Res Function(_TransportAssignment) _then) = __$TransportAssignmentCopyWithImpl;
@override @useResult
$Res call({
 TransportRoute route, TransportStop? stop, TransportBus? bus, TransportDriver? driver
});


@override $TransportRouteCopyWith<$Res> get route;@override $TransportStopCopyWith<$Res>? get stop;@override $TransportBusCopyWith<$Res>? get bus;@override $TransportDriverCopyWith<$Res>? get driver;

}
/// @nodoc
class __$TransportAssignmentCopyWithImpl<$Res>
    implements _$TransportAssignmentCopyWith<$Res> {
  __$TransportAssignmentCopyWithImpl(this._self, this._then);

  final _TransportAssignment _self;
  final $Res Function(_TransportAssignment) _then;

/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? route = null,Object? stop = freezed,Object? bus = freezed,Object? driver = freezed,}) {
  return _then(_TransportAssignment(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TransportRoute,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as TransportStop?,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as TransportBus?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as TransportDriver?,
  ));
}

/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportRouteCopyWith<$Res> get route {
  
  return $TransportRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $TransportStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportBusCopyWith<$Res>? get bus {
    if (_self.bus == null) {
    return null;
  }

  return $TransportBusCopyWith<$Res>(_self.bus!, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of TransportAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportDriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $TransportDriverCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// @nodoc
mixin _$TransportRoute {

@JsonKey(name: 'route_name') String get routeName;
/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportRouteCopyWith<TransportRoute> get copyWith => _$TransportRouteCopyWithImpl<TransportRoute>(this as TransportRoute, _$identity);

  /// Serializes this TransportRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportRoute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportRoute&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportRoute;
  return Object.hash(runtimeType,_this.routeName);
}

@override
String toString() {
  final _this = this as TransportRoute;
  return 'TransportRoute(routeName: ${_this.routeName})';
}


}

/// @nodoc
abstract mixin class $TransportRouteCopyWith<$Res>  {
  factory $TransportRouteCopyWith(TransportRoute value, $Res Function(TransportRoute) _then) = _$TransportRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_name') String routeName
});




}
/// @nodoc
class _$TransportRouteCopyWithImpl<$Res>
    implements $TransportRouteCopyWith<$Res> {
  _$TransportRouteCopyWithImpl(this._self, this._then);

  final TransportRoute _self;
  final $Res Function(TransportRoute) _then;

/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeName = null,}) {
  return _then(TransportRoute(
routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportRoute].
extension TransportRoutePatterns on TransportRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportRoute value)  $default,){
final _that = this;
switch (_that) {
case _TransportRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportRoute value)?  $default,){
final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_name')  String routeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
return $default(_that.routeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_name')  String routeName)  $default,) {final _that = this;
switch (_that) {
case _TransportRoute():
return $default(_that.routeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_name')  String routeName)?  $default,) {final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
return $default(_that.routeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportRoute implements TransportRoute {
  const _TransportRoute({@JsonKey(name: 'route_name') required this.routeName});
  factory _TransportRoute.fromJson(Map<String, dynamic> json) => _$TransportRouteFromJson(json);

@override@JsonKey(name: 'route_name') final  String routeName;

/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportRouteCopyWith<_TransportRoute> get copyWith => __$TransportRouteCopyWithImpl<_TransportRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportRouteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportRoute&&(identical(other.routeName, routeName) || other.routeName == routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeName);
}

@override
String toString() {
    return 'TransportRoute(routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class _$TransportRouteCopyWith<$Res> implements $TransportRouteCopyWith<$Res> {
  factory _$TransportRouteCopyWith(_TransportRoute value, $Res Function(_TransportRoute) _then) = __$TransportRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_name') String routeName
});




}
/// @nodoc
class __$TransportRouteCopyWithImpl<$Res>
    implements _$TransportRouteCopyWith<$Res> {
  __$TransportRouteCopyWithImpl(this._self, this._then);

  final _TransportRoute _self;
  final $Res Function(_TransportRoute) _then;

/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeName = null,}) {
  return _then(_TransportRoute(
routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TransportStop {

@JsonKey(name: 'stop_name') String? get stopName;@JsonKey(name: 'pickup_time') DateTime? get pickupTime;@JsonKey(name: 'drop_time') DateTime? get dropTime;
/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportStopCopyWith<TransportStop> get copyWith => _$TransportStopCopyWithImpl<TransportStop>(this as TransportStop, _$identity);

  /// Serializes this TransportStop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportStop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportStop&&(identical(other.stopName, _this.stopName) || other.stopName == _this.stopName)&&(identical(other.pickupTime, _this.pickupTime) || other.pickupTime == _this.pickupTime)&&(identical(other.dropTime, _this.dropTime) || other.dropTime == _this.dropTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportStop;
  return Object.hash(runtimeType,_this.stopName,_this.pickupTime,_this.dropTime);
}

@override
String toString() {
  final _this = this as TransportStop;
  return 'TransportStop(stopName: ${_this.stopName}, pickupTime: ${_this.pickupTime}, dropTime: ${_this.dropTime})';
}


}

/// @nodoc
abstract mixin class $TransportStopCopyWith<$Res>  {
  factory $TransportStopCopyWith(TransportStop value, $Res Function(TransportStop) _then) = _$TransportStopCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'stop_name') String? stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime
});




}
/// @nodoc
class _$TransportStopCopyWithImpl<$Res>
    implements $TransportStopCopyWith<$Res> {
  _$TransportStopCopyWithImpl(this._self, this._then);

  final TransportStop _self;
  final $Res Function(TransportStop) _then;

/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stopName = freezed,Object? pickupTime = freezed,Object? dropTime = freezed,}) {
  return _then(TransportStop(
stopName: freezed == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String?,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportStop].
extension TransportStopPatterns on TransportStop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportStop value)  $default,){
final _that = this;
switch (_that) {
case _TransportStop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportStop value)?  $default,){
final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_name')  String? stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
return $default(_that.stopName,_that.pickupTime,_that.dropTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_name')  String? stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime)  $default,) {final _that = this;
switch (_that) {
case _TransportStop():
return $default(_that.stopName,_that.pickupTime,_that.dropTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'stop_name')  String? stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime)?  $default,) {final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
return $default(_that.stopName,_that.pickupTime,_that.dropTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportStop implements TransportStop {
  const _TransportStop({@JsonKey(name: 'stop_name') this.stopName, @JsonKey(name: 'pickup_time') this.pickupTime, @JsonKey(name: 'drop_time') this.dropTime});
  factory _TransportStop.fromJson(Map<String, dynamic> json) => _$TransportStopFromJson(json);

@override@JsonKey(name: 'stop_name') final  String? stopName;
@override@JsonKey(name: 'pickup_time') final  DateTime? pickupTime;
@override@JsonKey(name: 'drop_time') final  DateTime? dropTime;

/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportStopCopyWith<_TransportStop> get copyWith => __$TransportStopCopyWithImpl<_TransportStop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportStopToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportStop&&(identical(other.stopName, stopName) || other.stopName == stopName)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.dropTime, dropTime) || other.dropTime == dropTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,stopName,pickupTime,dropTime);
}

@override
String toString() {
    return 'TransportStop(stopName: $stopName, pickupTime: $pickupTime, dropTime: $dropTime)';
}


}

/// @nodoc
abstract mixin class _$TransportStopCopyWith<$Res> implements $TransportStopCopyWith<$Res> {
  factory _$TransportStopCopyWith(_TransportStop value, $Res Function(_TransportStop) _then) = __$TransportStopCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'stop_name') String? stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime
});




}
/// @nodoc
class __$TransportStopCopyWithImpl<$Res>
    implements _$TransportStopCopyWith<$Res> {
  __$TransportStopCopyWithImpl(this._self, this._then);

  final _TransportStop _self;
  final $Res Function(_TransportStop) _then;

/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stopName = freezed,Object? pickupTime = freezed,Object? dropTime = freezed,}) {
  return _then(_TransportStop(
stopName: freezed == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String?,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$TransportBus {

@JsonKey(name: 'bus_number') String? get busNumber;
/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportBusCopyWith<TransportBus> get copyWith => _$TransportBusCopyWithImpl<TransportBus>(this as TransportBus, _$identity);

  /// Serializes this TransportBus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportBus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportBus&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportBus;
  return Object.hash(runtimeType,_this.busNumber);
}

@override
String toString() {
  final _this = this as TransportBus;
  return 'TransportBus(busNumber: ${_this.busNumber})';
}


}

/// @nodoc
abstract mixin class $TransportBusCopyWith<$Res>  {
  factory $TransportBusCopyWith(TransportBus value, $Res Function(TransportBus) _then) = _$TransportBusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bus_number') String? busNumber
});




}
/// @nodoc
class _$TransportBusCopyWithImpl<$Res>
    implements $TransportBusCopyWith<$Res> {
  _$TransportBusCopyWithImpl(this._self, this._then);

  final TransportBus _self;
  final $Res Function(TransportBus) _then;

/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busNumber = freezed,}) {
  return _then(TransportBus(
busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportBus].
extension TransportBusPatterns on TransportBus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportBus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportBus value)  $default,){
final _that = this;
switch (_that) {
case _TransportBus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportBus value)?  $default,){
final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_number')  String? busNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
return $default(_that.busNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_number')  String? busNumber)  $default,) {final _that = this;
switch (_that) {
case _TransportBus():
return $default(_that.busNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bus_number')  String? busNumber)?  $default,) {final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
return $default(_that.busNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportBus implements TransportBus {
  const _TransportBus({@JsonKey(name: 'bus_number') this.busNumber});
  factory _TransportBus.fromJson(Map<String, dynamic> json) => _$TransportBusFromJson(json);

@override@JsonKey(name: 'bus_number') final  String? busNumber;

/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportBusCopyWith<_TransportBus> get copyWith => __$TransportBusCopyWithImpl<_TransportBus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportBusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportBus&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,busNumber);
}

@override
String toString() {
    return 'TransportBus(busNumber: $busNumber)';
}


}

/// @nodoc
abstract mixin class _$TransportBusCopyWith<$Res> implements $TransportBusCopyWith<$Res> {
  factory _$TransportBusCopyWith(_TransportBus value, $Res Function(_TransportBus) _then) = __$TransportBusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bus_number') String? busNumber
});




}
/// @nodoc
class __$TransportBusCopyWithImpl<$Res>
    implements _$TransportBusCopyWith<$Res> {
  __$TransportBusCopyWithImpl(this._self, this._then);

  final _TransportBus _self;
  final $Res Function(_TransportBus) _then;

/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busNumber = freezed,}) {
  return _then(_TransportBus(
busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TransportDriver {

 String? get name; String? get phone;@JsonKey(name: 'photo_url') String? get photoUrl;
/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportDriverCopyWith<TransportDriver> get copyWith => _$TransportDriverCopyWithImpl<TransportDriver>(this as TransportDriver, _$identity);

  /// Serializes this TransportDriver to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportDriver;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportDriver&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportDriver;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.photoUrl);
}

@override
String toString() {
  final _this = this as TransportDriver;
  return 'TransportDriver(name: ${_this.name}, phone: ${_this.phone}, photoUrl: ${_this.photoUrl})';
}


}

/// @nodoc
abstract mixin class $TransportDriverCopyWith<$Res>  {
  factory $TransportDriverCopyWith(TransportDriver value, $Res Function(TransportDriver) _then) = _$TransportDriverCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class _$TransportDriverCopyWithImpl<$Res>
    implements $TransportDriverCopyWith<$Res> {
  _$TransportDriverCopyWithImpl(this._self, this._then);

  final TransportDriver _self;
  final $Res Function(TransportDriver) _then;

/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? photoUrl = freezed,}) {
  return _then(TransportDriver(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportDriver].
extension TransportDriverPatterns on TransportDriver {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportDriver value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportDriver value)  $default,){
final _that = this;
switch (_that) {
case _TransportDriver():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportDriver value)?  $default,){
final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
return $default(_that.name,_that.phone,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone, @JsonKey(name: 'photo_url')  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _TransportDriver():
return $default(_that.name,_that.phone,_that.photoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
return $default(_that.name,_that.phone,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportDriver implements TransportDriver {
  const _TransportDriver({this.name, this.phone, @JsonKey(name: 'photo_url') this.photoUrl});
  factory _TransportDriver.fromJson(Map<String, dynamic> json) => _$TransportDriverFromJson(json);

@override final  String? name;
@override final  String? phone;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;

/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportDriverCopyWith<_TransportDriver> get copyWith => __$TransportDriverCopyWithImpl<_TransportDriver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportDriverToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportDriver&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,photoUrl);
}

@override
String toString() {
    return 'TransportDriver(name: $name, phone: $phone, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$TransportDriverCopyWith<$Res> implements $TransportDriverCopyWith<$Res> {
  factory _$TransportDriverCopyWith(_TransportDriver value, $Res Function(_TransportDriver) _then) = __$TransportDriverCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class __$TransportDriverCopyWithImpl<$Res>
    implements _$TransportDriverCopyWith<$Res> {
  __$TransportDriverCopyWithImpl(this._self, this._then);

  final _TransportDriver _self;
  final $Res Function(_TransportDriver) _then;

/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? photoUrl = freezed,}) {
  return _then(_TransportDriver(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
