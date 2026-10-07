// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_students.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminStudentPage {

 int get total; int get page; int get limit; List<AdminStudentRow> get data;
/// Create a copy of AdminStudentPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentPageCopyWith<AdminStudentPage> get copyWith => _$AdminStudentPageCopyWithImpl<AdminStudentPage>(this as AdminStudentPage, _$identity);

  /// Serializes this AdminStudentPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdminStudentPage;
  return 'AdminStudentPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdminStudentPageCopyWith<$Res>  {
  factory $AdminStudentPageCopyWith(AdminStudentPage value, $Res Function(AdminStudentPage) _then) = _$AdminStudentPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdminStudentRow> data
});




}
/// @nodoc
class _$AdminStudentPageCopyWithImpl<$Res>
    implements $AdminStudentPageCopyWith<$Res> {
  _$AdminStudentPageCopyWithImpl(this._self, this._then);

  final AdminStudentPage _self;
  final $Res Function(AdminStudentPage) _then;

/// Create a copy of AdminStudentPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdminStudentPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdminStudentRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentPage].
extension AdminStudentPagePatterns on AdminStudentPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentPage value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentPage value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminStudentRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminStudentRow> data)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentPage():
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdminStudentRow> data)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentPage implements AdminStudentPage {
  const _AdminStudentPage({this.total = 0, this.page = 1, this.limit = 20,  List<AdminStudentRow> data = const <AdminStudentRow>[]}): _data = data;
  factory _AdminStudentPage.fromJson(Map<String, dynamic> json) => _$AdminStudentPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdminStudentRow> _data;
@override@JsonKey() List<AdminStudentRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdminStudentPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentPageCopyWith<_AdminStudentPage> get copyWith => __$AdminStudentPageCopyWithImpl<_AdminStudentPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdminStudentPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentPageCopyWith<$Res> implements $AdminStudentPageCopyWith<$Res> {
  factory _$AdminStudentPageCopyWith(_AdminStudentPage value, $Res Function(_AdminStudentPage) _then) = __$AdminStudentPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdminStudentRow> data
});




}
/// @nodoc
class __$AdminStudentPageCopyWithImpl<$Res>
    implements _$AdminStudentPageCopyWith<$Res> {
  __$AdminStudentPageCopyWithImpl(this._self, this._then);

  final _AdminStudentPage _self;
  final $Res Function(_AdminStudentPage) _then;

/// Create a copy of AdminStudentPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdminStudentPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdminStudentRow>,
  ));
}


}


/// @nodoc
mixin _$AdminStudentRow {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String get admissionNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate;@JsonKey(name: 'student_status') String? get studentStatus;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'current_section') SectionRef? get currentSection;@JsonKey(name: 'applicants') AdminStudentApplicant? get applicant;
/// Create a copy of AdminStudentRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentRowCopyWith<AdminStudentRow> get copyWith => _$AdminStudentRowCopyWithImpl<AdminStudentRow>(this as AdminStudentRow, _$identity);

  /// Serializes this AdminStudentRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentRow&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentRow;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.admissionDate,_this.studentStatus,_this.rollNo,_this.currentClass,_this.currentSection,_this.applicant);
}

@override
String toString() {
  final _this = this as AdminStudentRow;
  return 'AdminStudentRow(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, admissionDate: ${_this.admissionDate}, studentStatus: ${_this.studentStatus}, rollNo: ${_this.rollNo}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection}, applicant: ${_this.applicant})';
}


}

/// @nodoc
abstract mixin class $AdminStudentRowCopyWith<$Res>  {
  factory $AdminStudentRowCopyWith(AdminStudentRow value, $Res Function(AdminStudentRow) _then) = _$AdminStudentRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'applicants') AdminStudentApplicant? applicant
});


$ClassRefCopyWith<$Res>? get currentClass;$SectionRefCopyWith<$Res>? get currentSection;$AdminStudentApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class _$AdminStudentRowCopyWithImpl<$Res>
    implements $AdminStudentRowCopyWith<$Res> {
  _$AdminStudentRowCopyWithImpl(this._self, this._then);

  final AdminStudentRow _self;
  final $Res Function(AdminStudentRow) _then;

/// Create a copy of AdminStudentRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = null,Object? admissionDate = freezed,Object? studentStatus = freezed,Object? rollNo = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicant = freezed,}) {
  return _then(AdminStudentRow(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdminStudentApplicant?,
  ));
}
/// Create a copy of AdminStudentRow
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
}/// Create a copy of AdminStudentRow
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
}/// Create a copy of AdminStudentRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdminStudentApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentRow].
extension AdminStudentRowPatterns on AdminStudentRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentRow value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  AdminStudentApplicant? applicant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentRow() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.studentStatus,_that.rollNo,_that.currentClass,_that.currentSection,_that.applicant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  AdminStudentApplicant? applicant)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentRow():
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.studentStatus,_that.rollNo,_that.currentClass,_that.currentSection,_that.applicant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  AdminStudentApplicant? applicant)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentRow() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.studentStatus,_that.rollNo,_that.currentClass,_that.currentSection,_that.applicant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentRow implements AdminStudentRow {
  const _AdminStudentRow({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') required this.admissionNo, @JsonKey(name: 'admission_date') this.admissionDate, @JsonKey(name: 'student_status') this.studentStatus, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection, @JsonKey(name: 'applicants') this.applicant});
  factory _AdminStudentRow.fromJson(Map<String, dynamic> json) => _$AdminStudentRowFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String admissionNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  SectionRef? currentSection;
@override@JsonKey(name: 'applicants') final  AdminStudentApplicant? applicant;

/// Create a copy of AdminStudentRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentRowCopyWith<_AdminStudentRow> get copyWith => __$AdminStudentRowCopyWithImpl<_AdminStudentRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentRow&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection)&&(identical(other.applicant, applicant) || other.applicant == applicant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,admissionDate,studentStatus,rollNo,currentClass,currentSection,applicant);
}

@override
String toString() {
    return 'AdminStudentRow(studentId: $studentId, admissionNo: $admissionNo, admissionDate: $admissionDate, studentStatus: $studentStatus, rollNo: $rollNo, currentClass: $currentClass, currentSection: $currentSection, applicant: $applicant)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentRowCopyWith<$Res> implements $AdminStudentRowCopyWith<$Res> {
  factory _$AdminStudentRowCopyWith(_AdminStudentRow value, $Res Function(_AdminStudentRow) _then) = __$AdminStudentRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'applicants') AdminStudentApplicant? applicant
});


@override $ClassRefCopyWith<$Res>? get currentClass;@override $SectionRefCopyWith<$Res>? get currentSection;@override $AdminStudentApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class __$AdminStudentRowCopyWithImpl<$Res>
    implements _$AdminStudentRowCopyWith<$Res> {
  __$AdminStudentRowCopyWithImpl(this._self, this._then);

  final _AdminStudentRow _self;
  final $Res Function(_AdminStudentRow) _then;

/// Create a copy of AdminStudentRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = null,Object? admissionDate = freezed,Object? studentStatus = freezed,Object? rollNo = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicant = freezed,}) {
  return _then(_AdminStudentRow(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdminStudentApplicant?,
  ));
}

/// Create a copy of AdminStudentRow
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
}/// Create a copy of AdminStudentRow
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
}/// Create a copy of AdminStudentRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdminStudentApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentApplicant {

@JsonKey(name: 'applicant_id') String? get applicantId;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; DateTime? get dob;@JsonKey(name: 'blood_group') String? get bloodGroup;@JsonKey(name: 'religion_id') String? get religionId;@JsonKey(name: 'category_id') String? get categoryId; String? get nationality;@JsonKey(name: 'aadhaar_no') String? get aadhaarNo;@JsonKey(name: 'birth_certificate_no') String? get birthCertificateNo;@JsonKey(name: 'mother_tongue') String? get motherTongue;@JsonKey(name: 'photo_url') String? get photoUrl; String? get caste;@JsonKey(name: 'contact_no') String? get contactNo;@JsonKey(name: 'email_id') String? get emailId;@JsonKey(name: 'categories') CategoryRef? get category;@JsonKey(name: 'religions') ReligionRef? get religion;
/// Create a copy of AdminStudentApplicant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentApplicantCopyWith<AdminStudentApplicant> get copyWith => _$AdminStudentApplicantCopyWithImpl<AdminStudentApplicant>(this as AdminStudentApplicant, _$identity);

  /// Serializes this AdminStudentApplicant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentApplicant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentApplicant&&(identical(other.applicantId, _this.applicantId) || other.applicantId == _this.applicantId)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.bloodGroup, _this.bloodGroup) || other.bloodGroup == _this.bloodGroup)&&(identical(other.religionId, _this.religionId) || other.religionId == _this.religionId)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.nationality, _this.nationality) || other.nationality == _this.nationality)&&(identical(other.aadhaarNo, _this.aadhaarNo) || other.aadhaarNo == _this.aadhaarNo)&&(identical(other.birthCertificateNo, _this.birthCertificateNo) || other.birthCertificateNo == _this.birthCertificateNo)&&(identical(other.motherTongue, _this.motherTongue) || other.motherTongue == _this.motherTongue)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.caste, _this.caste) || other.caste == _this.caste)&&(identical(other.contactNo, _this.contactNo) || other.contactNo == _this.contactNo)&&(identical(other.emailId, _this.emailId) || other.emailId == _this.emailId)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.religion, _this.religion) || other.religion == _this.religion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentApplicant;
  return Object.hashAll([runtimeType,_this.applicantId,_this.firstName,_this.middleName,_this.lastName,_this.gender,_this.dob,_this.bloodGroup,_this.religionId,_this.categoryId,_this.nationality,_this.aadhaarNo,_this.birthCertificateNo,_this.motherTongue,_this.photoUrl,_this.caste,_this.contactNo,_this.emailId,_this.category,_this.religion]);
}

@override
String toString() {
  final _this = this as AdminStudentApplicant;
  return 'AdminStudentApplicant(applicantId: ${_this.applicantId}, firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, gender: ${_this.gender}, dob: ${_this.dob}, bloodGroup: ${_this.bloodGroup}, religionId: ${_this.religionId}, categoryId: ${_this.categoryId}, nationality: ${_this.nationality}, aadhaarNo: ${_this.aadhaarNo}, birthCertificateNo: ${_this.birthCertificateNo}, motherTongue: ${_this.motherTongue}, photoUrl: ${_this.photoUrl}, caste: ${_this.caste}, contactNo: ${_this.contactNo}, emailId: ${_this.emailId}, category: ${_this.category}, religion: ${_this.religion})';
}


}

/// @nodoc
abstract mixin class $AdminStudentApplicantCopyWith<$Res>  {
  factory $AdminStudentApplicantCopyWith(AdminStudentApplicant value, $Res Function(AdminStudentApplicant) _then) = _$AdminStudentApplicantCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'applicant_id') String? applicantId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'religion_id') String? religionId,@JsonKey(name: 'category_id') String? categoryId, String? nationality,@JsonKey(name: 'aadhaar_no') String? aadhaarNo,@JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'photo_url') String? photoUrl, String? caste,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'categories') CategoryRef? category,@JsonKey(name: 'religions') ReligionRef? religion
});


$CategoryRefCopyWith<$Res>? get category;$ReligionRefCopyWith<$Res>? get religion;

}
/// @nodoc
class _$AdminStudentApplicantCopyWithImpl<$Res>
    implements $AdminStudentApplicantCopyWith<$Res> {
  _$AdminStudentApplicantCopyWithImpl(this._self, this._then);

  final AdminStudentApplicant _self;
  final $Res Function(AdminStudentApplicant) _then;

/// Create a copy of AdminStudentApplicant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicantId = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? religionId = freezed,Object? categoryId = freezed,Object? nationality = freezed,Object? aadhaarNo = freezed,Object? birthCertificateNo = freezed,Object? motherTongue = freezed,Object? photoUrl = freezed,Object? caste = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? category = freezed,Object? religion = freezed,}) {
  return _then(AdminStudentApplicant(
applicantId: freezed == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,religionId: freezed == religionId ? _self.religionId : religionId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,birthCertificateNo: freezed == birthCertificateNo ? _self.birthCertificateNo : birthCertificateNo // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryRef?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as ReligionRef?,
  ));
}
/// Create a copy of AdminStudentApplicant
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
}/// Create a copy of AdminStudentApplicant
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


/// Adds pattern-matching-related methods to [AdminStudentApplicant].
extension AdminStudentApplicantPatterns on AdminStudentApplicant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentApplicant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentApplicant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentApplicant value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentApplicant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentApplicant value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentApplicant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'religion_id')  String? religionId, @JsonKey(name: 'category_id')  String? categoryId,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'photo_url')  String? photoUrl,  String? caste, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'categories')  CategoryRef? category, @JsonKey(name: 'religions')  ReligionRef? religion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentApplicant() when $default != null:
return $default(_that.applicantId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.religionId,_that.categoryId,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.motherTongue,_that.photoUrl,_that.caste,_that.contactNo,_that.emailId,_that.category,_that.religion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'religion_id')  String? religionId, @JsonKey(name: 'category_id')  String? categoryId,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'photo_url')  String? photoUrl,  String? caste, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'categories')  CategoryRef? category, @JsonKey(name: 'religions')  ReligionRef? religion)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentApplicant():
return $default(_that.applicantId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.religionId,_that.categoryId,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.motherTongue,_that.photoUrl,_that.caste,_that.contactNo,_that.emailId,_that.category,_that.religion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'religion_id')  String? religionId, @JsonKey(name: 'category_id')  String? categoryId,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'photo_url')  String? photoUrl,  String? caste, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'categories')  CategoryRef? category, @JsonKey(name: 'religions')  ReligionRef? religion)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentApplicant() when $default != null:
return $default(_that.applicantId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.religionId,_that.categoryId,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.motherTongue,_that.photoUrl,_that.caste,_that.contactNo,_that.emailId,_that.category,_that.religion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentApplicant implements AdminStudentApplicant {
  const _AdminStudentApplicant({@JsonKey(name: 'applicant_id') this.applicantId, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.dob, @JsonKey(name: 'blood_group') this.bloodGroup, @JsonKey(name: 'religion_id') this.religionId, @JsonKey(name: 'category_id') this.categoryId, this.nationality, @JsonKey(name: 'aadhaar_no') this.aadhaarNo, @JsonKey(name: 'birth_certificate_no') this.birthCertificateNo, @JsonKey(name: 'mother_tongue') this.motherTongue, @JsonKey(name: 'photo_url') this.photoUrl, this.caste, @JsonKey(name: 'contact_no') this.contactNo, @JsonKey(name: 'email_id') this.emailId, @JsonKey(name: 'categories') this.category, @JsonKey(name: 'religions') this.religion});
  factory _AdminStudentApplicant.fromJson(Map<String, dynamic> json) => _$AdminStudentApplicantFromJson(json);

@override@JsonKey(name: 'applicant_id') final  String? applicantId;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override@JsonKey(name: 'religion_id') final  String? religionId;
@override@JsonKey(name: 'category_id') final  String? categoryId;
@override final  String? nationality;
@override@JsonKey(name: 'aadhaar_no') final  String? aadhaarNo;
@override@JsonKey(name: 'birth_certificate_no') final  String? birthCertificateNo;
@override@JsonKey(name: 'mother_tongue') final  String? motherTongue;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override final  String? caste;
@override@JsonKey(name: 'contact_no') final  String? contactNo;
@override@JsonKey(name: 'email_id') final  String? emailId;
@override@JsonKey(name: 'categories') final  CategoryRef? category;
@override@JsonKey(name: 'religions') final  ReligionRef? religion;

/// Create a copy of AdminStudentApplicant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentApplicantCopyWith<_AdminStudentApplicant> get copyWith => __$AdminStudentApplicantCopyWithImpl<_AdminStudentApplicant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentApplicantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentApplicant&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.religionId, religionId) || other.religionId == religionId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.aadhaarNo, aadhaarNo) || other.aadhaarNo == aadhaarNo)&&(identical(other.birthCertificateNo, birthCertificateNo) || other.birthCertificateNo == birthCertificateNo)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.category, category) || other.category == category)&&(identical(other.religion, religion) || other.religion == religion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,applicantId,firstName,middleName,lastName,gender,dob,bloodGroup,religionId,categoryId,nationality,aadhaarNo,birthCertificateNo,motherTongue,photoUrl,caste,contactNo,emailId,category,religion]);
}

@override
String toString() {
    return 'AdminStudentApplicant(applicantId: $applicantId, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, dob: $dob, bloodGroup: $bloodGroup, religionId: $religionId, categoryId: $categoryId, nationality: $nationality, aadhaarNo: $aadhaarNo, birthCertificateNo: $birthCertificateNo, motherTongue: $motherTongue, photoUrl: $photoUrl, caste: $caste, contactNo: $contactNo, emailId: $emailId, category: $category, religion: $religion)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentApplicantCopyWith<$Res> implements $AdminStudentApplicantCopyWith<$Res> {
  factory _$AdminStudentApplicantCopyWith(_AdminStudentApplicant value, $Res Function(_AdminStudentApplicant) _then) = __$AdminStudentApplicantCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'applicant_id') String? applicantId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'religion_id') String? religionId,@JsonKey(name: 'category_id') String? categoryId, String? nationality,@JsonKey(name: 'aadhaar_no') String? aadhaarNo,@JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'photo_url') String? photoUrl, String? caste,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'categories') CategoryRef? category,@JsonKey(name: 'religions') ReligionRef? religion
});


@override $CategoryRefCopyWith<$Res>? get category;@override $ReligionRefCopyWith<$Res>? get religion;

}
/// @nodoc
class __$AdminStudentApplicantCopyWithImpl<$Res>
    implements _$AdminStudentApplicantCopyWith<$Res> {
  __$AdminStudentApplicantCopyWithImpl(this._self, this._then);

  final _AdminStudentApplicant _self;
  final $Res Function(_AdminStudentApplicant) _then;

/// Create a copy of AdminStudentApplicant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicantId = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? religionId = freezed,Object? categoryId = freezed,Object? nationality = freezed,Object? aadhaarNo = freezed,Object? birthCertificateNo = freezed,Object? motherTongue = freezed,Object? photoUrl = freezed,Object? caste = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? category = freezed,Object? religion = freezed,}) {
  return _then(_AdminStudentApplicant(
applicantId: freezed == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,religionId: freezed == religionId ? _self.religionId : religionId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,birthCertificateNo: freezed == birthCertificateNo ? _self.birthCertificateNo : birthCertificateNo // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryRef?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as ReligionRef?,
  ));
}

/// Create a copy of AdminStudentApplicant
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
}/// Create a copy of AdminStudentApplicant
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
mixin _$AdminStudentDetail {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'application_id') String? get applicationId;@JsonKey(name: 'admission_no') String get admissionNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'student_status') String? get studentStatus; String? get remarks;@JsonKey(name: 'institutions') InstitutionRef? get institution;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'current_section') SectionRef? get currentSection;@JsonKey(name: 'applicants') AdminStudentApplicant? get applicant;@JsonKey(name: 'admission_applications') AdminStudentApplication? get application;@JsonKey(name: 'student_profile') AdminStudentProfileRow? get studentProfile;@JsonKey(name: 'student_addresses') List<StudentAddress> get addresses;@JsonKey(name: 'student_enrollments') List<AdminStudentEnrollment> get enrollments;@JsonKey(name: 'student_status_history') List<AdminStudentStatusChange> get statusHistory;@JsonKey(name: 'student_id_cards') List<IdCardSummary> get idCards;@JsonKey(name: 'student_accounts') List<AdminStudentAccountRef> get accounts;
/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentDetailCopyWith<AdminStudentDetail> get copyWith => _$AdminStudentDetailCopyWithImpl<AdminStudentDetail>(this as AdminStudentDetail, _$identity);

  /// Serializes this AdminStudentDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentDetail;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentDetail&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.institution, _this.institution) || other.institution == _this.institution)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant)&&(identical(other.application, _this.application) || other.application == _this.application)&&(identical(other.studentProfile, _this.studentProfile) || other.studentProfile == _this.studentProfile)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&const DeepCollectionEquality().equals(other.enrollments, _this.enrollments)&&const DeepCollectionEquality().equals(other.statusHistory, _this.statusHistory)&&const DeepCollectionEquality().equals(other.idCards, _this.idCards)&&const DeepCollectionEquality().equals(other.accounts, _this.accounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentDetail;
  return Object.hash(runtimeType,_this.studentId,_this.applicationId,_this.admissionNo,_this.admissionDate,_this.rollNo,_this.studentStatus,_this.remarks,_this.institution,_this.currentClass,_this.currentSection,_this.applicant,_this.application,_this.studentProfile,const DeepCollectionEquality().hash(_this.addresses),const DeepCollectionEquality().hash(_this.enrollments),const DeepCollectionEquality().hash(_this.statusHistory),const DeepCollectionEquality().hash(_this.idCards),const DeepCollectionEquality().hash(_this.accounts));
}

@override
String toString() {
  final _this = this as AdminStudentDetail;
  return 'AdminStudentDetail(studentId: ${_this.studentId}, applicationId: ${_this.applicationId}, admissionNo: ${_this.admissionNo}, admissionDate: ${_this.admissionDate}, rollNo: ${_this.rollNo}, studentStatus: ${_this.studentStatus}, remarks: ${_this.remarks}, institution: ${_this.institution}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection}, applicant: ${_this.applicant}, application: ${_this.application}, studentProfile: ${_this.studentProfile}, addresses: ${_this.addresses}, enrollments: ${_this.enrollments}, statusHistory: ${_this.statusHistory}, idCards: ${_this.idCards}, accounts: ${_this.accounts})';
}


}

/// @nodoc
abstract mixin class $AdminStudentDetailCopyWith<$Res>  {
  factory $AdminStudentDetailCopyWith(AdminStudentDetail value, $Res Function(AdminStudentDetail) _then) = _$AdminStudentDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'application_id') String? applicationId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'student_status') String? studentStatus, String? remarks,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'applicants') AdminStudentApplicant? applicant,@JsonKey(name: 'admission_applications') AdminStudentApplication? application,@JsonKey(name: 'student_profile') AdminStudentProfileRow? studentProfile,@JsonKey(name: 'student_addresses') List<StudentAddress> addresses,@JsonKey(name: 'student_enrollments') List<AdminStudentEnrollment> enrollments,@JsonKey(name: 'student_status_history') List<AdminStudentStatusChange> statusHistory,@JsonKey(name: 'student_id_cards') List<IdCardSummary> idCards,@JsonKey(name: 'student_accounts') List<AdminStudentAccountRef> accounts
});


$InstitutionRefCopyWith<$Res>? get institution;$ClassRefCopyWith<$Res>? get currentClass;$SectionRefCopyWith<$Res>? get currentSection;$AdminStudentApplicantCopyWith<$Res>? get applicant;$AdminStudentApplicationCopyWith<$Res>? get application;$AdminStudentProfileRowCopyWith<$Res>? get studentProfile;

}
/// @nodoc
class _$AdminStudentDetailCopyWithImpl<$Res>
    implements $AdminStudentDetailCopyWith<$Res> {
  _$AdminStudentDetailCopyWithImpl(this._self, this._then);

  final AdminStudentDetail _self;
  final $Res Function(AdminStudentDetail) _then;

/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? applicationId = freezed,Object? admissionNo = null,Object? admissionDate = freezed,Object? rollNo = freezed,Object? studentStatus = freezed,Object? remarks = freezed,Object? institution = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicant = freezed,Object? application = freezed,Object? studentProfile = freezed,Object? addresses = null,Object? enrollments = null,Object? statusHistory = null,Object? idCards = null,Object? accounts = null,}) {
  return _then(AdminStudentDetail(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdminStudentApplicant?,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as AdminStudentApplication?,studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as AdminStudentProfileRow?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<StudentAddress>,enrollments: null == enrollments ? _self.enrollments : enrollments // ignore: cast_nullable_to_non_nullable
as List<AdminStudentEnrollment>,statusHistory: null == statusHistory ? _self.statusHistory : statusHistory // ignore: cast_nullable_to_non_nullable
as List<AdminStudentStatusChange>,idCards: null == idCards ? _self.idCards : idCards // ignore: cast_nullable_to_non_nullable
as List<IdCardSummary>,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AdminStudentAccountRef>,
  ));
}
/// Create a copy of AdminStudentDetail
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
}/// Create a copy of AdminStudentDetail
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
}/// Create a copy of AdminStudentDetail
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
}/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdminStudentApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentApplicationCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $AdminStudentApplicationCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentProfileRowCopyWith<$Res>? get studentProfile {
    if (_self.studentProfile == null) {
    return null;
  }

  return $AdminStudentProfileRowCopyWith<$Res>(_self.studentProfile!, (value) {
    return _then(_self.copyWith(studentProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentDetail].
extension AdminStudentDetailPatterns on AdminStudentDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentDetail value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentDetail value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus,  String? remarks, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  AdminStudentApplicant? applicant, @JsonKey(name: 'admission_applications')  AdminStudentApplication? application, @JsonKey(name: 'student_profile')  AdminStudentProfileRow? studentProfile, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses, @JsonKey(name: 'student_enrollments')  List<AdminStudentEnrollment> enrollments, @JsonKey(name: 'student_status_history')  List<AdminStudentStatusChange> statusHistory, @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards, @JsonKey(name: 'student_accounts')  List<AdminStudentAccountRef> accounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentDetail() when $default != null:
return $default(_that.studentId,_that.applicationId,_that.admissionNo,_that.admissionDate,_that.rollNo,_that.studentStatus,_that.remarks,_that.institution,_that.currentClass,_that.currentSection,_that.applicant,_that.application,_that.studentProfile,_that.addresses,_that.enrollments,_that.statusHistory,_that.idCards,_that.accounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus,  String? remarks, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  AdminStudentApplicant? applicant, @JsonKey(name: 'admission_applications')  AdminStudentApplication? application, @JsonKey(name: 'student_profile')  AdminStudentProfileRow? studentProfile, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses, @JsonKey(name: 'student_enrollments')  List<AdminStudentEnrollment> enrollments, @JsonKey(name: 'student_status_history')  List<AdminStudentStatusChange> statusHistory, @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards, @JsonKey(name: 'student_accounts')  List<AdminStudentAccountRef> accounts)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentDetail():
return $default(_that.studentId,_that.applicationId,_that.admissionNo,_that.admissionDate,_that.rollNo,_that.studentStatus,_that.remarks,_that.institution,_that.currentClass,_that.currentSection,_that.applicant,_that.application,_that.studentProfile,_that.addresses,_that.enrollments,_that.statusHistory,_that.idCards,_that.accounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus,  String? remarks, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'applicants')  AdminStudentApplicant? applicant, @JsonKey(name: 'admission_applications')  AdminStudentApplication? application, @JsonKey(name: 'student_profile')  AdminStudentProfileRow? studentProfile, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses, @JsonKey(name: 'student_enrollments')  List<AdminStudentEnrollment> enrollments, @JsonKey(name: 'student_status_history')  List<AdminStudentStatusChange> statusHistory, @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards, @JsonKey(name: 'student_accounts')  List<AdminStudentAccountRef> accounts)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentDetail() when $default != null:
return $default(_that.studentId,_that.applicationId,_that.admissionNo,_that.admissionDate,_that.rollNo,_that.studentStatus,_that.remarks,_that.institution,_that.currentClass,_that.currentSection,_that.applicant,_that.application,_that.studentProfile,_that.addresses,_that.enrollments,_that.statusHistory,_that.idCards,_that.accounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentDetail implements AdminStudentDetail {
  const _AdminStudentDetail({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'application_id') this.applicationId, @JsonKey(name: 'admission_no') required this.admissionNo, @JsonKey(name: 'admission_date') this.admissionDate, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'student_status') this.studentStatus, this.remarks, @JsonKey(name: 'institutions') this.institution, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection, @JsonKey(name: 'applicants') this.applicant, @JsonKey(name: 'admission_applications') this.application, @JsonKey(name: 'student_profile') this.studentProfile, @JsonKey(name: 'student_addresses')  List<StudentAddress> addresses = const <StudentAddress>[], @JsonKey(name: 'student_enrollments')  List<AdminStudentEnrollment> enrollments = const <AdminStudentEnrollment>[], @JsonKey(name: 'student_status_history')  List<AdminStudentStatusChange> statusHistory = const <AdminStudentStatusChange>[], @JsonKey(name: 'student_id_cards')  List<IdCardSummary> idCards = const <IdCardSummary>[], @JsonKey(name: 'student_accounts')  List<AdminStudentAccountRef> accounts = const <AdminStudentAccountRef>[]}): _addresses = addresses,_enrollments = enrollments,_statusHistory = statusHistory,_idCards = idCards,_accounts = accounts;
  factory _AdminStudentDetail.fromJson(Map<String, dynamic> json) => _$AdminStudentDetailFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'application_id') final  String? applicationId;
@override@JsonKey(name: 'admission_no') final  String admissionNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override final  String? remarks;
@override@JsonKey(name: 'institutions') final  InstitutionRef? institution;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  SectionRef? currentSection;
@override@JsonKey(name: 'applicants') final  AdminStudentApplicant? applicant;
@override@JsonKey(name: 'admission_applications') final  AdminStudentApplication? application;
@override@JsonKey(name: 'student_profile') final  AdminStudentProfileRow? studentProfile;
 final  List<StudentAddress> _addresses;
@override@JsonKey(name: 'student_addresses') List<StudentAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  List<AdminStudentEnrollment> _enrollments;
@override@JsonKey(name: 'student_enrollments') List<AdminStudentEnrollment> get enrollments {
  if (_enrollments is EqualUnmodifiableListView) return _enrollments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enrollments);
}

 final  List<AdminStudentStatusChange> _statusHistory;
@override@JsonKey(name: 'student_status_history') List<AdminStudentStatusChange> get statusHistory {
  if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusHistory);
}

 final  List<IdCardSummary> _idCards;
@override@JsonKey(name: 'student_id_cards') List<IdCardSummary> get idCards {
  if (_idCards is EqualUnmodifiableListView) return _idCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idCards);
}

 final  List<AdminStudentAccountRef> _accounts;
@override@JsonKey(name: 'student_accounts') List<AdminStudentAccountRef> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}


/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentDetailCopyWith<_AdminStudentDetail> get copyWith => __$AdminStudentDetailCopyWithImpl<_AdminStudentDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentDetailToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentDetail&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.institution, institution) || other.institution == institution)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.application, application) || other.application == application)&&(identical(other.studentProfile, studentProfile) || other.studentProfile == studentProfile)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&const DeepCollectionEquality().equals(other.enrollments, _enrollments)&&const DeepCollectionEquality().equals(other.statusHistory, _statusHistory)&&const DeepCollectionEquality().equals(other.idCards, _idCards)&&const DeepCollectionEquality().equals(other.accounts, _accounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,applicationId,admissionNo,admissionDate,rollNo,studentStatus,remarks,institution,currentClass,currentSection,applicant,application,studentProfile,const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_enrollments),const DeepCollectionEquality().hash(_statusHistory),const DeepCollectionEquality().hash(_idCards),const DeepCollectionEquality().hash(_accounts));
}

@override
String toString() {
    return 'AdminStudentDetail(studentId: $studentId, applicationId: $applicationId, admissionNo: $admissionNo, admissionDate: $admissionDate, rollNo: $rollNo, studentStatus: $studentStatus, remarks: $remarks, institution: $institution, currentClass: $currentClass, currentSection: $currentSection, applicant: $applicant, application: $application, studentProfile: $studentProfile, addresses: $addresses, enrollments: $enrollments, statusHistory: $statusHistory, idCards: $idCards, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentDetailCopyWith<$Res> implements $AdminStudentDetailCopyWith<$Res> {
  factory _$AdminStudentDetailCopyWith(_AdminStudentDetail value, $Res Function(_AdminStudentDetail) _then) = __$AdminStudentDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'application_id') String? applicationId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'student_status') String? studentStatus, String? remarks,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'applicants') AdminStudentApplicant? applicant,@JsonKey(name: 'admission_applications') AdminStudentApplication? application,@JsonKey(name: 'student_profile') AdminStudentProfileRow? studentProfile,@JsonKey(name: 'student_addresses') List<StudentAddress> addresses,@JsonKey(name: 'student_enrollments') List<AdminStudentEnrollment> enrollments,@JsonKey(name: 'student_status_history') List<AdminStudentStatusChange> statusHistory,@JsonKey(name: 'student_id_cards') List<IdCardSummary> idCards,@JsonKey(name: 'student_accounts') List<AdminStudentAccountRef> accounts
});


@override $InstitutionRefCopyWith<$Res>? get institution;@override $ClassRefCopyWith<$Res>? get currentClass;@override $SectionRefCopyWith<$Res>? get currentSection;@override $AdminStudentApplicantCopyWith<$Res>? get applicant;@override $AdminStudentApplicationCopyWith<$Res>? get application;@override $AdminStudentProfileRowCopyWith<$Res>? get studentProfile;

}
/// @nodoc
class __$AdminStudentDetailCopyWithImpl<$Res>
    implements _$AdminStudentDetailCopyWith<$Res> {
  __$AdminStudentDetailCopyWithImpl(this._self, this._then);

  final _AdminStudentDetail _self;
  final $Res Function(_AdminStudentDetail) _then;

/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? applicationId = freezed,Object? admissionNo = null,Object? admissionDate = freezed,Object? rollNo = freezed,Object? studentStatus = freezed,Object? remarks = freezed,Object? institution = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicant = freezed,Object? application = freezed,Object? studentProfile = freezed,Object? addresses = null,Object? enrollments = null,Object? statusHistory = null,Object? idCards = null,Object? accounts = null,}) {
  return _then(_AdminStudentDetail(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdminStudentApplicant?,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as AdminStudentApplication?,studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as AdminStudentProfileRow?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<StudentAddress>,enrollments: null == enrollments ? _self._enrollments : enrollments // ignore: cast_nullable_to_non_nullable
as List<AdminStudentEnrollment>,statusHistory: null == statusHistory ? _self._statusHistory : statusHistory // ignore: cast_nullable_to_non_nullable
as List<AdminStudentStatusChange>,idCards: null == idCards ? _self._idCards : idCards // ignore: cast_nullable_to_non_nullable
as List<IdCardSummary>,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AdminStudentAccountRef>,
  ));
}

/// Create a copy of AdminStudentDetail
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
}/// Create a copy of AdminStudentDetail
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
}/// Create a copy of AdminStudentDetail
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
}/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdminStudentApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentApplicationCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $AdminStudentApplicationCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}/// Create a copy of AdminStudentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentProfileRowCopyWith<$Res>? get studentProfile {
    if (_self.studentProfile == null) {
    return null;
  }

  return $AdminStudentProfileRowCopyWith<$Res>(_self.studentProfile!, (value) {
    return _then(_self.copyWith(studentProfile: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentApplication {

@JsonKey(name: 'previous_schools') List<AdminPreviousSchool> get previousSchools;
/// Create a copy of AdminStudentApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentApplicationCopyWith<AdminStudentApplication> get copyWith => _$AdminStudentApplicationCopyWithImpl<AdminStudentApplication>(this as AdminStudentApplication, _$identity);

  /// Serializes this AdminStudentApplication to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentApplication;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentApplication&&const DeepCollectionEquality().equals(other.previousSchools, _this.previousSchools));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentApplication;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.previousSchools));
}

@override
String toString() {
  final _this = this as AdminStudentApplication;
  return 'AdminStudentApplication(previousSchools: ${_this.previousSchools})';
}


}

/// @nodoc
abstract mixin class $AdminStudentApplicationCopyWith<$Res>  {
  factory $AdminStudentApplicationCopyWith(AdminStudentApplication value, $Res Function(AdminStudentApplication) _then) = _$AdminStudentApplicationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'previous_schools') List<AdminPreviousSchool> previousSchools
});




}
/// @nodoc
class _$AdminStudentApplicationCopyWithImpl<$Res>
    implements $AdminStudentApplicationCopyWith<$Res> {
  _$AdminStudentApplicationCopyWithImpl(this._self, this._then);

  final AdminStudentApplication _self;
  final $Res Function(AdminStudentApplication) _then;

/// Create a copy of AdminStudentApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? previousSchools = null,}) {
  return _then(AdminStudentApplication(
previousSchools: null == previousSchools ? _self.previousSchools : previousSchools // ignore: cast_nullable_to_non_nullable
as List<AdminPreviousSchool>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentApplication].
extension AdminStudentApplicationPatterns on AdminStudentApplication {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentApplication value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentApplication() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentApplication value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentApplication():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentApplication value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentApplication() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_schools')  List<AdminPreviousSchool> previousSchools)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentApplication() when $default != null:
return $default(_that.previousSchools);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_schools')  List<AdminPreviousSchool> previousSchools)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentApplication():
return $default(_that.previousSchools);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'previous_schools')  List<AdminPreviousSchool> previousSchools)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentApplication() when $default != null:
return $default(_that.previousSchools);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentApplication implements AdminStudentApplication {
  const _AdminStudentApplication({@JsonKey(name: 'previous_schools')  List<AdminPreviousSchool> previousSchools = const <AdminPreviousSchool>[]}): _previousSchools = previousSchools;
  factory _AdminStudentApplication.fromJson(Map<String, dynamic> json) => _$AdminStudentApplicationFromJson(json);

 final  List<AdminPreviousSchool> _previousSchools;
@override@JsonKey(name: 'previous_schools') List<AdminPreviousSchool> get previousSchools {
  if (_previousSchools is EqualUnmodifiableListView) return _previousSchools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousSchools);
}


/// Create a copy of AdminStudentApplication
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentApplicationCopyWith<_AdminStudentApplication> get copyWith => __$AdminStudentApplicationCopyWithImpl<_AdminStudentApplication>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentApplicationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentApplication&&const DeepCollectionEquality().equals(other.previousSchools, _previousSchools));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_previousSchools));
}

@override
String toString() {
    return 'AdminStudentApplication(previousSchools: $previousSchools)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentApplicationCopyWith<$Res> implements $AdminStudentApplicationCopyWith<$Res> {
  factory _$AdminStudentApplicationCopyWith(_AdminStudentApplication value, $Res Function(_AdminStudentApplication) _then) = __$AdminStudentApplicationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'previous_schools') List<AdminPreviousSchool> previousSchools
});




}
/// @nodoc
class __$AdminStudentApplicationCopyWithImpl<$Res>
    implements _$AdminStudentApplicationCopyWith<$Res> {
  __$AdminStudentApplicationCopyWithImpl(this._self, this._then);

  final _AdminStudentApplication _self;
  final $Res Function(_AdminStudentApplication) _then;

/// Create a copy of AdminStudentApplication
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previousSchools = null,}) {
  return _then(_AdminStudentApplication(
previousSchools: null == previousSchools ? _self._previousSchools : previousSchools // ignore: cast_nullable_to_non_nullable
as List<AdminPreviousSchool>,
  ));
}


}


/// @nodoc
mixin _$AdminPreviousSchool {

@JsonKey(name: 'previous_school_id') String? get previousSchoolId;@JsonKey(name: 'school_name') String? get schoolName;@JsonKey(name: 'board_name') String? get boardName;@JsonKey(name: 'class_last_attended') String? get classLastAttended;@LooseStringConverter() String? get percentage;@JsonKey(name: 'passing_year')@LooseStringConverter() String? get passingYear;@JsonKey(name: 'tc_number') String? get tcNumber;@JsonKey(name: 'reason_for_leaving') String? get reasonForLeaving;@JsonKey(name: 'max_marks')@LooseStringConverter() String? get maxMarks;@JsonKey(name: 'marks_obtained')@LooseStringConverter() String? get marksObtained;
/// Create a copy of AdminPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminPreviousSchoolCopyWith<AdminPreviousSchool> get copyWith => _$AdminPreviousSchoolCopyWithImpl<AdminPreviousSchool>(this as AdminPreviousSchool, _$identity);

  /// Serializes this AdminPreviousSchool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminPreviousSchool;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminPreviousSchool&&(identical(other.previousSchoolId, _this.previousSchoolId) || other.previousSchoolId == _this.previousSchoolId)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.boardName, _this.boardName) || other.boardName == _this.boardName)&&(identical(other.classLastAttended, _this.classLastAttended) || other.classLastAttended == _this.classLastAttended)&&(identical(other.percentage, _this.percentage) || other.percentage == _this.percentage)&&(identical(other.passingYear, _this.passingYear) || other.passingYear == _this.passingYear)&&(identical(other.tcNumber, _this.tcNumber) || other.tcNumber == _this.tcNumber)&&(identical(other.reasonForLeaving, _this.reasonForLeaving) || other.reasonForLeaving == _this.reasonForLeaving)&&(identical(other.maxMarks, _this.maxMarks) || other.maxMarks == _this.maxMarks)&&(identical(other.marksObtained, _this.marksObtained) || other.marksObtained == _this.marksObtained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminPreviousSchool;
  return Object.hash(runtimeType,_this.previousSchoolId,_this.schoolName,_this.boardName,_this.classLastAttended,_this.percentage,_this.passingYear,_this.tcNumber,_this.reasonForLeaving,_this.maxMarks,_this.marksObtained);
}

@override
String toString() {
  final _this = this as AdminPreviousSchool;
  return 'AdminPreviousSchool(previousSchoolId: ${_this.previousSchoolId}, schoolName: ${_this.schoolName}, boardName: ${_this.boardName}, classLastAttended: ${_this.classLastAttended}, percentage: ${_this.percentage}, passingYear: ${_this.passingYear}, tcNumber: ${_this.tcNumber}, reasonForLeaving: ${_this.reasonForLeaving}, maxMarks: ${_this.maxMarks}, marksObtained: ${_this.marksObtained})';
}


}

/// @nodoc
abstract mixin class $AdminPreviousSchoolCopyWith<$Res>  {
  factory $AdminPreviousSchoolCopyWith(AdminPreviousSchool value, $Res Function(AdminPreviousSchool) _then) = _$AdminPreviousSchoolCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'previous_school_id') String? previousSchoolId,@JsonKey(name: 'school_name') String? schoolName,@JsonKey(name: 'board_name') String? boardName,@JsonKey(name: 'class_last_attended') String? classLastAttended,@LooseStringConverter() String? percentage,@JsonKey(name: 'passing_year')@LooseStringConverter() String? passingYear,@JsonKey(name: 'tc_number') String? tcNumber,@JsonKey(name: 'reason_for_leaving') String? reasonForLeaving,@JsonKey(name: 'max_marks')@LooseStringConverter() String? maxMarks,@JsonKey(name: 'marks_obtained')@LooseStringConverter() String? marksObtained
});




}
/// @nodoc
class _$AdminPreviousSchoolCopyWithImpl<$Res>
    implements $AdminPreviousSchoolCopyWith<$Res> {
  _$AdminPreviousSchoolCopyWithImpl(this._self, this._then);

  final AdminPreviousSchool _self;
  final $Res Function(AdminPreviousSchool) _then;

/// Create a copy of AdminPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? previousSchoolId = freezed,Object? schoolName = freezed,Object? boardName = freezed,Object? classLastAttended = freezed,Object? percentage = freezed,Object? passingYear = freezed,Object? tcNumber = freezed,Object? reasonForLeaving = freezed,Object? maxMarks = freezed,Object? marksObtained = freezed,}) {
  return _then(AdminPreviousSchool(
previousSchoolId: freezed == previousSchoolId ? _self.previousSchoolId : previousSchoolId // ignore: cast_nullable_to_non_nullable
as String?,schoolName: freezed == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String?,boardName: freezed == boardName ? _self.boardName : boardName // ignore: cast_nullable_to_non_nullable
as String?,classLastAttended: freezed == classLastAttended ? _self.classLastAttended : classLastAttended // ignore: cast_nullable_to_non_nullable
as String?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,passingYear: freezed == passingYear ? _self.passingYear : passingYear // ignore: cast_nullable_to_non_nullable
as String?,tcNumber: freezed == tcNumber ? _self.tcNumber : tcNumber // ignore: cast_nullable_to_non_nullable
as String?,reasonForLeaving: freezed == reasonForLeaving ? _self.reasonForLeaving : reasonForLeaving // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as String?,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminPreviousSchool].
extension AdminPreviousSchoolPatterns on AdminPreviousSchool {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminPreviousSchool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminPreviousSchool() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminPreviousSchool value)  $default,){
final _that = this;
switch (_that) {
case _AdminPreviousSchool():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminPreviousSchool value)?  $default,){
final _that = this;
switch (_that) {
case _AdminPreviousSchool() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_school_id')  String? previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage, @JsonKey(name: 'passing_year')@LooseStringConverter()  String? passingYear, @JsonKey(name: 'tc_number')  String? tcNumber, @JsonKey(name: 'reason_for_leaving')  String? reasonForLeaving, @JsonKey(name: 'max_marks')@LooseStringConverter()  String? maxMarks, @JsonKey(name: 'marks_obtained')@LooseStringConverter()  String? marksObtained)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminPreviousSchool() when $default != null:
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage,_that.passingYear,_that.tcNumber,_that.reasonForLeaving,_that.maxMarks,_that.marksObtained);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_school_id')  String? previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage, @JsonKey(name: 'passing_year')@LooseStringConverter()  String? passingYear, @JsonKey(name: 'tc_number')  String? tcNumber, @JsonKey(name: 'reason_for_leaving')  String? reasonForLeaving, @JsonKey(name: 'max_marks')@LooseStringConverter()  String? maxMarks, @JsonKey(name: 'marks_obtained')@LooseStringConverter()  String? marksObtained)  $default,) {final _that = this;
switch (_that) {
case _AdminPreviousSchool():
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage,_that.passingYear,_that.tcNumber,_that.reasonForLeaving,_that.maxMarks,_that.marksObtained);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'previous_school_id')  String? previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage, @JsonKey(name: 'passing_year')@LooseStringConverter()  String? passingYear, @JsonKey(name: 'tc_number')  String? tcNumber, @JsonKey(name: 'reason_for_leaving')  String? reasonForLeaving, @JsonKey(name: 'max_marks')@LooseStringConverter()  String? maxMarks, @JsonKey(name: 'marks_obtained')@LooseStringConverter()  String? marksObtained)?  $default,) {final _that = this;
switch (_that) {
case _AdminPreviousSchool() when $default != null:
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage,_that.passingYear,_that.tcNumber,_that.reasonForLeaving,_that.maxMarks,_that.marksObtained);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminPreviousSchool implements AdminPreviousSchool {
  const _AdminPreviousSchool({@JsonKey(name: 'previous_school_id') this.previousSchoolId, @JsonKey(name: 'school_name') this.schoolName, @JsonKey(name: 'board_name') this.boardName, @JsonKey(name: 'class_last_attended') this.classLastAttended, @LooseStringConverter() this.percentage, @JsonKey(name: 'passing_year')@LooseStringConverter() this.passingYear, @JsonKey(name: 'tc_number') this.tcNumber, @JsonKey(name: 'reason_for_leaving') this.reasonForLeaving, @JsonKey(name: 'max_marks')@LooseStringConverter() this.maxMarks, @JsonKey(name: 'marks_obtained')@LooseStringConverter() this.marksObtained});
  factory _AdminPreviousSchool.fromJson(Map<String, dynamic> json) => _$AdminPreviousSchoolFromJson(json);

@override@JsonKey(name: 'previous_school_id') final  String? previousSchoolId;
@override@JsonKey(name: 'school_name') final  String? schoolName;
@override@JsonKey(name: 'board_name') final  String? boardName;
@override@JsonKey(name: 'class_last_attended') final  String? classLastAttended;
@override@LooseStringConverter() final  String? percentage;
@override@JsonKey(name: 'passing_year')@LooseStringConverter() final  String? passingYear;
@override@JsonKey(name: 'tc_number') final  String? tcNumber;
@override@JsonKey(name: 'reason_for_leaving') final  String? reasonForLeaving;
@override@JsonKey(name: 'max_marks')@LooseStringConverter() final  String? maxMarks;
@override@JsonKey(name: 'marks_obtained')@LooseStringConverter() final  String? marksObtained;

/// Create a copy of AdminPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminPreviousSchoolCopyWith<_AdminPreviousSchool> get copyWith => __$AdminPreviousSchoolCopyWithImpl<_AdminPreviousSchool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminPreviousSchoolToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminPreviousSchool&&(identical(other.previousSchoolId, previousSchoolId) || other.previousSchoolId == previousSchoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.boardName, boardName) || other.boardName == boardName)&&(identical(other.classLastAttended, classLastAttended) || other.classLastAttended == classLastAttended)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.passingYear, passingYear) || other.passingYear == passingYear)&&(identical(other.tcNumber, tcNumber) || other.tcNumber == tcNumber)&&(identical(other.reasonForLeaving, reasonForLeaving) || other.reasonForLeaving == reasonForLeaving)&&(identical(other.maxMarks, maxMarks) || other.maxMarks == maxMarks)&&(identical(other.marksObtained, marksObtained) || other.marksObtained == marksObtained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,previousSchoolId,schoolName,boardName,classLastAttended,percentage,passingYear,tcNumber,reasonForLeaving,maxMarks,marksObtained);
}

@override
String toString() {
    return 'AdminPreviousSchool(previousSchoolId: $previousSchoolId, schoolName: $schoolName, boardName: $boardName, classLastAttended: $classLastAttended, percentage: $percentage, passingYear: $passingYear, tcNumber: $tcNumber, reasonForLeaving: $reasonForLeaving, maxMarks: $maxMarks, marksObtained: $marksObtained)';
}


}

/// @nodoc
abstract mixin class _$AdminPreviousSchoolCopyWith<$Res> implements $AdminPreviousSchoolCopyWith<$Res> {
  factory _$AdminPreviousSchoolCopyWith(_AdminPreviousSchool value, $Res Function(_AdminPreviousSchool) _then) = __$AdminPreviousSchoolCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'previous_school_id') String? previousSchoolId,@JsonKey(name: 'school_name') String? schoolName,@JsonKey(name: 'board_name') String? boardName,@JsonKey(name: 'class_last_attended') String? classLastAttended,@LooseStringConverter() String? percentage,@JsonKey(name: 'passing_year')@LooseStringConverter() String? passingYear,@JsonKey(name: 'tc_number') String? tcNumber,@JsonKey(name: 'reason_for_leaving') String? reasonForLeaving,@JsonKey(name: 'max_marks')@LooseStringConverter() String? maxMarks,@JsonKey(name: 'marks_obtained')@LooseStringConverter() String? marksObtained
});




}
/// @nodoc
class __$AdminPreviousSchoolCopyWithImpl<$Res>
    implements _$AdminPreviousSchoolCopyWith<$Res> {
  __$AdminPreviousSchoolCopyWithImpl(this._self, this._then);

  final _AdminPreviousSchool _self;
  final $Res Function(_AdminPreviousSchool) _then;

/// Create a copy of AdminPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previousSchoolId = freezed,Object? schoolName = freezed,Object? boardName = freezed,Object? classLastAttended = freezed,Object? percentage = freezed,Object? passingYear = freezed,Object? tcNumber = freezed,Object? reasonForLeaving = freezed,Object? maxMarks = freezed,Object? marksObtained = freezed,}) {
  return _then(_AdminPreviousSchool(
previousSchoolId: freezed == previousSchoolId ? _self.previousSchoolId : previousSchoolId // ignore: cast_nullable_to_non_nullable
as String?,schoolName: freezed == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String?,boardName: freezed == boardName ? _self.boardName : boardName // ignore: cast_nullable_to_non_nullable
as String?,classLastAttended: freezed == classLastAttended ? _self.classLastAttended : classLastAttended // ignore: cast_nullable_to_non_nullable
as String?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,passingYear: freezed == passingYear ? _self.passingYear : passingYear // ignore: cast_nullable_to_non_nullable
as String?,tcNumber: freezed == tcNumber ? _self.tcNumber : tcNumber // ignore: cast_nullable_to_non_nullable
as String?,reasonForLeaving: freezed == reasonForLeaving ? _self.reasonForLeaving : reasonForLeaving // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as String?,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentProfileRow {

@JsonKey(name: 'fee_category_id') String? get feeCategoryId;
/// Create a copy of AdminStudentProfileRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentProfileRowCopyWith<AdminStudentProfileRow> get copyWith => _$AdminStudentProfileRowCopyWithImpl<AdminStudentProfileRow>(this as AdminStudentProfileRow, _$identity);

  /// Serializes this AdminStudentProfileRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentProfileRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentProfileRow&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentProfileRow;
  return Object.hash(runtimeType,_this.feeCategoryId);
}

@override
String toString() {
  final _this = this as AdminStudentProfileRow;
  return 'AdminStudentProfileRow(feeCategoryId: ${_this.feeCategoryId})';
}


}

/// @nodoc
abstract mixin class $AdminStudentProfileRowCopyWith<$Res>  {
  factory $AdminStudentProfileRowCopyWith(AdminStudentProfileRow value, $Res Function(AdminStudentProfileRow) _then) = _$AdminStudentProfileRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category_id') String? feeCategoryId
});




}
/// @nodoc
class _$AdminStudentProfileRowCopyWithImpl<$Res>
    implements $AdminStudentProfileRowCopyWith<$Res> {
  _$AdminStudentProfileRowCopyWithImpl(this._self, this._then);

  final AdminStudentProfileRow _self;
  final $Res Function(AdminStudentProfileRow) _then;

/// Create a copy of AdminStudentProfileRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategoryId = freezed,}) {
  return _then(AdminStudentProfileRow(
feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentProfileRow].
extension AdminStudentProfileRowPatterns on AdminStudentProfileRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentProfileRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentProfileRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentProfileRow value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentProfileRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentProfileRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentProfileRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String? feeCategoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentProfileRow() when $default != null:
return $default(_that.feeCategoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String? feeCategoryId)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentProfileRow():
return $default(_that.feeCategoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_category_id')  String? feeCategoryId)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentProfileRow() when $default != null:
return $default(_that.feeCategoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentProfileRow implements AdminStudentProfileRow {
  const _AdminStudentProfileRow({@JsonKey(name: 'fee_category_id') this.feeCategoryId});
  factory _AdminStudentProfileRow.fromJson(Map<String, dynamic> json) => _$AdminStudentProfileRowFromJson(json);

@override@JsonKey(name: 'fee_category_id') final  String? feeCategoryId;

/// Create a copy of AdminStudentProfileRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentProfileRowCopyWith<_AdminStudentProfileRow> get copyWith => __$AdminStudentProfileRowCopyWithImpl<_AdminStudentProfileRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentProfileRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentProfileRow&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategoryId);
}

@override
String toString() {
    return 'AdminStudentProfileRow(feeCategoryId: $feeCategoryId)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentProfileRowCopyWith<$Res> implements $AdminStudentProfileRowCopyWith<$Res> {
  factory _$AdminStudentProfileRowCopyWith(_AdminStudentProfileRow value, $Res Function(_AdminStudentProfileRow) _then) = __$AdminStudentProfileRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category_id') String? feeCategoryId
});




}
/// @nodoc
class __$AdminStudentProfileRowCopyWithImpl<$Res>
    implements _$AdminStudentProfileRowCopyWith<$Res> {
  __$AdminStudentProfileRowCopyWithImpl(this._self, this._then);

  final _AdminStudentProfileRow _self;
  final $Res Function(_AdminStudentProfileRow) _then;

/// Create a copy of AdminStudentProfileRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategoryId = freezed,}) {
  return _then(_AdminStudentProfileRow(
feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentEnrollment {

@JsonKey(name: 'enrollment_id') String? get enrollmentId;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'enrollment_status') String? get enrollmentStatus;@JsonKey(name: 'enrolled_at') DateTime? get enrolledAt;@JsonKey(name: 'academic_sessions') SessionRef? get session;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;
/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentEnrollmentCopyWith<AdminStudentEnrollment> get copyWith => _$AdminStudentEnrollmentCopyWithImpl<AdminStudentEnrollment>(this as AdminStudentEnrollment, _$identity);

  /// Serializes this AdminStudentEnrollment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentEnrollment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentEnrollment&&(identical(other.enrollmentId, _this.enrollmentId) || other.enrollmentId == _this.enrollmentId)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.enrollmentStatus, _this.enrollmentStatus) || other.enrollmentStatus == _this.enrollmentStatus)&&(identical(other.enrolledAt, _this.enrolledAt) || other.enrolledAt == _this.enrolledAt)&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentEnrollment;
  return Object.hash(runtimeType,_this.enrollmentId,_this.rollNo,_this.enrollmentStatus,_this.enrolledAt,_this.session,_this.classRef,_this.sectionRef);
}

@override
String toString() {
  final _this = this as AdminStudentEnrollment;
  return 'AdminStudentEnrollment(enrollmentId: ${_this.enrollmentId}, rollNo: ${_this.rollNo}, enrollmentStatus: ${_this.enrollmentStatus}, enrolledAt: ${_this.enrolledAt}, session: ${_this.session}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef})';
}


}

/// @nodoc
abstract mixin class $AdminStudentEnrollmentCopyWith<$Res>  {
  factory $AdminStudentEnrollmentCopyWith(AdminStudentEnrollment value, $Res Function(AdminStudentEnrollment) _then) = _$AdminStudentEnrollmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'enrollment_status') String? enrollmentStatus,@JsonKey(name: 'enrolled_at') DateTime? enrolledAt,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef
});


$SessionRefCopyWith<$Res>? get session;$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;

}
/// @nodoc
class _$AdminStudentEnrollmentCopyWithImpl<$Res>
    implements $AdminStudentEnrollmentCopyWith<$Res> {
  _$AdminStudentEnrollmentCopyWithImpl(this._self, this._then);

  final AdminStudentEnrollment _self;
  final $Res Function(AdminStudentEnrollment) _then;

/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enrollmentId = freezed,Object? rollNo = freezed,Object? enrollmentStatus = freezed,Object? enrolledAt = freezed,Object? session = freezed,Object? classRef = freezed,Object? sectionRef = freezed,}) {
  return _then(AdminStudentEnrollment(
enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,enrollmentStatus: freezed == enrollmentStatus ? _self.enrollmentStatus : enrollmentStatus // ignore: cast_nullable_to_non_nullable
as String?,enrolledAt: freezed == enrolledAt ? _self.enrolledAt : enrolledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}
/// Create a copy of AdminStudentEnrollment
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
}/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentEnrollment].
extension AdminStudentEnrollmentPatterns on AdminStudentEnrollment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentEnrollment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentEnrollment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentEnrollment value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentEnrollment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentEnrollment value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentEnrollment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'enrollment_status')  String? enrollmentStatus, @JsonKey(name: 'enrolled_at')  DateTime? enrolledAt, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentEnrollment() when $default != null:
return $default(_that.enrollmentId,_that.rollNo,_that.enrollmentStatus,_that.enrolledAt,_that.session,_that.classRef,_that.sectionRef);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'enrollment_status')  String? enrollmentStatus, @JsonKey(name: 'enrolled_at')  DateTime? enrolledAt, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentEnrollment():
return $default(_that.enrollmentId,_that.rollNo,_that.enrollmentStatus,_that.enrolledAt,_that.session,_that.classRef,_that.sectionRef);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'enrollment_id')  String? enrollmentId, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'enrollment_status')  String? enrollmentStatus, @JsonKey(name: 'enrolled_at')  DateTime? enrolledAt, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentEnrollment() when $default != null:
return $default(_that.enrollmentId,_that.rollNo,_that.enrollmentStatus,_that.enrolledAt,_that.session,_that.classRef,_that.sectionRef);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentEnrollment implements AdminStudentEnrollment {
  const _AdminStudentEnrollment({@JsonKey(name: 'enrollment_id') this.enrollmentId, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'enrollment_status') this.enrollmentStatus, @JsonKey(name: 'enrolled_at') this.enrolledAt, @JsonKey(name: 'academic_sessions') this.session, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef});
  factory _AdminStudentEnrollment.fromJson(Map<String, dynamic> json) => _$AdminStudentEnrollmentFromJson(json);

@override@JsonKey(name: 'enrollment_id') final  String? enrollmentId;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'enrollment_status') final  String? enrollmentStatus;
@override@JsonKey(name: 'enrolled_at') final  DateTime? enrolledAt;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;

/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentEnrollmentCopyWith<_AdminStudentEnrollment> get copyWith => __$AdminStudentEnrollmentCopyWithImpl<_AdminStudentEnrollment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentEnrollmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentEnrollment&&(identical(other.enrollmentId, enrollmentId) || other.enrollmentId == enrollmentId)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.enrollmentStatus, enrollmentStatus) || other.enrollmentStatus == enrollmentStatus)&&(identical(other.enrolledAt, enrolledAt) || other.enrolledAt == enrolledAt)&&(identical(other.session, session) || other.session == session)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,enrollmentId,rollNo,enrollmentStatus,enrolledAt,session,classRef,sectionRef);
}

@override
String toString() {
    return 'AdminStudentEnrollment(enrollmentId: $enrollmentId, rollNo: $rollNo, enrollmentStatus: $enrollmentStatus, enrolledAt: $enrolledAt, session: $session, classRef: $classRef, sectionRef: $sectionRef)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentEnrollmentCopyWith<$Res> implements $AdminStudentEnrollmentCopyWith<$Res> {
  factory _$AdminStudentEnrollmentCopyWith(_AdminStudentEnrollment value, $Res Function(_AdminStudentEnrollment) _then) = __$AdminStudentEnrollmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'enrollment_id') String? enrollmentId,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'enrollment_status') String? enrollmentStatus,@JsonKey(name: 'enrolled_at') DateTime? enrolledAt,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef
});


@override $SessionRefCopyWith<$Res>? get session;@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;

}
/// @nodoc
class __$AdminStudentEnrollmentCopyWithImpl<$Res>
    implements _$AdminStudentEnrollmentCopyWith<$Res> {
  __$AdminStudentEnrollmentCopyWithImpl(this._self, this._then);

  final _AdminStudentEnrollment _self;
  final $Res Function(_AdminStudentEnrollment) _then;

/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enrollmentId = freezed,Object? rollNo = freezed,Object? enrollmentStatus = freezed,Object? enrolledAt = freezed,Object? session = freezed,Object? classRef = freezed,Object? sectionRef = freezed,}) {
  return _then(_AdminStudentEnrollment(
enrollmentId: freezed == enrollmentId ? _self.enrollmentId : enrollmentId // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,enrollmentStatus: freezed == enrollmentStatus ? _self.enrollmentStatus : enrollmentStatus // ignore: cast_nullable_to_non_nullable
as String?,enrolledAt: freezed == enrolledAt ? _self.enrolledAt : enrolledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}

/// Create a copy of AdminStudentEnrollment
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
}/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdminStudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentStatusChange {

@JsonKey(name: 'status_history_id') String? get statusHistoryId;@JsonKey(name: 'old_status') String? get oldStatus;@JsonKey(name: 'new_status') String? get newStatus; String? get remarks;@JsonKey(name: 'changed_at') DateTime? get changedAt;
/// Create a copy of AdminStudentStatusChange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentStatusChangeCopyWith<AdminStudentStatusChange> get copyWith => _$AdminStudentStatusChangeCopyWithImpl<AdminStudentStatusChange>(this as AdminStudentStatusChange, _$identity);

  /// Serializes this AdminStudentStatusChange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentStatusChange;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentStatusChange&&(identical(other.statusHistoryId, _this.statusHistoryId) || other.statusHistoryId == _this.statusHistoryId)&&(identical(other.oldStatus, _this.oldStatus) || other.oldStatus == _this.oldStatus)&&(identical(other.newStatus, _this.newStatus) || other.newStatus == _this.newStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.changedAt, _this.changedAt) || other.changedAt == _this.changedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentStatusChange;
  return Object.hash(runtimeType,_this.statusHistoryId,_this.oldStatus,_this.newStatus,_this.remarks,_this.changedAt);
}

@override
String toString() {
  final _this = this as AdminStudentStatusChange;
  return 'AdminStudentStatusChange(statusHistoryId: ${_this.statusHistoryId}, oldStatus: ${_this.oldStatus}, newStatus: ${_this.newStatus}, remarks: ${_this.remarks}, changedAt: ${_this.changedAt})';
}


}

/// @nodoc
abstract mixin class $AdminStudentStatusChangeCopyWith<$Res>  {
  factory $AdminStudentStatusChangeCopyWith(AdminStudentStatusChange value, $Res Function(AdminStudentStatusChange) _then) = _$AdminStudentStatusChangeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status_history_id') String? statusHistoryId,@JsonKey(name: 'old_status') String? oldStatus,@JsonKey(name: 'new_status') String? newStatus, String? remarks,@JsonKey(name: 'changed_at') DateTime? changedAt
});




}
/// @nodoc
class _$AdminStudentStatusChangeCopyWithImpl<$Res>
    implements $AdminStudentStatusChangeCopyWith<$Res> {
  _$AdminStudentStatusChangeCopyWithImpl(this._self, this._then);

  final AdminStudentStatusChange _self;
  final $Res Function(AdminStudentStatusChange) _then;

/// Create a copy of AdminStudentStatusChange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusHistoryId = freezed,Object? oldStatus = freezed,Object? newStatus = freezed,Object? remarks = freezed,Object? changedAt = freezed,}) {
  return _then(AdminStudentStatusChange(
statusHistoryId: freezed == statusHistoryId ? _self.statusHistoryId : statusHistoryId // ignore: cast_nullable_to_non_nullable
as String?,oldStatus: freezed == oldStatus ? _self.oldStatus : oldStatus // ignore: cast_nullable_to_non_nullable
as String?,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,changedAt: freezed == changedAt ? _self.changedAt : changedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentStatusChange].
extension AdminStudentStatusChangePatterns on AdminStudentStatusChange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentStatusChange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentStatusChange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentStatusChange value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentStatusChange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentStatusChange value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentStatusChange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_history_id')  String? statusHistoryId, @JsonKey(name: 'old_status')  String? oldStatus, @JsonKey(name: 'new_status')  String? newStatus,  String? remarks, @JsonKey(name: 'changed_at')  DateTime? changedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentStatusChange() when $default != null:
return $default(_that.statusHistoryId,_that.oldStatus,_that.newStatus,_that.remarks,_that.changedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_history_id')  String? statusHistoryId, @JsonKey(name: 'old_status')  String? oldStatus, @JsonKey(name: 'new_status')  String? newStatus,  String? remarks, @JsonKey(name: 'changed_at')  DateTime? changedAt)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentStatusChange():
return $default(_that.statusHistoryId,_that.oldStatus,_that.newStatus,_that.remarks,_that.changedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status_history_id')  String? statusHistoryId, @JsonKey(name: 'old_status')  String? oldStatus, @JsonKey(name: 'new_status')  String? newStatus,  String? remarks, @JsonKey(name: 'changed_at')  DateTime? changedAt)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentStatusChange() when $default != null:
return $default(_that.statusHistoryId,_that.oldStatus,_that.newStatus,_that.remarks,_that.changedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentStatusChange implements AdminStudentStatusChange {
  const _AdminStudentStatusChange({@JsonKey(name: 'status_history_id') this.statusHistoryId, @JsonKey(name: 'old_status') this.oldStatus, @JsonKey(name: 'new_status') this.newStatus, this.remarks, @JsonKey(name: 'changed_at') this.changedAt});
  factory _AdminStudentStatusChange.fromJson(Map<String, dynamic> json) => _$AdminStudentStatusChangeFromJson(json);

@override@JsonKey(name: 'status_history_id') final  String? statusHistoryId;
@override@JsonKey(name: 'old_status') final  String? oldStatus;
@override@JsonKey(name: 'new_status') final  String? newStatus;
@override final  String? remarks;
@override@JsonKey(name: 'changed_at') final  DateTime? changedAt;

/// Create a copy of AdminStudentStatusChange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentStatusChangeCopyWith<_AdminStudentStatusChange> get copyWith => __$AdminStudentStatusChangeCopyWithImpl<_AdminStudentStatusChange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentStatusChangeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentStatusChange&&(identical(other.statusHistoryId, statusHistoryId) || other.statusHistoryId == statusHistoryId)&&(identical(other.oldStatus, oldStatus) || other.oldStatus == oldStatus)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.changedAt, changedAt) || other.changedAt == changedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,statusHistoryId,oldStatus,newStatus,remarks,changedAt);
}

@override
String toString() {
    return 'AdminStudentStatusChange(statusHistoryId: $statusHistoryId, oldStatus: $oldStatus, newStatus: $newStatus, remarks: $remarks, changedAt: $changedAt)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentStatusChangeCopyWith<$Res> implements $AdminStudentStatusChangeCopyWith<$Res> {
  factory _$AdminStudentStatusChangeCopyWith(_AdminStudentStatusChange value, $Res Function(_AdminStudentStatusChange) _then) = __$AdminStudentStatusChangeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status_history_id') String? statusHistoryId,@JsonKey(name: 'old_status') String? oldStatus,@JsonKey(name: 'new_status') String? newStatus, String? remarks,@JsonKey(name: 'changed_at') DateTime? changedAt
});




}
/// @nodoc
class __$AdminStudentStatusChangeCopyWithImpl<$Res>
    implements _$AdminStudentStatusChangeCopyWith<$Res> {
  __$AdminStudentStatusChangeCopyWithImpl(this._self, this._then);

  final _AdminStudentStatusChange _self;
  final $Res Function(_AdminStudentStatusChange) _then;

/// Create a copy of AdminStudentStatusChange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusHistoryId = freezed,Object? oldStatus = freezed,Object? newStatus = freezed,Object? remarks = freezed,Object? changedAt = freezed,}) {
  return _then(_AdminStudentStatusChange(
statusHistoryId: freezed == statusHistoryId ? _self.statusHistoryId : statusHistoryId // ignore: cast_nullable_to_non_nullable
as String?,oldStatus: freezed == oldStatus ? _self.oldStatus : oldStatus // ignore: cast_nullable_to_non_nullable
as String?,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,changedAt: freezed == changedAt ? _self.changedAt : changedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentAccountRef {

@JsonKey(name: 'user_id') String get userId;
/// Create a copy of AdminStudentAccountRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentAccountRefCopyWith<AdminStudentAccountRef> get copyWith => _$AdminStudentAccountRefCopyWithImpl<AdminStudentAccountRef>(this as AdminStudentAccountRef, _$identity);

  /// Serializes this AdminStudentAccountRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentAccountRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentAccountRef&&(identical(other.userId, _this.userId) || other.userId == _this.userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentAccountRef;
  return Object.hash(runtimeType,_this.userId);
}

@override
String toString() {
  final _this = this as AdminStudentAccountRef;
  return 'AdminStudentAccountRef(userId: ${_this.userId})';
}


}

/// @nodoc
abstract mixin class $AdminStudentAccountRefCopyWith<$Res>  {
  factory $AdminStudentAccountRefCopyWith(AdminStudentAccountRef value, $Res Function(AdminStudentAccountRef) _then) = _$AdminStudentAccountRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class _$AdminStudentAccountRefCopyWithImpl<$Res>
    implements $AdminStudentAccountRefCopyWith<$Res> {
  _$AdminStudentAccountRefCopyWithImpl(this._self, this._then);

  final AdminStudentAccountRef _self;
  final $Res Function(AdminStudentAccountRef) _then;

/// Create a copy of AdminStudentAccountRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(AdminStudentAccountRef(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentAccountRef].
extension AdminStudentAccountRefPatterns on AdminStudentAccountRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentAccountRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentAccountRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentAccountRef value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentAccountRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentAccountRef value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentAccountRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentAccountRef() when $default != null:
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentAccountRef():
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentAccountRef() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentAccountRef implements AdminStudentAccountRef {
  const _AdminStudentAccountRef({@JsonKey(name: 'user_id') required this.userId});
  factory _AdminStudentAccountRef.fromJson(Map<String, dynamic> json) => _$AdminStudentAccountRefFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;

/// Create a copy of AdminStudentAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentAccountRefCopyWith<_AdminStudentAccountRef> get copyWith => __$AdminStudentAccountRefCopyWithImpl<_AdminStudentAccountRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentAccountRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentAccountRef&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId);
}

@override
String toString() {
    return 'AdminStudentAccountRef(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentAccountRefCopyWith<$Res> implements $AdminStudentAccountRefCopyWith<$Res> {
  factory _$AdminStudentAccountRefCopyWith(_AdminStudentAccountRef value, $Res Function(_AdminStudentAccountRef) _then) = __$AdminStudentAccountRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class __$AdminStudentAccountRefCopyWithImpl<$Res>
    implements _$AdminStudentAccountRefCopyWith<$Res> {
  __$AdminStudentAccountRefCopyWithImpl(this._self, this._then);

  final _AdminStudentAccountRef _self;
  final $Res Function(_AdminStudentAccountRef) _then;

/// Create a copy of AdminStudentAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_AdminStudentAccountRef(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdminStudentParent {

@JsonKey(name: 'parent_id') String get parentId;@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;@JsonKey(name: 'parent_account_id') String? get parentAccountId; String? get username;@JsonKey(name: 'account_status') String? get accountStatus;
/// Create a copy of AdminStudentParent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentParentCopyWith<AdminStudentParent> get copyWith => _$AdminStudentParentCopyWithImpl<AdminStudentParent>(this as AdminStudentParent, _$identity);

  /// Serializes this AdminStudentParent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentParent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentParent&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.parentAccountId, _this.parentAccountId) || other.parentAccountId == _this.parentAccountId)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentParent;
  return Object.hash(runtimeType,_this.parentId,_this.relationType,_this.firstName,_this.lastName,_this.mobileNo,_this.email,_this.parentAccountId,_this.username,_this.accountStatus);
}

@override
String toString() {
  final _this = this as AdminStudentParent;
  return 'AdminStudentParent(parentId: ${_this.parentId}, relationType: ${_this.relationType}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, mobileNo: ${_this.mobileNo}, email: ${_this.email}, parentAccountId: ${_this.parentAccountId}, username: ${_this.username}, accountStatus: ${_this.accountStatus})';
}


}

/// @nodoc
abstract mixin class $AdminStudentParentCopyWith<$Res>  {
  factory $AdminStudentParentCopyWith(AdminStudentParent value, $Res Function(AdminStudentParent) _then) = _$AdminStudentParentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email,@JsonKey(name: 'parent_account_id') String? parentAccountId, String? username,@JsonKey(name: 'account_status') String? accountStatus
});




}
/// @nodoc
class _$AdminStudentParentCopyWithImpl<$Res>
    implements $AdminStudentParentCopyWith<$Res> {
  _$AdminStudentParentCopyWithImpl(this._self, this._then);

  final AdminStudentParent _self;
  final $Res Function(AdminStudentParent) _then;

/// Create a copy of AdminStudentParent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentId = null,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? parentAccountId = freezed,Object? username = freezed,Object? accountStatus = freezed,}) {
  return _then(AdminStudentParent(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,parentAccountId: freezed == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentParent].
extension AdminStudentParentPatterns on AdminStudentParent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentParent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentParent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentParent value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentParent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentParent value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentParent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email, @JsonKey(name: 'parent_account_id')  String? parentAccountId,  String? username, @JsonKey(name: 'account_status')  String? accountStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentParent() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email,_that.parentAccountId,_that.username,_that.accountStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email, @JsonKey(name: 'parent_account_id')  String? parentAccountId,  String? username, @JsonKey(name: 'account_status')  String? accountStatus)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentParent():
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email,_that.parentAccountId,_that.username,_that.accountStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email, @JsonKey(name: 'parent_account_id')  String? parentAccountId,  String? username, @JsonKey(name: 'account_status')  String? accountStatus)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentParent() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email,_that.parentAccountId,_that.username,_that.accountStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentParent implements AdminStudentParent {
  const _AdminStudentParent({@JsonKey(name: 'parent_id') required this.parentId, @JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.email, @JsonKey(name: 'parent_account_id') this.parentAccountId, this.username, @JsonKey(name: 'account_status') this.accountStatus});
  factory _AdminStudentParent.fromJson(Map<String, dynamic> json) => _$AdminStudentParentFromJson(json);

@override@JsonKey(name: 'parent_id') final  String parentId;
@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;
@override@JsonKey(name: 'parent_account_id') final  String? parentAccountId;
@override final  String? username;
@override@JsonKey(name: 'account_status') final  String? accountStatus;

/// Create a copy of AdminStudentParent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentParentCopyWith<_AdminStudentParent> get copyWith => __$AdminStudentParentCopyWithImpl<_AdminStudentParent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentParentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentParent&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.parentAccountId, parentAccountId) || other.parentAccountId == parentAccountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentId,relationType,firstName,lastName,mobileNo,email,parentAccountId,username,accountStatus);
}

@override
String toString() {
    return 'AdminStudentParent(parentId: $parentId, relationType: $relationType, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, email: $email, parentAccountId: $parentAccountId, username: $username, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentParentCopyWith<$Res> implements $AdminStudentParentCopyWith<$Res> {
  factory _$AdminStudentParentCopyWith(_AdminStudentParent value, $Res Function(_AdminStudentParent) _then) = __$AdminStudentParentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email,@JsonKey(name: 'parent_account_id') String? parentAccountId, String? username,@JsonKey(name: 'account_status') String? accountStatus
});




}
/// @nodoc
class __$AdminStudentParentCopyWithImpl<$Res>
    implements _$AdminStudentParentCopyWith<$Res> {
  __$AdminStudentParentCopyWithImpl(this._self, this._then);

  final _AdminStudentParent _self;
  final $Res Function(_AdminStudentParent) _then;

/// Create a copy of AdminStudentParent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentId = null,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? parentAccountId = freezed,Object? username = freezed,Object? accountStatus = freezed,}) {
  return _then(_AdminStudentParent(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,parentAccountId: freezed == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentAdmissionDocument {

@JsonKey(name: 'document_id') String get documentId;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'file_url') String? get fileUrl;@JsonKey(name: 'verification_status') String? get verificationStatus;@JsonKey(name: 'upload_date') DateTime? get uploadDate;@JsonKey(name: 'document_types') AdminStudentDocumentType? get documentType;
/// Create a copy of AdminStudentAdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentAdmissionDocumentCopyWith<AdminStudentAdmissionDocument> get copyWith => _$AdminStudentAdmissionDocumentCopyWithImpl<AdminStudentAdmissionDocument>(this as AdminStudentAdmissionDocument, _$identity);

  /// Serializes this AdminStudentAdmissionDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentAdmissionDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentAdmissionDocument&&(identical(other.documentId, _this.documentId) || other.documentId == _this.documentId)&&(identical(other.fileName, _this.fileName) || other.fileName == _this.fileName)&&(identical(other.fileUrl, _this.fileUrl) || other.fileUrl == _this.fileUrl)&&(identical(other.verificationStatus, _this.verificationStatus) || other.verificationStatus == _this.verificationStatus)&&(identical(other.uploadDate, _this.uploadDate) || other.uploadDate == _this.uploadDate)&&(identical(other.documentType, _this.documentType) || other.documentType == _this.documentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentAdmissionDocument;
  return Object.hash(runtimeType,_this.documentId,_this.fileName,_this.fileUrl,_this.verificationStatus,_this.uploadDate,_this.documentType);
}

@override
String toString() {
  final _this = this as AdminStudentAdmissionDocument;
  return 'AdminStudentAdmissionDocument(documentId: ${_this.documentId}, fileName: ${_this.fileName}, fileUrl: ${_this.fileUrl}, verificationStatus: ${_this.verificationStatus}, uploadDate: ${_this.uploadDate}, documentType: ${_this.documentType})';
}


}

/// @nodoc
abstract mixin class $AdminStudentAdmissionDocumentCopyWith<$Res>  {
  factory $AdminStudentAdmissionDocumentCopyWith(AdminStudentAdmissionDocument value, $Res Function(AdminStudentAdmissionDocument) _then) = _$AdminStudentAdmissionDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'verification_status') String? verificationStatus,@JsonKey(name: 'upload_date') DateTime? uploadDate,@JsonKey(name: 'document_types') AdminStudentDocumentType? documentType
});


$AdminStudentDocumentTypeCopyWith<$Res>? get documentType;

}
/// @nodoc
class _$AdminStudentAdmissionDocumentCopyWithImpl<$Res>
    implements $AdminStudentAdmissionDocumentCopyWith<$Res> {
  _$AdminStudentAdmissionDocumentCopyWithImpl(this._self, this._then);

  final AdminStudentAdmissionDocument _self;
  final $Res Function(AdminStudentAdmissionDocument) _then;

/// Create a copy of AdminStudentAdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? fileName = freezed,Object? fileUrl = freezed,Object? verificationStatus = freezed,Object? uploadDate = freezed,Object? documentType = freezed,}) {
  return _then(AdminStudentAdmissionDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,uploadDate: freezed == uploadDate ? _self.uploadDate : uploadDate // ignore: cast_nullable_to_non_nullable
as DateTime?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as AdminStudentDocumentType?,
  ));
}
/// Create a copy of AdminStudentAdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentDocumentTypeCopyWith<$Res>? get documentType {
    if (_self.documentType == null) {
    return null;
  }

  return $AdminStudentDocumentTypeCopyWith<$Res>(_self.documentType!, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentAdmissionDocument].
extension AdminStudentAdmissionDocumentPatterns on AdminStudentAdmissionDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentAdmissionDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentAdmissionDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentAdmissionDocument value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentAdmissionDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentAdmissionDocument value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentAdmissionDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'verification_status')  String? verificationStatus, @JsonKey(name: 'upload_date')  DateTime? uploadDate, @JsonKey(name: 'document_types')  AdminStudentDocumentType? documentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentAdmissionDocument() when $default != null:
return $default(_that.documentId,_that.fileName,_that.fileUrl,_that.verificationStatus,_that.uploadDate,_that.documentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'verification_status')  String? verificationStatus, @JsonKey(name: 'upload_date')  DateTime? uploadDate, @JsonKey(name: 'document_types')  AdminStudentDocumentType? documentType)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentAdmissionDocument():
return $default(_that.documentId,_that.fileName,_that.fileUrl,_that.verificationStatus,_that.uploadDate,_that.documentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'verification_status')  String? verificationStatus, @JsonKey(name: 'upload_date')  DateTime? uploadDate, @JsonKey(name: 'document_types')  AdminStudentDocumentType? documentType)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentAdmissionDocument() when $default != null:
return $default(_that.documentId,_that.fileName,_that.fileUrl,_that.verificationStatus,_that.uploadDate,_that.documentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentAdmissionDocument implements AdminStudentAdmissionDocument {
  const _AdminStudentAdmissionDocument({@JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'file_url') this.fileUrl, @JsonKey(name: 'verification_status') this.verificationStatus, @JsonKey(name: 'upload_date') this.uploadDate, @JsonKey(name: 'document_types') this.documentType});
  factory _AdminStudentAdmissionDocument.fromJson(Map<String, dynamic> json) => _$AdminStudentAdmissionDocumentFromJson(json);

@override@JsonKey(name: 'document_id') final  String documentId;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'file_url') final  String? fileUrl;
@override@JsonKey(name: 'verification_status') final  String? verificationStatus;
@override@JsonKey(name: 'upload_date') final  DateTime? uploadDate;
@override@JsonKey(name: 'document_types') final  AdminStudentDocumentType? documentType;

/// Create a copy of AdminStudentAdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentAdmissionDocumentCopyWith<_AdminStudentAdmissionDocument> get copyWith => __$AdminStudentAdmissionDocumentCopyWithImpl<_AdminStudentAdmissionDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentAdmissionDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentAdmissionDocument&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.uploadDate, uploadDate) || other.uploadDate == uploadDate)&&(identical(other.documentType, documentType) || other.documentType == documentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentId,fileName,fileUrl,verificationStatus,uploadDate,documentType);
}

@override
String toString() {
    return 'AdminStudentAdmissionDocument(documentId: $documentId, fileName: $fileName, fileUrl: $fileUrl, verificationStatus: $verificationStatus, uploadDate: $uploadDate, documentType: $documentType)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentAdmissionDocumentCopyWith<$Res> implements $AdminStudentAdmissionDocumentCopyWith<$Res> {
  factory _$AdminStudentAdmissionDocumentCopyWith(_AdminStudentAdmissionDocument value, $Res Function(_AdminStudentAdmissionDocument) _then) = __$AdminStudentAdmissionDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'verification_status') String? verificationStatus,@JsonKey(name: 'upload_date') DateTime? uploadDate,@JsonKey(name: 'document_types') AdminStudentDocumentType? documentType
});


@override $AdminStudentDocumentTypeCopyWith<$Res>? get documentType;

}
/// @nodoc
class __$AdminStudentAdmissionDocumentCopyWithImpl<$Res>
    implements _$AdminStudentAdmissionDocumentCopyWith<$Res> {
  __$AdminStudentAdmissionDocumentCopyWithImpl(this._self, this._then);

  final _AdminStudentAdmissionDocument _self;
  final $Res Function(_AdminStudentAdmissionDocument) _then;

/// Create a copy of AdminStudentAdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? fileName = freezed,Object? fileUrl = freezed,Object? verificationStatus = freezed,Object? uploadDate = freezed,Object? documentType = freezed,}) {
  return _then(_AdminStudentAdmissionDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,uploadDate: freezed == uploadDate ? _self.uploadDate : uploadDate // ignore: cast_nullable_to_non_nullable
as DateTime?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as AdminStudentDocumentType?,
  ));
}

/// Create a copy of AdminStudentAdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentDocumentTypeCopyWith<$Res>? get documentType {
    if (_self.documentType == null) {
    return null;
  }

  return $AdminStudentDocumentTypeCopyWith<$Res>(_self.documentType!, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentDocumentType {

@JsonKey(name: 'document_type_id') String? get documentTypeId;@JsonKey(name: 'document_name') String? get documentName;
/// Create a copy of AdminStudentDocumentType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentDocumentTypeCopyWith<AdminStudentDocumentType> get copyWith => _$AdminStudentDocumentTypeCopyWithImpl<AdminStudentDocumentType>(this as AdminStudentDocumentType, _$identity);

  /// Serializes this AdminStudentDocumentType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentDocumentType;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentDocumentType&&(identical(other.documentTypeId, _this.documentTypeId) || other.documentTypeId == _this.documentTypeId)&&(identical(other.documentName, _this.documentName) || other.documentName == _this.documentName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentDocumentType;
  return Object.hash(runtimeType,_this.documentTypeId,_this.documentName);
}

@override
String toString() {
  final _this = this as AdminStudentDocumentType;
  return 'AdminStudentDocumentType(documentTypeId: ${_this.documentTypeId}, documentName: ${_this.documentName})';
}


}

/// @nodoc
abstract mixin class $AdminStudentDocumentTypeCopyWith<$Res>  {
  factory $AdminStudentDocumentTypeCopyWith(AdminStudentDocumentType value, $Res Function(AdminStudentDocumentType) _then) = _$AdminStudentDocumentTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_type_id') String? documentTypeId,@JsonKey(name: 'document_name') String? documentName
});




}
/// @nodoc
class _$AdminStudentDocumentTypeCopyWithImpl<$Res>
    implements $AdminStudentDocumentTypeCopyWith<$Res> {
  _$AdminStudentDocumentTypeCopyWithImpl(this._self, this._then);

  final AdminStudentDocumentType _self;
  final $Res Function(AdminStudentDocumentType) _then;

/// Create a copy of AdminStudentDocumentType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentTypeId = freezed,Object? documentName = freezed,}) {
  return _then(AdminStudentDocumentType(
documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentDocumentType].
extension AdminStudentDocumentTypePatterns on AdminStudentDocumentType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentDocumentType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentDocumentType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentDocumentType value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentDocumentType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentDocumentType value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentDocumentType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'document_name')  String? documentName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentDocumentType() when $default != null:
return $default(_that.documentTypeId,_that.documentName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'document_name')  String? documentName)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentDocumentType():
return $default(_that.documentTypeId,_that.documentName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'document_name')  String? documentName)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentDocumentType() when $default != null:
return $default(_that.documentTypeId,_that.documentName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentDocumentType implements AdminStudentDocumentType {
  const _AdminStudentDocumentType({@JsonKey(name: 'document_type_id') this.documentTypeId, @JsonKey(name: 'document_name') this.documentName});
  factory _AdminStudentDocumentType.fromJson(Map<String, dynamic> json) => _$AdminStudentDocumentTypeFromJson(json);

@override@JsonKey(name: 'document_type_id') final  String? documentTypeId;
@override@JsonKey(name: 'document_name') final  String? documentName;

/// Create a copy of AdminStudentDocumentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentDocumentTypeCopyWith<_AdminStudentDocumentType> get copyWith => __$AdminStudentDocumentTypeCopyWithImpl<_AdminStudentDocumentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentDocumentTypeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentDocumentType&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentName, documentName) || other.documentName == documentName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentTypeId,documentName);
}

@override
String toString() {
    return 'AdminStudentDocumentType(documentTypeId: $documentTypeId, documentName: $documentName)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentDocumentTypeCopyWith<$Res> implements $AdminStudentDocumentTypeCopyWith<$Res> {
  factory _$AdminStudentDocumentTypeCopyWith(_AdminStudentDocumentType value, $Res Function(_AdminStudentDocumentType) _then) = __$AdminStudentDocumentTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_type_id') String? documentTypeId,@JsonKey(name: 'document_name') String? documentName
});




}
/// @nodoc
class __$AdminStudentDocumentTypeCopyWithImpl<$Res>
    implements _$AdminStudentDocumentTypeCopyWith<$Res> {
  __$AdminStudentDocumentTypeCopyWithImpl(this._self, this._then);

  final _AdminStudentDocumentType _self;
  final $Res Function(_AdminStudentDocumentType) _then;

/// Create a copy of AdminStudentDocumentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentTypeId = freezed,Object? documentName = freezed,}) {
  return _then(_AdminStudentDocumentType(
documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentAuditEntry {

@JsonKey(name: 'log_id') String get logId;@JsonKey(name: 'module_name') String? get moduleName;@JsonKey(name: 'action_type') String? get actionType;@JsonKey(name: 'old_data') Object? get oldData;@JsonKey(name: 'new_data') Object? get newData;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of AdminStudentAuditEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentAuditEntryCopyWith<AdminStudentAuditEntry> get copyWith => _$AdminStudentAuditEntryCopyWithImpl<AdminStudentAuditEntry>(this as AdminStudentAuditEntry, _$identity);

  /// Serializes this AdminStudentAuditEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentAuditEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentAuditEntry&&(identical(other.logId, _this.logId) || other.logId == _this.logId)&&(identical(other.moduleName, _this.moduleName) || other.moduleName == _this.moduleName)&&(identical(other.actionType, _this.actionType) || other.actionType == _this.actionType)&&const DeepCollectionEquality().equals(other.oldData, _this.oldData)&&const DeepCollectionEquality().equals(other.newData, _this.newData)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentAuditEntry;
  return Object.hash(runtimeType,_this.logId,_this.moduleName,_this.actionType,const DeepCollectionEquality().hash(_this.oldData),const DeepCollectionEquality().hash(_this.newData),_this.createdAt);
}

@override
String toString() {
  final _this = this as AdminStudentAuditEntry;
  return 'AdminStudentAuditEntry(logId: ${_this.logId}, moduleName: ${_this.moduleName}, actionType: ${_this.actionType}, oldData: ${_this.oldData}, newData: ${_this.newData}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AdminStudentAuditEntryCopyWith<$Res>  {
  factory $AdminStudentAuditEntryCopyWith(AdminStudentAuditEntry value, $Res Function(AdminStudentAuditEntry) _then) = _$AdminStudentAuditEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'log_id') String logId,@JsonKey(name: 'module_name') String? moduleName,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'old_data') Object? oldData,@JsonKey(name: 'new_data') Object? newData,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$AdminStudentAuditEntryCopyWithImpl<$Res>
    implements $AdminStudentAuditEntryCopyWith<$Res> {
  _$AdminStudentAuditEntryCopyWithImpl(this._self, this._then);

  final AdminStudentAuditEntry _self;
  final $Res Function(AdminStudentAuditEntry) _then;

/// Create a copy of AdminStudentAuditEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logId = null,Object? moduleName = freezed,Object? actionType = freezed,Object? oldData = freezed,Object? newData = freezed,Object? createdAt = freezed,}) {
  return _then(AdminStudentAuditEntry(
logId: null == logId ? _self.logId : logId // ignore: cast_nullable_to_non_nullable
as String,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,oldData: freezed == oldData ? _self.oldData : oldData ,newData: freezed == newData ? _self.newData : newData ,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentAuditEntry].
extension AdminStudentAuditEntryPatterns on AdminStudentAuditEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentAuditEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentAuditEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentAuditEntry value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentAuditEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentAuditEntry value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentAuditEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'module_name')  String? moduleName, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'old_data')  Object? oldData, @JsonKey(name: 'new_data')  Object? newData, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentAuditEntry() when $default != null:
return $default(_that.logId,_that.moduleName,_that.actionType,_that.oldData,_that.newData,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'module_name')  String? moduleName, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'old_data')  Object? oldData, @JsonKey(name: 'new_data')  Object? newData, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentAuditEntry():
return $default(_that.logId,_that.moduleName,_that.actionType,_that.oldData,_that.newData,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'module_name')  String? moduleName, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'old_data')  Object? oldData, @JsonKey(name: 'new_data')  Object? newData, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentAuditEntry() when $default != null:
return $default(_that.logId,_that.moduleName,_that.actionType,_that.oldData,_that.newData,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentAuditEntry implements AdminStudentAuditEntry {
  const _AdminStudentAuditEntry({@JsonKey(name: 'log_id') required this.logId, @JsonKey(name: 'module_name') this.moduleName, @JsonKey(name: 'action_type') this.actionType, @JsonKey(name: 'old_data') this.oldData, @JsonKey(name: 'new_data') this.newData, @JsonKey(name: 'created_at') this.createdAt});
  factory _AdminStudentAuditEntry.fromJson(Map<String, dynamic> json) => _$AdminStudentAuditEntryFromJson(json);

@override@JsonKey(name: 'log_id') final  String logId;
@override@JsonKey(name: 'module_name') final  String? moduleName;
@override@JsonKey(name: 'action_type') final  String? actionType;
@override@JsonKey(name: 'old_data') final  Object? oldData;
@override@JsonKey(name: 'new_data') final  Object? newData;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of AdminStudentAuditEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentAuditEntryCopyWith<_AdminStudentAuditEntry> get copyWith => __$AdminStudentAuditEntryCopyWithImpl<_AdminStudentAuditEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentAuditEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentAuditEntry&&(identical(other.logId, logId) || other.logId == logId)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&const DeepCollectionEquality().equals(other.oldData, oldData)&&const DeepCollectionEquality().equals(other.newData, newData)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,logId,moduleName,actionType,const DeepCollectionEquality().hash(oldData),const DeepCollectionEquality().hash(newData),createdAt);
}

@override
String toString() {
    return 'AdminStudentAuditEntry(logId: $logId, moduleName: $moduleName, actionType: $actionType, oldData: $oldData, newData: $newData, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentAuditEntryCopyWith<$Res> implements $AdminStudentAuditEntryCopyWith<$Res> {
  factory _$AdminStudentAuditEntryCopyWith(_AdminStudentAuditEntry value, $Res Function(_AdminStudentAuditEntry) _then) = __$AdminStudentAuditEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'log_id') String logId,@JsonKey(name: 'module_name') String? moduleName,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'old_data') Object? oldData,@JsonKey(name: 'new_data') Object? newData,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$AdminStudentAuditEntryCopyWithImpl<$Res>
    implements _$AdminStudentAuditEntryCopyWith<$Res> {
  __$AdminStudentAuditEntryCopyWithImpl(this._self, this._then);

  final _AdminStudentAuditEntry _self;
  final $Res Function(_AdminStudentAuditEntry) _then;

/// Create a copy of AdminStudentAuditEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logId = null,Object? moduleName = freezed,Object? actionType = freezed,Object? oldData = freezed,Object? newData = freezed,Object? createdAt = freezed,}) {
  return _then(_AdminStudentAuditEntry(
logId: null == logId ? _self.logId : logId // ignore: cast_nullable_to_non_nullable
as String,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,oldData: freezed == oldData ? _self.oldData : oldData ,newData: freezed == newData ? _self.newData : newData ,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StudentTransferCertificate {

@JsonKey(name: 'tc_id') String get tcId;@JsonKey(name: 'tc_number') String get tcNumber;@JsonKey(name: 'issue_date') DateTime? get issueDate; String? get reason;@JsonKey(name: 'dues_cleared') bool get duesCleared;@JsonKey(name: 'conduct_remark') String? get conductRemark; String? get remarks;
/// Create a copy of StudentTransferCertificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentTransferCertificateCopyWith<StudentTransferCertificate> get copyWith => _$StudentTransferCertificateCopyWithImpl<StudentTransferCertificate>(this as StudentTransferCertificate, _$identity);

  /// Serializes this StudentTransferCertificate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentTransferCertificate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentTransferCertificate&&(identical(other.tcId, _this.tcId) || other.tcId == _this.tcId)&&(identical(other.tcNumber, _this.tcNumber) || other.tcNumber == _this.tcNumber)&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.duesCleared, _this.duesCleared) || other.duesCleared == _this.duesCleared)&&(identical(other.conductRemark, _this.conductRemark) || other.conductRemark == _this.conductRemark)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentTransferCertificate;
  return Object.hash(runtimeType,_this.tcId,_this.tcNumber,_this.issueDate,_this.reason,_this.duesCleared,_this.conductRemark,_this.remarks);
}

@override
String toString() {
  final _this = this as StudentTransferCertificate;
  return 'StudentTransferCertificate(tcId: ${_this.tcId}, tcNumber: ${_this.tcNumber}, issueDate: ${_this.issueDate}, reason: ${_this.reason}, duesCleared: ${_this.duesCleared}, conductRemark: ${_this.conductRemark}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $StudentTransferCertificateCopyWith<$Res>  {
  factory $StudentTransferCertificateCopyWith(StudentTransferCertificate value, $Res Function(StudentTransferCertificate) _then) = _$StudentTransferCertificateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tc_id') String tcId,@JsonKey(name: 'tc_number') String tcNumber,@JsonKey(name: 'issue_date') DateTime? issueDate, String? reason,@JsonKey(name: 'dues_cleared') bool duesCleared,@JsonKey(name: 'conduct_remark') String? conductRemark, String? remarks
});




}
/// @nodoc
class _$StudentTransferCertificateCopyWithImpl<$Res>
    implements $StudentTransferCertificateCopyWith<$Res> {
  _$StudentTransferCertificateCopyWithImpl(this._self, this._then);

  final StudentTransferCertificate _self;
  final $Res Function(StudentTransferCertificate) _then;

/// Create a copy of StudentTransferCertificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tcId = null,Object? tcNumber = null,Object? issueDate = freezed,Object? reason = freezed,Object? duesCleared = null,Object? conductRemark = freezed,Object? remarks = freezed,}) {
  return _then(StudentTransferCertificate(
tcId: null == tcId ? _self.tcId : tcId // ignore: cast_nullable_to_non_nullable
as String,tcNumber: null == tcNumber ? _self.tcNumber : tcNumber // ignore: cast_nullable_to_non_nullable
as String,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,duesCleared: null == duesCleared ? _self.duesCleared : duesCleared // ignore: cast_nullable_to_non_nullable
as bool,conductRemark: freezed == conductRemark ? _self.conductRemark : conductRemark // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentTransferCertificate].
extension StudentTransferCertificatePatterns on StudentTransferCertificate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentTransferCertificate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentTransferCertificate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentTransferCertificate value)  $default,){
final _that = this;
switch (_that) {
case _StudentTransferCertificate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentTransferCertificate value)?  $default,){
final _that = this;
switch (_that) {
case _StudentTransferCertificate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tc_id')  String tcId, @JsonKey(name: 'tc_number')  String tcNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate,  String? reason, @JsonKey(name: 'dues_cleared')  bool duesCleared, @JsonKey(name: 'conduct_remark')  String? conductRemark,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentTransferCertificate() when $default != null:
return $default(_that.tcId,_that.tcNumber,_that.issueDate,_that.reason,_that.duesCleared,_that.conductRemark,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tc_id')  String tcId, @JsonKey(name: 'tc_number')  String tcNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate,  String? reason, @JsonKey(name: 'dues_cleared')  bool duesCleared, @JsonKey(name: 'conduct_remark')  String? conductRemark,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _StudentTransferCertificate():
return $default(_that.tcId,_that.tcNumber,_that.issueDate,_that.reason,_that.duesCleared,_that.conductRemark,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tc_id')  String tcId, @JsonKey(name: 'tc_number')  String tcNumber, @JsonKey(name: 'issue_date')  DateTime? issueDate,  String? reason, @JsonKey(name: 'dues_cleared')  bool duesCleared, @JsonKey(name: 'conduct_remark')  String? conductRemark,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _StudentTransferCertificate() when $default != null:
return $default(_that.tcId,_that.tcNumber,_that.issueDate,_that.reason,_that.duesCleared,_that.conductRemark,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentTransferCertificate implements StudentTransferCertificate {
  const _StudentTransferCertificate({@JsonKey(name: 'tc_id') required this.tcId, @JsonKey(name: 'tc_number') required this.tcNumber, @JsonKey(name: 'issue_date') this.issueDate, this.reason, @JsonKey(name: 'dues_cleared') this.duesCleared = false, @JsonKey(name: 'conduct_remark') this.conductRemark, this.remarks});
  factory _StudentTransferCertificate.fromJson(Map<String, dynamic> json) => _$StudentTransferCertificateFromJson(json);

@override@JsonKey(name: 'tc_id') final  String tcId;
@override@JsonKey(name: 'tc_number') final  String tcNumber;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override final  String? reason;
@override@JsonKey(name: 'dues_cleared') final  bool duesCleared;
@override@JsonKey(name: 'conduct_remark') final  String? conductRemark;
@override final  String? remarks;

/// Create a copy of StudentTransferCertificate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentTransferCertificateCopyWith<_StudentTransferCertificate> get copyWith => __$StudentTransferCertificateCopyWithImpl<_StudentTransferCertificate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentTransferCertificateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentTransferCertificate&&(identical(other.tcId, tcId) || other.tcId == tcId)&&(identical(other.tcNumber, tcNumber) || other.tcNumber == tcNumber)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.duesCleared, duesCleared) || other.duesCleared == duesCleared)&&(identical(other.conductRemark, conductRemark) || other.conductRemark == conductRemark)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,tcId,tcNumber,issueDate,reason,duesCleared,conductRemark,remarks);
}

@override
String toString() {
    return 'StudentTransferCertificate(tcId: $tcId, tcNumber: $tcNumber, issueDate: $issueDate, reason: $reason, duesCleared: $duesCleared, conductRemark: $conductRemark, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$StudentTransferCertificateCopyWith<$Res> implements $StudentTransferCertificateCopyWith<$Res> {
  factory _$StudentTransferCertificateCopyWith(_StudentTransferCertificate value, $Res Function(_StudentTransferCertificate) _then) = __$StudentTransferCertificateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tc_id') String tcId,@JsonKey(name: 'tc_number') String tcNumber,@JsonKey(name: 'issue_date') DateTime? issueDate, String? reason,@JsonKey(name: 'dues_cleared') bool duesCleared,@JsonKey(name: 'conduct_remark') String? conductRemark, String? remarks
});




}
/// @nodoc
class __$StudentTransferCertificateCopyWithImpl<$Res>
    implements _$StudentTransferCertificateCopyWith<$Res> {
  __$StudentTransferCertificateCopyWithImpl(this._self, this._then);

  final _StudentTransferCertificate _self;
  final $Res Function(_StudentTransferCertificate) _then;

/// Create a copy of StudentTransferCertificate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tcId = null,Object? tcNumber = null,Object? issueDate = freezed,Object? reason = freezed,Object? duesCleared = null,Object? conductRemark = freezed,Object? remarks = freezed,}) {
  return _then(_StudentTransferCertificate(
tcId: null == tcId ? _self.tcId : tcId // ignore: cast_nullable_to_non_nullable
as String,tcNumber: null == tcNumber ? _self.tcNumber : tcNumber // ignore: cast_nullable_to_non_nullable
as String,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,duesCleared: null == duesCleared ? _self.duesCleared : duesCleared // ignore: cast_nullable_to_non_nullable
as bool,conductRemark: freezed == conductRemark ? _self.conductRemark : conductRemark // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentConcession {

@JsonKey(name: 'student_concession_id') String get studentConcessionId;@JsonKey(name: 'valid_from') DateTime? get validFrom;@JsonKey(name: 'valid_to') DateTime? get validTo; String? get status; String? get remarks;@JsonKey(name: 'fee_concessions') AdminStudentConcessionOption? get concession;@JsonKey(name: 'fee_heads') AdminStudentFeeHeadOption? get feeHead;
/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentConcessionCopyWith<AdminStudentConcession> get copyWith => _$AdminStudentConcessionCopyWithImpl<AdminStudentConcession>(this as AdminStudentConcession, _$identity);

  /// Serializes this AdminStudentConcession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentConcession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentConcession&&(identical(other.studentConcessionId, _this.studentConcessionId) || other.studentConcessionId == _this.studentConcessionId)&&(identical(other.validFrom, _this.validFrom) || other.validFrom == _this.validFrom)&&(identical(other.validTo, _this.validTo) || other.validTo == _this.validTo)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.concession, _this.concession) || other.concession == _this.concession)&&(identical(other.feeHead, _this.feeHead) || other.feeHead == _this.feeHead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentConcession;
  return Object.hash(runtimeType,_this.studentConcessionId,_this.validFrom,_this.validTo,_this.status,_this.remarks,_this.concession,_this.feeHead);
}

@override
String toString() {
  final _this = this as AdminStudentConcession;
  return 'AdminStudentConcession(studentConcessionId: ${_this.studentConcessionId}, validFrom: ${_this.validFrom}, validTo: ${_this.validTo}, status: ${_this.status}, remarks: ${_this.remarks}, concession: ${_this.concession}, feeHead: ${_this.feeHead})';
}


}

/// @nodoc
abstract mixin class $AdminStudentConcessionCopyWith<$Res>  {
  factory $AdminStudentConcessionCopyWith(AdminStudentConcession value, $Res Function(AdminStudentConcession) _then) = _$AdminStudentConcessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_concession_id') String studentConcessionId,@JsonKey(name: 'valid_from') DateTime? validFrom,@JsonKey(name: 'valid_to') DateTime? validTo, String? status, String? remarks,@JsonKey(name: 'fee_concessions') AdminStudentConcessionOption? concession,@JsonKey(name: 'fee_heads') AdminStudentFeeHeadOption? feeHead
});


$AdminStudentConcessionOptionCopyWith<$Res>? get concession;$AdminStudentFeeHeadOptionCopyWith<$Res>? get feeHead;

}
/// @nodoc
class _$AdminStudentConcessionCopyWithImpl<$Res>
    implements $AdminStudentConcessionCopyWith<$Res> {
  _$AdminStudentConcessionCopyWithImpl(this._self, this._then);

  final AdminStudentConcession _self;
  final $Res Function(AdminStudentConcession) _then;

/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentConcessionId = null,Object? validFrom = freezed,Object? validTo = freezed,Object? status = freezed,Object? remarks = freezed,Object? concession = freezed,Object? feeHead = freezed,}) {
  return _then(AdminStudentConcession(
studentConcessionId: null == studentConcessionId ? _self.studentConcessionId : studentConcessionId // ignore: cast_nullable_to_non_nullable
as String,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,concession: freezed == concession ? _self.concession : concession // ignore: cast_nullable_to_non_nullable
as AdminStudentConcessionOption?,feeHead: freezed == feeHead ? _self.feeHead : feeHead // ignore: cast_nullable_to_non_nullable
as AdminStudentFeeHeadOption?,
  ));
}
/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentConcessionOptionCopyWith<$Res>? get concession {
    if (_self.concession == null) {
    return null;
  }

  return $AdminStudentConcessionOptionCopyWith<$Res>(_self.concession!, (value) {
    return _then(_self.copyWith(concession: value));
  });
}/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentFeeHeadOptionCopyWith<$Res>? get feeHead {
    if (_self.feeHead == null) {
    return null;
  }

  return $AdminStudentFeeHeadOptionCopyWith<$Res>(_self.feeHead!, (value) {
    return _then(_self.copyWith(feeHead: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentConcession].
extension AdminStudentConcessionPatterns on AdminStudentConcession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentConcession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentConcession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentConcession value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentConcession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentConcession value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentConcession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? status,  String? remarks, @JsonKey(name: 'fee_concessions')  AdminStudentConcessionOption? concession, @JsonKey(name: 'fee_heads')  AdminStudentFeeHeadOption? feeHead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentConcession() when $default != null:
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.status,_that.remarks,_that.concession,_that.feeHead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? status,  String? remarks, @JsonKey(name: 'fee_concessions')  AdminStudentConcessionOption? concession, @JsonKey(name: 'fee_heads')  AdminStudentFeeHeadOption? feeHead)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentConcession():
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.status,_that.remarks,_that.concession,_that.feeHead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? status,  String? remarks, @JsonKey(name: 'fee_concessions')  AdminStudentConcessionOption? concession, @JsonKey(name: 'fee_heads')  AdminStudentFeeHeadOption? feeHead)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentConcession() when $default != null:
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.status,_that.remarks,_that.concession,_that.feeHead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentConcession implements AdminStudentConcession {
  const _AdminStudentConcession({@JsonKey(name: 'student_concession_id') required this.studentConcessionId, @JsonKey(name: 'valid_from') this.validFrom, @JsonKey(name: 'valid_to') this.validTo, this.status, this.remarks, @JsonKey(name: 'fee_concessions') this.concession, @JsonKey(name: 'fee_heads') this.feeHead});
  factory _AdminStudentConcession.fromJson(Map<String, dynamic> json) => _$AdminStudentConcessionFromJson(json);

@override@JsonKey(name: 'student_concession_id') final  String studentConcessionId;
@override@JsonKey(name: 'valid_from') final  DateTime? validFrom;
@override@JsonKey(name: 'valid_to') final  DateTime? validTo;
@override final  String? status;
@override final  String? remarks;
@override@JsonKey(name: 'fee_concessions') final  AdminStudentConcessionOption? concession;
@override@JsonKey(name: 'fee_heads') final  AdminStudentFeeHeadOption? feeHead;

/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentConcessionCopyWith<_AdminStudentConcession> get copyWith => __$AdminStudentConcessionCopyWithImpl<_AdminStudentConcession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentConcessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentConcession&&(identical(other.studentConcessionId, studentConcessionId) || other.studentConcessionId == studentConcessionId)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.concession, concession) || other.concession == concession)&&(identical(other.feeHead, feeHead) || other.feeHead == feeHead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentConcessionId,validFrom,validTo,status,remarks,concession,feeHead);
}

@override
String toString() {
    return 'AdminStudentConcession(studentConcessionId: $studentConcessionId, validFrom: $validFrom, validTo: $validTo, status: $status, remarks: $remarks, concession: $concession, feeHead: $feeHead)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentConcessionCopyWith<$Res> implements $AdminStudentConcessionCopyWith<$Res> {
  factory _$AdminStudentConcessionCopyWith(_AdminStudentConcession value, $Res Function(_AdminStudentConcession) _then) = __$AdminStudentConcessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_concession_id') String studentConcessionId,@JsonKey(name: 'valid_from') DateTime? validFrom,@JsonKey(name: 'valid_to') DateTime? validTo, String? status, String? remarks,@JsonKey(name: 'fee_concessions') AdminStudentConcessionOption? concession,@JsonKey(name: 'fee_heads') AdminStudentFeeHeadOption? feeHead
});


@override $AdminStudentConcessionOptionCopyWith<$Res>? get concession;@override $AdminStudentFeeHeadOptionCopyWith<$Res>? get feeHead;

}
/// @nodoc
class __$AdminStudentConcessionCopyWithImpl<$Res>
    implements _$AdminStudentConcessionCopyWith<$Res> {
  __$AdminStudentConcessionCopyWithImpl(this._self, this._then);

  final _AdminStudentConcession _self;
  final $Res Function(_AdminStudentConcession) _then;

/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentConcessionId = null,Object? validFrom = freezed,Object? validTo = freezed,Object? status = freezed,Object? remarks = freezed,Object? concession = freezed,Object? feeHead = freezed,}) {
  return _then(_AdminStudentConcession(
studentConcessionId: null == studentConcessionId ? _self.studentConcessionId : studentConcessionId // ignore: cast_nullable_to_non_nullable
as String,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,concession: freezed == concession ? _self.concession : concession // ignore: cast_nullable_to_non_nullable
as AdminStudentConcessionOption?,feeHead: freezed == feeHead ? _self.feeHead : feeHead // ignore: cast_nullable_to_non_nullable
as AdminStudentFeeHeadOption?,
  ));
}

/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentConcessionOptionCopyWith<$Res>? get concession {
    if (_self.concession == null) {
    return null;
  }

  return $AdminStudentConcessionOptionCopyWith<$Res>(_self.concession!, (value) {
    return _then(_self.copyWith(concession: value));
  });
}/// Create a copy of AdminStudentConcession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentFeeHeadOptionCopyWith<$Res>? get feeHead {
    if (_self.feeHead == null) {
    return null;
  }

  return $AdminStudentFeeHeadOptionCopyWith<$Res>(_self.feeHead!, (value) {
    return _then(_self.copyWith(feeHead: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentConcessionOption {

@JsonKey(name: 'concession_id') String get concessionId; String get name;
/// Create a copy of AdminStudentConcessionOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentConcessionOptionCopyWith<AdminStudentConcessionOption> get copyWith => _$AdminStudentConcessionOptionCopyWithImpl<AdminStudentConcessionOption>(this as AdminStudentConcessionOption, _$identity);

  /// Serializes this AdminStudentConcessionOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentConcessionOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentConcessionOption&&(identical(other.concessionId, _this.concessionId) || other.concessionId == _this.concessionId)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentConcessionOption;
  return Object.hash(runtimeType,_this.concessionId,_this.name);
}

@override
String toString() {
  final _this = this as AdminStudentConcessionOption;
  return 'AdminStudentConcessionOption(concessionId: ${_this.concessionId}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $AdminStudentConcessionOptionCopyWith<$Res>  {
  factory $AdminStudentConcessionOptionCopyWith(AdminStudentConcessionOption value, $Res Function(AdminStudentConcessionOption) _then) = _$AdminStudentConcessionOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'concession_id') String concessionId, String name
});




}
/// @nodoc
class _$AdminStudentConcessionOptionCopyWithImpl<$Res>
    implements $AdminStudentConcessionOptionCopyWith<$Res> {
  _$AdminStudentConcessionOptionCopyWithImpl(this._self, this._then);

  final AdminStudentConcessionOption _self;
  final $Res Function(AdminStudentConcessionOption) _then;

/// Create a copy of AdminStudentConcessionOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? concessionId = null,Object? name = null,}) {
  return _then(AdminStudentConcessionOption(
concessionId: null == concessionId ? _self.concessionId : concessionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentConcessionOption].
extension AdminStudentConcessionOptionPatterns on AdminStudentConcessionOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentConcessionOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentConcessionOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentConcessionOption value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentConcessionOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentConcessionOption value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentConcessionOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'concession_id')  String concessionId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentConcessionOption() when $default != null:
return $default(_that.concessionId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'concession_id')  String concessionId,  String name)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentConcessionOption():
return $default(_that.concessionId,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'concession_id')  String concessionId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentConcessionOption() when $default != null:
return $default(_that.concessionId,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentConcessionOption implements AdminStudentConcessionOption {
  const _AdminStudentConcessionOption({@JsonKey(name: 'concession_id') required this.concessionId, required this.name});
  factory _AdminStudentConcessionOption.fromJson(Map<String, dynamic> json) => _$AdminStudentConcessionOptionFromJson(json);

@override@JsonKey(name: 'concession_id') final  String concessionId;
@override final  String name;

/// Create a copy of AdminStudentConcessionOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentConcessionOptionCopyWith<_AdminStudentConcessionOption> get copyWith => __$AdminStudentConcessionOptionCopyWithImpl<_AdminStudentConcessionOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentConcessionOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentConcessionOption&&(identical(other.concessionId, concessionId) || other.concessionId == concessionId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,concessionId,name);
}

@override
String toString() {
    return 'AdminStudentConcessionOption(concessionId: $concessionId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentConcessionOptionCopyWith<$Res> implements $AdminStudentConcessionOptionCopyWith<$Res> {
  factory _$AdminStudentConcessionOptionCopyWith(_AdminStudentConcessionOption value, $Res Function(_AdminStudentConcessionOption) _then) = __$AdminStudentConcessionOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'concession_id') String concessionId, String name
});




}
/// @nodoc
class __$AdminStudentConcessionOptionCopyWithImpl<$Res>
    implements _$AdminStudentConcessionOptionCopyWith<$Res> {
  __$AdminStudentConcessionOptionCopyWithImpl(this._self, this._then);

  final _AdminStudentConcessionOption _self;
  final $Res Function(_AdminStudentConcessionOption) _then;

/// Create a copy of AdminStudentConcessionOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? concessionId = null,Object? name = null,}) {
  return _then(_AdminStudentConcessionOption(
concessionId: null == concessionId ? _self.concessionId : concessionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdminStudentFeeHeadOption {

@JsonKey(name: 'fee_head_id') String get feeHeadId;@JsonKey(name: 'fee_head_name') String get feeHeadName;
/// Create a copy of AdminStudentFeeHeadOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentFeeHeadOptionCopyWith<AdminStudentFeeHeadOption> get copyWith => _$AdminStudentFeeHeadOptionCopyWithImpl<AdminStudentFeeHeadOption>(this as AdminStudentFeeHeadOption, _$identity);

  /// Serializes this AdminStudentFeeHeadOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentFeeHeadOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentFeeHeadOption&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentFeeHeadOption;
  return Object.hash(runtimeType,_this.feeHeadId,_this.feeHeadName);
}

@override
String toString() {
  final _this = this as AdminStudentFeeHeadOption;
  return 'AdminStudentFeeHeadOption(feeHeadId: ${_this.feeHeadId}, feeHeadName: ${_this.feeHeadName})';
}


}

/// @nodoc
abstract mixin class $AdminStudentFeeHeadOptionCopyWith<$Res>  {
  factory $AdminStudentFeeHeadOptionCopyWith(AdminStudentFeeHeadOption value, $Res Function(AdminStudentFeeHeadOption) _then) = _$AdminStudentFeeHeadOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName
});




}
/// @nodoc
class _$AdminStudentFeeHeadOptionCopyWithImpl<$Res>
    implements $AdminStudentFeeHeadOptionCopyWith<$Res> {
  _$AdminStudentFeeHeadOptionCopyWithImpl(this._self, this._then);

  final AdminStudentFeeHeadOption _self;
  final $Res Function(AdminStudentFeeHeadOption) _then;

/// Create a copy of AdminStudentFeeHeadOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeHeadId = null,Object? feeHeadName = null,}) {
  return _then(AdminStudentFeeHeadOption(
feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentFeeHeadOption].
extension AdminStudentFeeHeadOptionPatterns on AdminStudentFeeHeadOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentFeeHeadOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentFeeHeadOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentFeeHeadOption value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentFeeHeadOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentFeeHeadOption value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentFeeHeadOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentFeeHeadOption() when $default != null:
return $default(_that.feeHeadId,_that.feeHeadName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentFeeHeadOption():
return $default(_that.feeHeadId,_that.feeHeadName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentFeeHeadOption() when $default != null:
return $default(_that.feeHeadId,_that.feeHeadName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentFeeHeadOption implements AdminStudentFeeHeadOption {
  const _AdminStudentFeeHeadOption({@JsonKey(name: 'fee_head_id') required this.feeHeadId, @JsonKey(name: 'fee_head_name') required this.feeHeadName});
  factory _AdminStudentFeeHeadOption.fromJson(Map<String, dynamic> json) => _$AdminStudentFeeHeadOptionFromJson(json);

@override@JsonKey(name: 'fee_head_id') final  String feeHeadId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;

/// Create a copy of AdminStudentFeeHeadOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentFeeHeadOptionCopyWith<_AdminStudentFeeHeadOption> get copyWith => __$AdminStudentFeeHeadOptionCopyWithImpl<_AdminStudentFeeHeadOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentFeeHeadOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentFeeHeadOption&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeHeadId,feeHeadName);
}

@override
String toString() {
    return 'AdminStudentFeeHeadOption(feeHeadId: $feeHeadId, feeHeadName: $feeHeadName)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentFeeHeadOptionCopyWith<$Res> implements $AdminStudentFeeHeadOptionCopyWith<$Res> {
  factory _$AdminStudentFeeHeadOptionCopyWith(_AdminStudentFeeHeadOption value, $Res Function(_AdminStudentFeeHeadOption) _then) = __$AdminStudentFeeHeadOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName
});




}
/// @nodoc
class __$AdminStudentFeeHeadOptionCopyWithImpl<$Res>
    implements _$AdminStudentFeeHeadOptionCopyWith<$Res> {
  __$AdminStudentFeeHeadOptionCopyWithImpl(this._self, this._then);

  final _AdminStudentFeeHeadOption _self;
  final $Res Function(_AdminStudentFeeHeadOption) _then;

/// Create a copy of AdminStudentFeeHeadOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeHeadId = null,Object? feeHeadName = null,}) {
  return _then(_AdminStudentFeeHeadOption(
feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdminStudentFeeCategoryOption {

@JsonKey(name: 'fee_category_id') String get feeCategoryId;@JsonKey(name: 'category_name') String get categoryName;
/// Create a copy of AdminStudentFeeCategoryOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentFeeCategoryOptionCopyWith<AdminStudentFeeCategoryOption> get copyWith => _$AdminStudentFeeCategoryOptionCopyWithImpl<AdminStudentFeeCategoryOption>(this as AdminStudentFeeCategoryOption, _$identity);

  /// Serializes this AdminStudentFeeCategoryOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentFeeCategoryOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentFeeCategoryOption&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentFeeCategoryOption;
  return Object.hash(runtimeType,_this.feeCategoryId,_this.categoryName);
}

@override
String toString() {
  final _this = this as AdminStudentFeeCategoryOption;
  return 'AdminStudentFeeCategoryOption(feeCategoryId: ${_this.feeCategoryId}, categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $AdminStudentFeeCategoryOptionCopyWith<$Res>  {
  factory $AdminStudentFeeCategoryOptionCopyWith(AdminStudentFeeCategoryOption value, $Res Function(AdminStudentFeeCategoryOption) _then) = _$AdminStudentFeeCategoryOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category_id') String feeCategoryId,@JsonKey(name: 'category_name') String categoryName
});




}
/// @nodoc
class _$AdminStudentFeeCategoryOptionCopyWithImpl<$Res>
    implements $AdminStudentFeeCategoryOptionCopyWith<$Res> {
  _$AdminStudentFeeCategoryOptionCopyWithImpl(this._self, this._then);

  final AdminStudentFeeCategoryOption _self;
  final $Res Function(AdminStudentFeeCategoryOption) _then;

/// Create a copy of AdminStudentFeeCategoryOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategoryId = null,Object? categoryName = null,}) {
  return _then(AdminStudentFeeCategoryOption(
feeCategoryId: null == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentFeeCategoryOption].
extension AdminStudentFeeCategoryOptionPatterns on AdminStudentFeeCategoryOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentFeeCategoryOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentFeeCategoryOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentFeeCategoryOption value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentFeeCategoryOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentFeeCategoryOption value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentFeeCategoryOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentFeeCategoryOption() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentFeeCategoryOption():
return $default(_that.feeCategoryId,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentFeeCategoryOption() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentFeeCategoryOption implements AdminStudentFeeCategoryOption {
  const _AdminStudentFeeCategoryOption({@JsonKey(name: 'fee_category_id') required this.feeCategoryId, @JsonKey(name: 'category_name') required this.categoryName});
  factory _AdminStudentFeeCategoryOption.fromJson(Map<String, dynamic> json) => _$AdminStudentFeeCategoryOptionFromJson(json);

@override@JsonKey(name: 'fee_category_id') final  String feeCategoryId;
@override@JsonKey(name: 'category_name') final  String categoryName;

/// Create a copy of AdminStudentFeeCategoryOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentFeeCategoryOptionCopyWith<_AdminStudentFeeCategoryOption> get copyWith => __$AdminStudentFeeCategoryOptionCopyWithImpl<_AdminStudentFeeCategoryOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentFeeCategoryOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentFeeCategoryOption&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategoryId,categoryName);
}

@override
String toString() {
    return 'AdminStudentFeeCategoryOption(feeCategoryId: $feeCategoryId, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentFeeCategoryOptionCopyWith<$Res> implements $AdminStudentFeeCategoryOptionCopyWith<$Res> {
  factory _$AdminStudentFeeCategoryOptionCopyWith(_AdminStudentFeeCategoryOption value, $Res Function(_AdminStudentFeeCategoryOption) _then) = __$AdminStudentFeeCategoryOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category_id') String feeCategoryId,@JsonKey(name: 'category_name') String categoryName
});




}
/// @nodoc
class __$AdminStudentFeeCategoryOptionCopyWithImpl<$Res>
    implements _$AdminStudentFeeCategoryOptionCopyWith<$Res> {
  __$AdminStudentFeeCategoryOptionCopyWithImpl(this._self, this._then);

  final _AdminStudentFeeCategoryOption _self;
  final $Res Function(_AdminStudentFeeCategoryOption) _then;

/// Create a copy of AdminStudentFeeCategoryOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategoryId = null,Object? categoryName = null,}) {
  return _then(_AdminStudentFeeCategoryOption(
feeCategoryId: null == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AdminStudentMasterOption {

 String get id; String get name;
/// Create a copy of AdminStudentMasterOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentMasterOptionCopyWith<AdminStudentMasterOption> get copyWith => _$AdminStudentMasterOptionCopyWithImpl<AdminStudentMasterOption>(this as AdminStudentMasterOption, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AdminStudentMasterOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentMasterOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}


@override
int get hashCode {
  final _this = this as AdminStudentMasterOption;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as AdminStudentMasterOption;
  return 'AdminStudentMasterOption(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $AdminStudentMasterOptionCopyWith<$Res>  {
  factory $AdminStudentMasterOptionCopyWith(AdminStudentMasterOption value, $Res Function(AdminStudentMasterOption) _then) = _$AdminStudentMasterOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$AdminStudentMasterOptionCopyWithImpl<$Res>
    implements $AdminStudentMasterOptionCopyWith<$Res> {
  _$AdminStudentMasterOptionCopyWithImpl(this._self, this._then);

  final AdminStudentMasterOption _self;
  final $Res Function(AdminStudentMasterOption) _then;

/// Create a copy of AdminStudentMasterOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(AdminStudentMasterOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentMasterOption].
extension AdminStudentMasterOptionPatterns on AdminStudentMasterOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentMasterOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentMasterOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentMasterOption value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentMasterOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentMasterOption value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentMasterOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentMasterOption() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentMasterOption():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentMasterOption() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _AdminStudentMasterOption implements AdminStudentMasterOption {
  const _AdminStudentMasterOption({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of AdminStudentMasterOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentMasterOptionCopyWith<_AdminStudentMasterOption> get copyWith => __$AdminStudentMasterOptionCopyWithImpl<_AdminStudentMasterOption>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentMasterOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'AdminStudentMasterOption(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentMasterOptionCopyWith<$Res> implements $AdminStudentMasterOptionCopyWith<$Res> {
  factory _$AdminStudentMasterOptionCopyWith(_AdminStudentMasterOption value, $Res Function(_AdminStudentMasterOption) _then) = __$AdminStudentMasterOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$AdminStudentMasterOptionCopyWithImpl<$Res>
    implements _$AdminStudentMasterOptionCopyWith<$Res> {
  __$AdminStudentMasterOptionCopyWithImpl(this._self, this._then);

  final _AdminStudentMasterOption _self;
  final $Res Function(_AdminStudentMasterOption) _then;

/// Create a copy of AdminStudentMasterOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AdminStudentMasterOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdminStudentBulkResult {

 int get succeeded; int get promoted; int get failed; List<AdminStudentBulkItem> get results; List<AdminStudentBulkError> get errors;
/// Create a copy of AdminStudentBulkResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentBulkResultCopyWith<AdminStudentBulkResult> get copyWith => _$AdminStudentBulkResultCopyWithImpl<AdminStudentBulkResult>(this as AdminStudentBulkResult, _$identity);

  /// Serializes this AdminStudentBulkResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentBulkResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentBulkResult&&(identical(other.succeeded, _this.succeeded) || other.succeeded == _this.succeeded)&&(identical(other.promoted, _this.promoted) || other.promoted == _this.promoted)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&const DeepCollectionEquality().equals(other.results, _this.results)&&const DeepCollectionEquality().equals(other.errors, _this.errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentBulkResult;
  return Object.hash(runtimeType,_this.succeeded,_this.promoted,_this.failed,const DeepCollectionEquality().hash(_this.results),const DeepCollectionEquality().hash(_this.errors));
}

@override
String toString() {
  final _this = this as AdminStudentBulkResult;
  return 'AdminStudentBulkResult(succeeded: ${_this.succeeded}, promoted: ${_this.promoted}, failed: ${_this.failed}, results: ${_this.results}, errors: ${_this.errors})';
}


}

/// @nodoc
abstract mixin class $AdminStudentBulkResultCopyWith<$Res>  {
  factory $AdminStudentBulkResultCopyWith(AdminStudentBulkResult value, $Res Function(AdminStudentBulkResult) _then) = _$AdminStudentBulkResultCopyWithImpl;
@useResult
$Res call({
 int succeeded, int promoted, int failed, List<AdminStudentBulkItem> results, List<AdminStudentBulkError> errors
});




}
/// @nodoc
class _$AdminStudentBulkResultCopyWithImpl<$Res>
    implements $AdminStudentBulkResultCopyWith<$Res> {
  _$AdminStudentBulkResultCopyWithImpl(this._self, this._then);

  final AdminStudentBulkResult _self;
  final $Res Function(AdminStudentBulkResult) _then;

/// Create a copy of AdminStudentBulkResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? succeeded = null,Object? promoted = null,Object? failed = null,Object? results = null,Object? errors = null,}) {
  return _then(AdminStudentBulkResult(
succeeded: null == succeeded ? _self.succeeded : succeeded // ignore: cast_nullable_to_non_nullable
as int,promoted: null == promoted ? _self.promoted : promoted // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<AdminStudentBulkItem>,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<AdminStudentBulkError>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentBulkResult].
extension AdminStudentBulkResultPatterns on AdminStudentBulkResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentBulkResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentBulkResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentBulkResult value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentBulkResult value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int succeeded,  int promoted,  int failed,  List<AdminStudentBulkItem> results,  List<AdminStudentBulkError> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentBulkResult() when $default != null:
return $default(_that.succeeded,_that.promoted,_that.failed,_that.results,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int succeeded,  int promoted,  int failed,  List<AdminStudentBulkItem> results,  List<AdminStudentBulkError> errors)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkResult():
return $default(_that.succeeded,_that.promoted,_that.failed,_that.results,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int succeeded,  int promoted,  int failed,  List<AdminStudentBulkItem> results,  List<AdminStudentBulkError> errors)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkResult() when $default != null:
return $default(_that.succeeded,_that.promoted,_that.failed,_that.results,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentBulkResult implements AdminStudentBulkResult {
  const _AdminStudentBulkResult({this.succeeded = 0, this.promoted = 0, this.failed = 0,  List<AdminStudentBulkItem> results = const <AdminStudentBulkItem>[],  List<AdminStudentBulkError> errors = const <AdminStudentBulkError>[]}): _results = results,_errors = errors;
  factory _AdminStudentBulkResult.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkResultFromJson(json);

@override@JsonKey() final  int succeeded;
@override@JsonKey() final  int promoted;
@override@JsonKey() final  int failed;
 final  List<AdminStudentBulkItem> _results;
@override@JsonKey() List<AdminStudentBulkItem> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<AdminStudentBulkError> _errors;
@override@JsonKey() List<AdminStudentBulkError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of AdminStudentBulkResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentBulkResultCopyWith<_AdminStudentBulkResult> get copyWith => __$AdminStudentBulkResultCopyWithImpl<_AdminStudentBulkResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentBulkResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentBulkResult&&(identical(other.succeeded, succeeded) || other.succeeded == succeeded)&&(identical(other.promoted, promoted) || other.promoted == promoted)&&(identical(other.failed, failed) || other.failed == failed)&&const DeepCollectionEquality().equals(other.results, _results)&&const DeepCollectionEquality().equals(other.errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,succeeded,promoted,failed,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_errors));
}

@override
String toString() {
    return 'AdminStudentBulkResult(succeeded: $succeeded, promoted: $promoted, failed: $failed, results: $results, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentBulkResultCopyWith<$Res> implements $AdminStudentBulkResultCopyWith<$Res> {
  factory _$AdminStudentBulkResultCopyWith(_AdminStudentBulkResult value, $Res Function(_AdminStudentBulkResult) _then) = __$AdminStudentBulkResultCopyWithImpl;
@override @useResult
$Res call({
 int succeeded, int promoted, int failed, List<AdminStudentBulkItem> results, List<AdminStudentBulkError> errors
});




}
/// @nodoc
class __$AdminStudentBulkResultCopyWithImpl<$Res>
    implements _$AdminStudentBulkResultCopyWith<$Res> {
  __$AdminStudentBulkResultCopyWithImpl(this._self, this._then);

  final _AdminStudentBulkResult _self;
  final $Res Function(_AdminStudentBulkResult) _then;

/// Create a copy of AdminStudentBulkResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? succeeded = null,Object? promoted = null,Object? failed = null,Object? results = null,Object? errors = null,}) {
  return _then(_AdminStudentBulkResult(
succeeded: null == succeeded ? _self.succeeded : succeeded // ignore: cast_nullable_to_non_nullable
as int,promoted: null == promoted ? _self.promoted : promoted // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<AdminStudentBulkItem>,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<AdminStudentBulkError>,
  ));
}


}


/// @nodoc
mixin _$AdminStudentBulkItem {

@JsonKey(name: 'student_id') String? get studentId; AdminStudentBulkPayload? get result;
/// Create a copy of AdminStudentBulkItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentBulkItemCopyWith<AdminStudentBulkItem> get copyWith => _$AdminStudentBulkItemCopyWithImpl<AdminStudentBulkItem>(this as AdminStudentBulkItem, _$identity);

  /// Serializes this AdminStudentBulkItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentBulkItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentBulkItem&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.result, _this.result) || other.result == _this.result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentBulkItem;
  return Object.hash(runtimeType,_this.studentId,_this.result);
}

@override
String toString() {
  final _this = this as AdminStudentBulkItem;
  return 'AdminStudentBulkItem(studentId: ${_this.studentId}, result: ${_this.result})';
}


}

/// @nodoc
abstract mixin class $AdminStudentBulkItemCopyWith<$Res>  {
  factory $AdminStudentBulkItemCopyWith(AdminStudentBulkItem value, $Res Function(AdminStudentBulkItem) _then) = _$AdminStudentBulkItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId, AdminStudentBulkPayload? result
});


$AdminStudentBulkPayloadCopyWith<$Res>? get result;

}
/// @nodoc
class _$AdminStudentBulkItemCopyWithImpl<$Res>
    implements $AdminStudentBulkItemCopyWith<$Res> {
  _$AdminStudentBulkItemCopyWithImpl(this._self, this._then);

  final AdminStudentBulkItem _self;
  final $Res Function(AdminStudentBulkItem) _then;

/// Create a copy of AdminStudentBulkItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? result = freezed,}) {
  return _then(AdminStudentBulkItem(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AdminStudentBulkPayload?,
  ));
}
/// Create a copy of AdminStudentBulkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentBulkPayloadCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $AdminStudentBulkPayloadCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentBulkItem].
extension AdminStudentBulkItemPatterns on AdminStudentBulkItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentBulkItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentBulkItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentBulkItem value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentBulkItem value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId,  AdminStudentBulkPayload? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentBulkItem() when $default != null:
return $default(_that.studentId,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId,  AdminStudentBulkPayload? result)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkItem():
return $default(_that.studentId,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId,  AdminStudentBulkPayload? result)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkItem() when $default != null:
return $default(_that.studentId,_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentBulkItem implements AdminStudentBulkItem {
  const _AdminStudentBulkItem({@JsonKey(name: 'student_id') this.studentId, this.result});
  factory _AdminStudentBulkItem.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkItemFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
@override final  AdminStudentBulkPayload? result;

/// Create a copy of AdminStudentBulkItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentBulkItemCopyWith<_AdminStudentBulkItem> get copyWith => __$AdminStudentBulkItemCopyWithImpl<_AdminStudentBulkItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentBulkItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentBulkItem&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,result);
}

@override
String toString() {
    return 'AdminStudentBulkItem(studentId: $studentId, result: $result)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentBulkItemCopyWith<$Res> implements $AdminStudentBulkItemCopyWith<$Res> {
  factory _$AdminStudentBulkItemCopyWith(_AdminStudentBulkItem value, $Res Function(_AdminStudentBulkItem) _then) = __$AdminStudentBulkItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId, AdminStudentBulkPayload? result
});


@override $AdminStudentBulkPayloadCopyWith<$Res>? get result;

}
/// @nodoc
class __$AdminStudentBulkItemCopyWithImpl<$Res>
    implements _$AdminStudentBulkItemCopyWith<$Res> {
  __$AdminStudentBulkItemCopyWithImpl(this._self, this._then);

  final _AdminStudentBulkItem _self;
  final $Res Function(_AdminStudentBulkItem) _then;

/// Create a copy of AdminStudentBulkItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? result = freezed,}) {
  return _then(_AdminStudentBulkItem(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AdminStudentBulkPayload?,
  ));
}

/// Create a copy of AdminStudentBulkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentBulkPayloadCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $AdminStudentBulkPayloadCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentBulkPayload {

@JsonKey(name: 'student_name') String? get studentName;@JsonKey(name: 'card_number') String? get cardNumber;@JsonKey(name: 'expiry_date') DateTime? get expiryDate; AdminStudentCertificateStudent? get student; String? get content;
/// Create a copy of AdminStudentBulkPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentBulkPayloadCopyWith<AdminStudentBulkPayload> get copyWith => _$AdminStudentBulkPayloadCopyWithImpl<AdminStudentBulkPayload>(this as AdminStudentBulkPayload, _$identity);

  /// Serializes this AdminStudentBulkPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentBulkPayload;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentBulkPayload&&(identical(other.studentName, _this.studentName) || other.studentName == _this.studentName)&&(identical(other.cardNumber, _this.cardNumber) || other.cardNumber == _this.cardNumber)&&(identical(other.expiryDate, _this.expiryDate) || other.expiryDate == _this.expiryDate)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.content, _this.content) || other.content == _this.content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentBulkPayload;
  return Object.hash(runtimeType,_this.studentName,_this.cardNumber,_this.expiryDate,_this.student,_this.content);
}

@override
String toString() {
  final _this = this as AdminStudentBulkPayload;
  return 'AdminStudentBulkPayload(studentName: ${_this.studentName}, cardNumber: ${_this.cardNumber}, expiryDate: ${_this.expiryDate}, student: ${_this.student}, content: ${_this.content})';
}


}

/// @nodoc
abstract mixin class $AdminStudentBulkPayloadCopyWith<$Res>  {
  factory $AdminStudentBulkPayloadCopyWith(AdminStudentBulkPayload value, $Res Function(AdminStudentBulkPayload) _then) = _$AdminStudentBulkPayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'card_number') String? cardNumber,@JsonKey(name: 'expiry_date') DateTime? expiryDate, AdminStudentCertificateStudent? student, String? content
});


$AdminStudentCertificateStudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$AdminStudentBulkPayloadCopyWithImpl<$Res>
    implements $AdminStudentBulkPayloadCopyWith<$Res> {
  _$AdminStudentBulkPayloadCopyWithImpl(this._self, this._then);

  final AdminStudentBulkPayload _self;
  final $Res Function(AdminStudentBulkPayload) _then;

/// Create a copy of AdminStudentBulkPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentName = freezed,Object? cardNumber = freezed,Object? expiryDate = freezed,Object? student = freezed,Object? content = freezed,}) {
  return _then(AdminStudentBulkPayload(
studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AdminStudentCertificateStudent?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AdminStudentBulkPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentCertificateStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AdminStudentCertificateStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStudentBulkPayload].
extension AdminStudentBulkPayloadPatterns on AdminStudentBulkPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentBulkPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentBulkPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentBulkPayload value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentBulkPayload value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'expiry_date')  DateTime? expiryDate,  AdminStudentCertificateStudent? student,  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentBulkPayload() when $default != null:
return $default(_that.studentName,_that.cardNumber,_that.expiryDate,_that.student,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'expiry_date')  DateTime? expiryDate,  AdminStudentCertificateStudent? student,  String? content)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkPayload():
return $default(_that.studentName,_that.cardNumber,_that.expiryDate,_that.student,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'card_number')  String? cardNumber, @JsonKey(name: 'expiry_date')  DateTime? expiryDate,  AdminStudentCertificateStudent? student,  String? content)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkPayload() when $default != null:
return $default(_that.studentName,_that.cardNumber,_that.expiryDate,_that.student,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentBulkPayload implements AdminStudentBulkPayload {
  const _AdminStudentBulkPayload({@JsonKey(name: 'student_name') this.studentName, @JsonKey(name: 'card_number') this.cardNumber, @JsonKey(name: 'expiry_date') this.expiryDate, this.student, this.content});
  factory _AdminStudentBulkPayload.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkPayloadFromJson(json);

@override@JsonKey(name: 'student_name') final  String? studentName;
@override@JsonKey(name: 'card_number') final  String? cardNumber;
@override@JsonKey(name: 'expiry_date') final  DateTime? expiryDate;
@override final  AdminStudentCertificateStudent? student;
@override final  String? content;

/// Create a copy of AdminStudentBulkPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentBulkPayloadCopyWith<_AdminStudentBulkPayload> get copyWith => __$AdminStudentBulkPayloadCopyWithImpl<_AdminStudentBulkPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentBulkPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentBulkPayload&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.student, student) || other.student == student)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentName,cardNumber,expiryDate,student,content);
}

@override
String toString() {
    return 'AdminStudentBulkPayload(studentName: $studentName, cardNumber: $cardNumber, expiryDate: $expiryDate, student: $student, content: $content)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentBulkPayloadCopyWith<$Res> implements $AdminStudentBulkPayloadCopyWith<$Res> {
  factory _$AdminStudentBulkPayloadCopyWith(_AdminStudentBulkPayload value, $Res Function(_AdminStudentBulkPayload) _then) = __$AdminStudentBulkPayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'card_number') String? cardNumber,@JsonKey(name: 'expiry_date') DateTime? expiryDate, AdminStudentCertificateStudent? student, String? content
});


@override $AdminStudentCertificateStudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$AdminStudentBulkPayloadCopyWithImpl<$Res>
    implements _$AdminStudentBulkPayloadCopyWith<$Res> {
  __$AdminStudentBulkPayloadCopyWithImpl(this._self, this._then);

  final _AdminStudentBulkPayload _self;
  final $Res Function(_AdminStudentBulkPayload) _then;

/// Create a copy of AdminStudentBulkPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentName = freezed,Object? cardNumber = freezed,Object? expiryDate = freezed,Object? student = freezed,Object? content = freezed,}) {
  return _then(_AdminStudentBulkPayload(
studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AdminStudentCertificateStudent?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AdminStudentBulkPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStudentCertificateStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AdminStudentCertificateStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$AdminStudentCertificateStudent {

 String? get name;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of AdminStudentCertificateStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentCertificateStudentCopyWith<AdminStudentCertificateStudent> get copyWith => _$AdminStudentCertificateStudentCopyWithImpl<AdminStudentCertificateStudent>(this as AdminStudentCertificateStudent, _$identity);

  /// Serializes this AdminStudentCertificateStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentCertificateStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentCertificateStudent&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentCertificateStudent;
  return Object.hash(runtimeType,_this.name,_this.admissionNo,_this.className,_this.sectionName);
}

@override
String toString() {
  final _this = this as AdminStudentCertificateStudent;
  return 'AdminStudentCertificateStudent(name: ${_this.name}, admissionNo: ${_this.admissionNo}, className: ${_this.className}, sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $AdminStudentCertificateStudentCopyWith<$Res>  {
  factory $AdminStudentCertificateStudentCopyWith(AdminStudentCertificateStudent value, $Res Function(AdminStudentCertificateStudent) _then) = _$AdminStudentCertificateStudentCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$AdminStudentCertificateStudentCopyWithImpl<$Res>
    implements $AdminStudentCertificateStudentCopyWith<$Res> {
  _$AdminStudentCertificateStudentCopyWithImpl(this._self, this._then);

  final AdminStudentCertificateStudent _self;
  final $Res Function(AdminStudentCertificateStudent) _then;

/// Create a copy of AdminStudentCertificateStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? admissionNo = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(AdminStudentCertificateStudent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentCertificateStudent].
extension AdminStudentCertificateStudentPatterns on AdminStudentCertificateStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentCertificateStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentCertificateStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentCertificateStudent value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentCertificateStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentCertificateStudent value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentCertificateStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentCertificateStudent() when $default != null:
return $default(_that.name,_that.admissionNo,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentCertificateStudent():
return $default(_that.name,_that.admissionNo,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentCertificateStudent() when $default != null:
return $default(_that.name,_that.admissionNo,_that.className,_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentCertificateStudent implements AdminStudentCertificateStudent {
  const _AdminStudentCertificateStudent({this.name, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName});
  factory _AdminStudentCertificateStudent.fromJson(Map<String, dynamic> json) => _$AdminStudentCertificateStudentFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;

/// Create a copy of AdminStudentCertificateStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentCertificateStudentCopyWith<_AdminStudentCertificateStudent> get copyWith => __$AdminStudentCertificateStudentCopyWithImpl<_AdminStudentCertificateStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentCertificateStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentCertificateStudent&&(identical(other.name, name) || other.name == name)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,admissionNo,className,sectionName);
}

@override
String toString() {
    return 'AdminStudentCertificateStudent(name: $name, admissionNo: $admissionNo, className: $className, sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentCertificateStudentCopyWith<$Res> implements $AdminStudentCertificateStudentCopyWith<$Res> {
  factory _$AdminStudentCertificateStudentCopyWith(_AdminStudentCertificateStudent value, $Res Function(_AdminStudentCertificateStudent) _then) = __$AdminStudentCertificateStudentCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$AdminStudentCertificateStudentCopyWithImpl<$Res>
    implements _$AdminStudentCertificateStudentCopyWith<$Res> {
  __$AdminStudentCertificateStudentCopyWithImpl(this._self, this._then);

  final _AdminStudentCertificateStudent _self;
  final $Res Function(_AdminStudentCertificateStudent) _then;

/// Create a copy of AdminStudentCertificateStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? admissionNo = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(_AdminStudentCertificateStudent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentBulkError {

@JsonKey(name: 'student_id')@LooseStringConverter() String? get studentId;@LooseStringConverter() String? get error;
/// Create a copy of AdminStudentBulkError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentBulkErrorCopyWith<AdminStudentBulkError> get copyWith => _$AdminStudentBulkErrorCopyWithImpl<AdminStudentBulkError>(this as AdminStudentBulkError, _$identity);

  /// Serializes this AdminStudentBulkError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentBulkError;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentBulkError&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.error, _this.error) || other.error == _this.error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentBulkError;
  return Object.hash(runtimeType,_this.studentId,_this.error);
}

@override
String toString() {
  final _this = this as AdminStudentBulkError;
  return 'AdminStudentBulkError(studentId: ${_this.studentId}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $AdminStudentBulkErrorCopyWith<$Res>  {
  factory $AdminStudentBulkErrorCopyWith(AdminStudentBulkError value, $Res Function(AdminStudentBulkError) _then) = _$AdminStudentBulkErrorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id')@LooseStringConverter() String? studentId,@LooseStringConverter() String? error
});




}
/// @nodoc
class _$AdminStudentBulkErrorCopyWithImpl<$Res>
    implements $AdminStudentBulkErrorCopyWith<$Res> {
  _$AdminStudentBulkErrorCopyWithImpl(this._self, this._then);

  final AdminStudentBulkError _self;
  final $Res Function(AdminStudentBulkError) _then;

/// Create a copy of AdminStudentBulkError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? error = freezed,}) {
  return _then(AdminStudentBulkError(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentBulkError].
extension AdminStudentBulkErrorPatterns on AdminStudentBulkError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentBulkError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentBulkError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentBulkError value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentBulkError value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentBulkError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')@LooseStringConverter()  String? studentId, @LooseStringConverter()  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentBulkError() when $default != null:
return $default(_that.studentId,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')@LooseStringConverter()  String? studentId, @LooseStringConverter()  String? error)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkError():
return $default(_that.studentId,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')@LooseStringConverter()  String? studentId, @LooseStringConverter()  String? error)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentBulkError() when $default != null:
return $default(_that.studentId,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentBulkError implements AdminStudentBulkError {
  const _AdminStudentBulkError({@JsonKey(name: 'student_id')@LooseStringConverter() this.studentId, @LooseStringConverter() this.error});
  factory _AdminStudentBulkError.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkErrorFromJson(json);

@override@JsonKey(name: 'student_id')@LooseStringConverter() final  String? studentId;
@override@LooseStringConverter() final  String? error;

/// Create a copy of AdminStudentBulkError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentBulkErrorCopyWith<_AdminStudentBulkError> get copyWith => __$AdminStudentBulkErrorCopyWithImpl<_AdminStudentBulkError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentBulkErrorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentBulkError&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,error);
}

@override
String toString() {
    return 'AdminStudentBulkError(studentId: $studentId, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentBulkErrorCopyWith<$Res> implements $AdminStudentBulkErrorCopyWith<$Res> {
  factory _$AdminStudentBulkErrorCopyWith(_AdminStudentBulkError value, $Res Function(_AdminStudentBulkError) _then) = __$AdminStudentBulkErrorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id')@LooseStringConverter() String? studentId,@LooseStringConverter() String? error
});




}
/// @nodoc
class __$AdminStudentBulkErrorCopyWithImpl<$Res>
    implements _$AdminStudentBulkErrorCopyWith<$Res> {
  __$AdminStudentBulkErrorCopyWithImpl(this._self, this._then);

  final _AdminStudentBulkError _self;
  final $Res Function(_AdminStudentBulkError) _then;

/// Create a copy of AdminStudentBulkError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? error = freezed,}) {
  return _then(_AdminStudentBulkError(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStudentActiveSession {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of AdminStudentActiveSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentActiveSessionCopyWith<AdminStudentActiveSession> get copyWith => _$AdminStudentActiveSessionCopyWithImpl<AdminStudentActiveSession>(this as AdminStudentActiveSession, _$identity);

  /// Serializes this AdminStudentActiveSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentActiveSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentActiveSession&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentActiveSession;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName);
}

@override
String toString() {
  final _this = this as AdminStudentActiveSession;
  return 'AdminStudentActiveSession(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $AdminStudentActiveSessionCopyWith<$Res>  {
  factory $AdminStudentActiveSessionCopyWith(AdminStudentActiveSession value, $Res Function(AdminStudentActiveSession) _then) = _$AdminStudentActiveSessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$AdminStudentActiveSessionCopyWithImpl<$Res>
    implements $AdminStudentActiveSessionCopyWith<$Res> {
  _$AdminStudentActiveSessionCopyWithImpl(this._self, this._then);

  final AdminStudentActiveSession _self;
  final $Res Function(AdminStudentActiveSession) _then;

/// Create a copy of AdminStudentActiveSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(AdminStudentActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentActiveSession].
extension AdminStudentActiveSessionPatterns on AdminStudentActiveSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentActiveSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentActiveSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentActiveSession value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentActiveSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentActiveSession value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentActiveSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentActiveSession():
return $default(_that.sessionId,_that.sessionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentActiveSession implements AdminStudentActiveSession {
  const _AdminStudentActiveSession({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'session_name') this.sessionName});
  factory _AdminStudentActiveSession.fromJson(Map<String, dynamic> json) => _$AdminStudentActiveSessionFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of AdminStudentActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentActiveSessionCopyWith<_AdminStudentActiveSession> get copyWith => __$AdminStudentActiveSessionCopyWithImpl<_AdminStudentActiveSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentActiveSessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentActiveSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName);
}

@override
String toString() {
    return 'AdminStudentActiveSession(sessionId: $sessionId, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentActiveSessionCopyWith<$Res> implements $AdminStudentActiveSessionCopyWith<$Res> {
  factory _$AdminStudentActiveSessionCopyWith(_AdminStudentActiveSession value, $Res Function(_AdminStudentActiveSession) _then) = __$AdminStudentActiveSessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$AdminStudentActiveSessionCopyWithImpl<$Res>
    implements _$AdminStudentActiveSessionCopyWith<$Res> {
  __$AdminStudentActiveSessionCopyWithImpl(this._self, this._then);

  final _AdminStudentActiveSession _self;
  final $Res Function(_AdminStudentActiveSession) _then;

/// Create a copy of AdminStudentActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(_AdminStudentActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
