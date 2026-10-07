// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_school_life_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminDisciplineRow {

@JsonKey(name: 'discipline_id') String get disciplineId;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'incident_date') DateTime? get incidentDate;@JsonKey(name: 'incident_type') String get incidentType; String? get description; String? get severity;@JsonKey(name: 'action_taken') String? get actionTaken; String? get status;@JsonKey(name: 'resolved_at') DateTime? get resolvedAt; String? get remarks;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of AdminDisciplineRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminDisciplineRowCopyWith<AdminDisciplineRow> get copyWith => _$AdminDisciplineRowCopyWithImpl<AdminDisciplineRow>(this as AdminDisciplineRow, _$identity);

  /// Serializes this AdminDisciplineRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminDisciplineRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminDisciplineRow&&(identical(other.disciplineId, _this.disciplineId) || other.disciplineId == _this.disciplineId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.incidentDate, _this.incidentDate) || other.incidentDate == _this.incidentDate)&&(identical(other.incidentType, _this.incidentType) || other.incidentType == _this.incidentType)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.actionTaken, _this.actionTaken) || other.actionTaken == _this.actionTaken)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminDisciplineRow;
  return Object.hash(runtimeType,_this.disciplineId,_this.studentId,_this.incidentDate,_this.incidentType,_this.description,_this.severity,_this.actionTaken,_this.status,_this.resolvedAt,_this.remarks,_this.student);
}

@override
String toString() {
  final _this = this as AdminDisciplineRow;
  return 'AdminDisciplineRow(disciplineId: ${_this.disciplineId}, studentId: ${_this.studentId}, incidentDate: ${_this.incidentDate}, incidentType: ${_this.incidentType}, description: ${_this.description}, severity: ${_this.severity}, actionTaken: ${_this.actionTaken}, status: ${_this.status}, resolvedAt: ${_this.resolvedAt}, remarks: ${_this.remarks}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $AdminDisciplineRowCopyWith<$Res>  {
  factory $AdminDisciplineRowCopyWith(AdminDisciplineRow value, $Res Function(AdminDisciplineRow) _then) = _$AdminDisciplineRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'discipline_id') String disciplineId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'incident_date') DateTime? incidentDate,@JsonKey(name: 'incident_type') String incidentType, String? description, String? severity,@JsonKey(name: 'action_taken') String? actionTaken, String? status,@JsonKey(name: 'resolved_at') DateTime? resolvedAt, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$AdminDisciplineRowCopyWithImpl<$Res>
    implements $AdminDisciplineRowCopyWith<$Res> {
  _$AdminDisciplineRowCopyWithImpl(this._self, this._then);

  final AdminDisciplineRow _self;
  final $Res Function(AdminDisciplineRow) _then;

/// Create a copy of AdminDisciplineRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? disciplineId = null,Object? studentId = freezed,Object? incidentDate = freezed,Object? incidentType = null,Object? description = freezed,Object? severity = freezed,Object? actionTaken = freezed,Object? status = freezed,Object? resolvedAt = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(AdminDisciplineRow(
disciplineId: null == disciplineId ? _self.disciplineId : disciplineId // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,incidentDate: freezed == incidentDate ? _self.incidentDate : incidentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of AdminDisciplineRow
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


/// Adds pattern-matching-related methods to [AdminDisciplineRow].
extension AdminDisciplineRowPatterns on AdminDisciplineRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminDisciplineRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminDisciplineRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminDisciplineRow value)  $default,){
final _that = this;
switch (_that) {
case _AdminDisciplineRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminDisciplineRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdminDisciplineRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'discipline_id')  String disciplineId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'incident_date')  DateTime? incidentDate, @JsonKey(name: 'incident_type')  String incidentType,  String? description,  String? severity, @JsonKey(name: 'action_taken')  String? actionTaken,  String? status, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminDisciplineRow() when $default != null:
return $default(_that.disciplineId,_that.studentId,_that.incidentDate,_that.incidentType,_that.description,_that.severity,_that.actionTaken,_that.status,_that.resolvedAt,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'discipline_id')  String disciplineId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'incident_date')  DateTime? incidentDate, @JsonKey(name: 'incident_type')  String incidentType,  String? description,  String? severity, @JsonKey(name: 'action_taken')  String? actionTaken,  String? status, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _AdminDisciplineRow():
return $default(_that.disciplineId,_that.studentId,_that.incidentDate,_that.incidentType,_that.description,_that.severity,_that.actionTaken,_that.status,_that.resolvedAt,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'discipline_id')  String disciplineId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'incident_date')  DateTime? incidentDate, @JsonKey(name: 'incident_type')  String incidentType,  String? description,  String? severity, @JsonKey(name: 'action_taken')  String? actionTaken,  String? status, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _AdminDisciplineRow() when $default != null:
return $default(_that.disciplineId,_that.studentId,_that.incidentDate,_that.incidentType,_that.description,_that.severity,_that.actionTaken,_that.status,_that.resolvedAt,_that.remarks,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminDisciplineRow implements AdminDisciplineRow {
  const _AdminDisciplineRow({@JsonKey(name: 'discipline_id') required this.disciplineId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'incident_date') this.incidentDate, @JsonKey(name: 'incident_type') required this.incidentType, this.description, this.severity, @JsonKey(name: 'action_taken') this.actionTaken, this.status, @JsonKey(name: 'resolved_at') this.resolvedAt, this.remarks, @JsonKey(name: 'students') this.student});
  factory _AdminDisciplineRow.fromJson(Map<String, dynamic> json) => _$AdminDisciplineRowFromJson(json);

@override@JsonKey(name: 'discipline_id') final  String disciplineId;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'incident_date') final  DateTime? incidentDate;
@override@JsonKey(name: 'incident_type') final  String incidentType;
@override final  String? description;
@override final  String? severity;
@override@JsonKey(name: 'action_taken') final  String? actionTaken;
@override final  String? status;
@override@JsonKey(name: 'resolved_at') final  DateTime? resolvedAt;
@override final  String? remarks;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of AdminDisciplineRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminDisciplineRowCopyWith<_AdminDisciplineRow> get copyWith => __$AdminDisciplineRowCopyWithImpl<_AdminDisciplineRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminDisciplineRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminDisciplineRow&&(identical(other.disciplineId, disciplineId) || other.disciplineId == disciplineId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.incidentDate, incidentDate) || other.incidentDate == incidentDate)&&(identical(other.incidentType, incidentType) || other.incidentType == incidentType)&&(identical(other.description, description) || other.description == description)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,disciplineId,studentId,incidentDate,incidentType,description,severity,actionTaken,status,resolvedAt,remarks,student);
}

@override
String toString() {
    return 'AdminDisciplineRow(disciplineId: $disciplineId, studentId: $studentId, incidentDate: $incidentDate, incidentType: $incidentType, description: $description, severity: $severity, actionTaken: $actionTaken, status: $status, resolvedAt: $resolvedAt, remarks: $remarks, student: $student)';
}


}

/// @nodoc
abstract mixin class _$AdminDisciplineRowCopyWith<$Res> implements $AdminDisciplineRowCopyWith<$Res> {
  factory _$AdminDisciplineRowCopyWith(_AdminDisciplineRow value, $Res Function(_AdminDisciplineRow) _then) = __$AdminDisciplineRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'discipline_id') String disciplineId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'incident_date') DateTime? incidentDate,@JsonKey(name: 'incident_type') String incidentType, String? description, String? severity,@JsonKey(name: 'action_taken') String? actionTaken, String? status,@JsonKey(name: 'resolved_at') DateTime? resolvedAt, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$AdminDisciplineRowCopyWithImpl<$Res>
    implements _$AdminDisciplineRowCopyWith<$Res> {
  __$AdminDisciplineRowCopyWithImpl(this._self, this._then);

  final _AdminDisciplineRow _self;
  final $Res Function(_AdminDisciplineRow) _then;

/// Create a copy of AdminDisciplineRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? disciplineId = null,Object? studentId = freezed,Object? incidentDate = freezed,Object? incidentType = null,Object? description = freezed,Object? severity = freezed,Object? actionTaken = freezed,Object? status = freezed,Object? resolvedAt = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(_AdminDisciplineRow(
disciplineId: null == disciplineId ? _self.disciplineId : disciplineId // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,incidentDate: freezed == incidentDate ? _self.incidentDate : incidentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of AdminDisciplineRow
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
mixin _$AdminDisciplinePage {

 int get total; int get page; int get limit; List<AdminDisciplineRow> get data;
/// Create a copy of AdminDisciplinePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminDisciplinePageCopyWith<AdminDisciplinePage> get copyWith => _$AdminDisciplinePageCopyWithImpl<AdminDisciplinePage>(this as AdminDisciplinePage, _$identity);

  /// Serializes this AdminDisciplinePage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminDisciplinePage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminDisciplinePage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminDisciplinePage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdminDisciplinePage;
  return 'AdminDisciplinePage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdminDisciplinePageCopyWith<$Res>  {
  factory $AdminDisciplinePageCopyWith(AdminDisciplinePage value, $Res Function(AdminDisciplinePage) _then) = _$AdminDisciplinePageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdminDisciplineRow> data
});




}
/// @nodoc
class _$AdminDisciplinePageCopyWithImpl<$Res>
    implements $AdminDisciplinePageCopyWith<$Res> {
  _$AdminDisciplinePageCopyWithImpl(this._self, this._then);

  final AdminDisciplinePage _self;
  final $Res Function(AdminDisciplinePage) _then;

/// Create a copy of AdminDisciplinePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdminDisciplinePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdminDisciplineRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminDisciplinePage].
extension AdminDisciplinePagePatterns on AdminDisciplinePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminDisciplinePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminDisciplinePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminDisciplinePage value)  $default,){
final _that = this;
switch (_that) {
case _AdminDisciplinePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminDisciplinePage value)?  $default,){
final _that = this;
switch (_that) {
case _AdminDisciplinePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminDisciplineRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminDisciplinePage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminDisciplineRow> data)  $default,) {final _that = this;
switch (_that) {
case _AdminDisciplinePage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdminDisciplineRow> data)?  $default,) {final _that = this;
switch (_that) {
case _AdminDisciplinePage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminDisciplinePage implements AdminDisciplinePage {
  const _AdminDisciplinePage({this.total = 0, this.page = 1, this.limit = 20,  List<AdminDisciplineRow> data = const <AdminDisciplineRow>[]}): _data = data;
  factory _AdminDisciplinePage.fromJson(Map<String, dynamic> json) => _$AdminDisciplinePageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdminDisciplineRow> _data;
@override@JsonKey() List<AdminDisciplineRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdminDisciplinePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminDisciplinePageCopyWith<_AdminDisciplinePage> get copyWith => __$AdminDisciplinePageCopyWithImpl<_AdminDisciplinePage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminDisciplinePageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminDisciplinePage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdminDisciplinePage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminDisciplinePageCopyWith<$Res> implements $AdminDisciplinePageCopyWith<$Res> {
  factory _$AdminDisciplinePageCopyWith(_AdminDisciplinePage value, $Res Function(_AdminDisciplinePage) _then) = __$AdminDisciplinePageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdminDisciplineRow> data
});




}
/// @nodoc
class __$AdminDisciplinePageCopyWithImpl<$Res>
    implements _$AdminDisciplinePageCopyWith<$Res> {
  __$AdminDisciplinePageCopyWithImpl(this._self, this._then);

  final _AdminDisciplinePage _self;
  final $Res Function(_AdminDisciplinePage) _then;

/// Create a copy of AdminDisciplinePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdminDisciplinePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdminDisciplineRow>,
  ));
}


}


/// @nodoc
mixin _$AdminStudentLeaveRow {

@JsonKey(name: 'leave_id') String get leaveId;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'leave_type') String? get leaveType;@JsonKey(name: 'from_date') DateTime? get fromDate;@JsonKey(name: 'to_date') DateTime? get toDate;@JsonKey(name: 'total_days')@LooseNumConverter() num? get totalDays; String? get reason; String? get status;@JsonKey(name: 'approved_at') DateTime? get approvedAt; String? get remarks;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of AdminStudentLeaveRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentLeaveRowCopyWith<AdminStudentLeaveRow> get copyWith => _$AdminStudentLeaveRowCopyWithImpl<AdminStudentLeaveRow>(this as AdminStudentLeaveRow, _$identity);

  /// Serializes this AdminStudentLeaveRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentLeaveRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentLeaveRow&&(identical(other.leaveId, _this.leaveId) || other.leaveId == _this.leaveId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.leaveType, _this.leaveType) || other.leaveType == _this.leaveType)&&(identical(other.fromDate, _this.fromDate) || other.fromDate == _this.fromDate)&&(identical(other.toDate, _this.toDate) || other.toDate == _this.toDate)&&(identical(other.totalDays, _this.totalDays) || other.totalDays == _this.totalDays)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.approvedAt, _this.approvedAt) || other.approvedAt == _this.approvedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentLeaveRow;
  return Object.hash(runtimeType,_this.leaveId,_this.studentId,_this.leaveType,_this.fromDate,_this.toDate,_this.totalDays,_this.reason,_this.status,_this.approvedAt,_this.remarks,_this.student);
}

@override
String toString() {
  final _this = this as AdminStudentLeaveRow;
  return 'AdminStudentLeaveRow(leaveId: ${_this.leaveId}, studentId: ${_this.studentId}, leaveType: ${_this.leaveType}, fromDate: ${_this.fromDate}, toDate: ${_this.toDate}, totalDays: ${_this.totalDays}, reason: ${_this.reason}, status: ${_this.status}, approvedAt: ${_this.approvedAt}, remarks: ${_this.remarks}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $AdminStudentLeaveRowCopyWith<$Res>  {
  factory $AdminStudentLeaveRowCopyWith(AdminStudentLeaveRow value, $Res Function(AdminStudentLeaveRow) _then) = _$AdminStudentLeaveRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'from_date') DateTime? fromDate,@JsonKey(name: 'to_date') DateTime? toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status,@JsonKey(name: 'approved_at') DateTime? approvedAt, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$AdminStudentLeaveRowCopyWithImpl<$Res>
    implements $AdminStudentLeaveRowCopyWith<$Res> {
  _$AdminStudentLeaveRowCopyWithImpl(this._self, this._then);

  final AdminStudentLeaveRow _self;
  final $Res Function(AdminStudentLeaveRow) _then;

/// Create a copy of AdminStudentLeaveRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveId = null,Object? studentId = freezed,Object? leaveType = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? approvedAt = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(AdminStudentLeaveRow(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of AdminStudentLeaveRow
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


/// Adds pattern-matching-related methods to [AdminStudentLeaveRow].
extension AdminStudentLeaveRowPatterns on AdminStudentLeaveRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentLeaveRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentLeaveRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentLeaveRow value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentLeaveRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentLeaveRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentLeaveRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'from_date')  DateTime? fromDate, @JsonKey(name: 'to_date')  DateTime? toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status, @JsonKey(name: 'approved_at')  DateTime? approvedAt,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentLeaveRow() when $default != null:
return $default(_that.leaveId,_that.studentId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'from_date')  DateTime? fromDate, @JsonKey(name: 'to_date')  DateTime? toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status, @JsonKey(name: 'approved_at')  DateTime? approvedAt,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentLeaveRow():
return $default(_that.leaveId,_that.studentId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'from_date')  DateTime? fromDate, @JsonKey(name: 'to_date')  DateTime? toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status, @JsonKey(name: 'approved_at')  DateTime? approvedAt,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentLeaveRow() when $default != null:
return $default(_that.leaveId,_that.studentId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentLeaveRow implements AdminStudentLeaveRow {
  const _AdminStudentLeaveRow({@JsonKey(name: 'leave_id') required this.leaveId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'leave_type') this.leaveType, @JsonKey(name: 'from_date') this.fromDate, @JsonKey(name: 'to_date') this.toDate, @JsonKey(name: 'total_days')@LooseNumConverter() this.totalDays, this.reason, this.status, @JsonKey(name: 'approved_at') this.approvedAt, this.remarks, @JsonKey(name: 'students') this.student});
  factory _AdminStudentLeaveRow.fromJson(Map<String, dynamic> json) => _$AdminStudentLeaveRowFromJson(json);

@override@JsonKey(name: 'leave_id') final  String leaveId;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'leave_type') final  String? leaveType;
@override@JsonKey(name: 'from_date') final  DateTime? fromDate;
@override@JsonKey(name: 'to_date') final  DateTime? toDate;
@override@JsonKey(name: 'total_days')@LooseNumConverter() final  num? totalDays;
@override final  String? reason;
@override final  String? status;
@override@JsonKey(name: 'approved_at') final  DateTime? approvedAt;
@override final  String? remarks;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of AdminStudentLeaveRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentLeaveRowCopyWith<_AdminStudentLeaveRow> get copyWith => __$AdminStudentLeaveRowCopyWithImpl<_AdminStudentLeaveRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentLeaveRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentLeaveRow&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaveId,studentId,leaveType,fromDate,toDate,totalDays,reason,status,approvedAt,remarks,student);
}

@override
String toString() {
    return 'AdminStudentLeaveRow(leaveId: $leaveId, studentId: $studentId, leaveType: $leaveType, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, reason: $reason, status: $status, approvedAt: $approvedAt, remarks: $remarks, student: $student)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentLeaveRowCopyWith<$Res> implements $AdminStudentLeaveRowCopyWith<$Res> {
  factory _$AdminStudentLeaveRowCopyWith(_AdminStudentLeaveRow value, $Res Function(_AdminStudentLeaveRow) _then) = __$AdminStudentLeaveRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'from_date') DateTime? fromDate,@JsonKey(name: 'to_date') DateTime? toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status,@JsonKey(name: 'approved_at') DateTime? approvedAt, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$AdminStudentLeaveRowCopyWithImpl<$Res>
    implements _$AdminStudentLeaveRowCopyWith<$Res> {
  __$AdminStudentLeaveRowCopyWithImpl(this._self, this._then);

  final _AdminStudentLeaveRow _self;
  final $Res Function(_AdminStudentLeaveRow) _then;

/// Create a copy of AdminStudentLeaveRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveId = null,Object? studentId = freezed,Object? leaveType = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? approvedAt = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(_AdminStudentLeaveRow(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of AdminStudentLeaveRow
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
mixin _$AdminStudentLeavePage {

 int get total; int get page; int get limit; List<AdminStudentLeaveRow> get data;
/// Create a copy of AdminStudentLeavePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStudentLeavePageCopyWith<AdminStudentLeavePage> get copyWith => _$AdminStudentLeavePageCopyWithImpl<AdminStudentLeavePage>(this as AdminStudentLeavePage, _$identity);

  /// Serializes this AdminStudentLeavePage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStudentLeavePage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStudentLeavePage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStudentLeavePage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdminStudentLeavePage;
  return 'AdminStudentLeavePage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdminStudentLeavePageCopyWith<$Res>  {
  factory $AdminStudentLeavePageCopyWith(AdminStudentLeavePage value, $Res Function(AdminStudentLeavePage) _then) = _$AdminStudentLeavePageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdminStudentLeaveRow> data
});




}
/// @nodoc
class _$AdminStudentLeavePageCopyWithImpl<$Res>
    implements $AdminStudentLeavePageCopyWith<$Res> {
  _$AdminStudentLeavePageCopyWithImpl(this._self, this._then);

  final AdminStudentLeavePage _self;
  final $Res Function(AdminStudentLeavePage) _then;

/// Create a copy of AdminStudentLeavePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdminStudentLeavePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdminStudentLeaveRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStudentLeavePage].
extension AdminStudentLeavePagePatterns on AdminStudentLeavePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStudentLeavePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStudentLeavePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStudentLeavePage value)  $default,){
final _that = this;
switch (_that) {
case _AdminStudentLeavePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStudentLeavePage value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStudentLeavePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminStudentLeaveRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStudentLeavePage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminStudentLeaveRow> data)  $default,) {final _that = this;
switch (_that) {
case _AdminStudentLeavePage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdminStudentLeaveRow> data)?  $default,) {final _that = this;
switch (_that) {
case _AdminStudentLeavePage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStudentLeavePage implements AdminStudentLeavePage {
  const _AdminStudentLeavePage({this.total = 0, this.page = 1, this.limit = 20,  List<AdminStudentLeaveRow> data = const <AdminStudentLeaveRow>[]}): _data = data;
  factory _AdminStudentLeavePage.fromJson(Map<String, dynamic> json) => _$AdminStudentLeavePageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdminStudentLeaveRow> _data;
@override@JsonKey() List<AdminStudentLeaveRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdminStudentLeavePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStudentLeavePageCopyWith<_AdminStudentLeavePage> get copyWith => __$AdminStudentLeavePageCopyWithImpl<_AdminStudentLeavePage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStudentLeavePageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStudentLeavePage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdminStudentLeavePage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminStudentLeavePageCopyWith<$Res> implements $AdminStudentLeavePageCopyWith<$Res> {
  factory _$AdminStudentLeavePageCopyWith(_AdminStudentLeavePage value, $Res Function(_AdminStudentLeavePage) _then) = __$AdminStudentLeavePageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdminStudentLeaveRow> data
});




}
/// @nodoc
class __$AdminStudentLeavePageCopyWithImpl<$Res>
    implements _$AdminStudentLeavePageCopyWith<$Res> {
  __$AdminStudentLeavePageCopyWithImpl(this._self, this._then);

  final _AdminStudentLeavePage _self;
  final $Res Function(_AdminStudentLeavePage) _then;

/// Create a copy of AdminStudentLeavePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdminStudentLeavePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdminStudentLeaveRow>,
  ));
}


}


/// @nodoc
mixin _$LeaveStaffRef {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation;
/// Create a copy of LeaveStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveStaffRefCopyWith<LeaveStaffRef> get copyWith => _$LeaveStaffRefCopyWithImpl<LeaveStaffRef>(this as LeaveStaffRef, _$identity);

  /// Serializes this LeaveStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaveStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveStaffRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaveStaffRef;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.designation);
}

@override
String toString() {
  final _this = this as LeaveStaffRef;
  return 'LeaveStaffRef(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation})';
}


}

/// @nodoc
abstract mixin class $LeaveStaffRefCopyWith<$Res>  {
  factory $LeaveStaffRefCopyWith(LeaveStaffRef value, $Res Function(LeaveStaffRef) _then) = _$LeaveStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation
});




}
/// @nodoc
class _$LeaveStaffRefCopyWithImpl<$Res>
    implements $LeaveStaffRefCopyWith<$Res> {
  _$LeaveStaffRefCopyWithImpl(this._self, this._then);

  final LeaveStaffRef _self;
  final $Res Function(LeaveStaffRef) _then;

/// Create a copy of LeaveStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,}) {
  return _then(LeaveStaffRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveStaffRef].
extension LeaveStaffRefPatterns on LeaveStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _LeaveStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveStaffRef() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation)  $default,) {final _that = this;
switch (_that) {
case _LeaveStaffRef():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation)?  $default,) {final _that = this;
switch (_that) {
case _LeaveStaffRef() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveStaffRef implements LeaveStaffRef {
  const _LeaveStaffRef({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation});
  factory _LeaveStaffRef.fromJson(Map<String, dynamic> json) => _$LeaveStaffRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;

/// Create a copy of LeaveStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveStaffRefCopyWith<_LeaveStaffRef> get copyWith => __$LeaveStaffRefCopyWithImpl<_LeaveStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveStaffRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,designation);
}

@override
String toString() {
    return 'LeaveStaffRef(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, designation: $designation)';
}


}

/// @nodoc
abstract mixin class _$LeaveStaffRefCopyWith<$Res> implements $LeaveStaffRefCopyWith<$Res> {
  factory _$LeaveStaffRefCopyWith(_LeaveStaffRef value, $Res Function(_LeaveStaffRef) _then) = __$LeaveStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation
});




}
/// @nodoc
class __$LeaveStaffRefCopyWithImpl<$Res>
    implements _$LeaveStaffRefCopyWith<$Res> {
  __$LeaveStaffRefCopyWithImpl(this._self, this._then);

  final _LeaveStaffRef _self;
  final $Res Function(_LeaveStaffRef) _then;

/// Create a copy of LeaveStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,}) {
  return _then(_LeaveStaffRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminStaffLeaveRow {

@JsonKey(name: 'leave_id') String get leaveId;@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'leave_type') String? get leaveType;@JsonKey(name: 'from_date') DateTime? get fromDate;@JsonKey(name: 'to_date') DateTime? get toDate;@JsonKey(name: 'total_days')@LooseNumConverter() num? get totalDays; String? get reason; String? get status;@JsonKey(name: 'approved_at') DateTime? get approvedAt; String? get remarks;@JsonKey(name: 'staff_accounts') LeaveStaffRef? get staff;
/// Create a copy of AdminStaffLeaveRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStaffLeaveRowCopyWith<AdminStaffLeaveRow> get copyWith => _$AdminStaffLeaveRowCopyWithImpl<AdminStaffLeaveRow>(this as AdminStaffLeaveRow, _$identity);

  /// Serializes this AdminStaffLeaveRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStaffLeaveRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStaffLeaveRow&&(identical(other.leaveId, _this.leaveId) || other.leaveId == _this.leaveId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.leaveType, _this.leaveType) || other.leaveType == _this.leaveType)&&(identical(other.fromDate, _this.fromDate) || other.fromDate == _this.fromDate)&&(identical(other.toDate, _this.toDate) || other.toDate == _this.toDate)&&(identical(other.totalDays, _this.totalDays) || other.totalDays == _this.totalDays)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.approvedAt, _this.approvedAt) || other.approvedAt == _this.approvedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.staff, _this.staff) || other.staff == _this.staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStaffLeaveRow;
  return Object.hash(runtimeType,_this.leaveId,_this.staffId,_this.leaveType,_this.fromDate,_this.toDate,_this.totalDays,_this.reason,_this.status,_this.approvedAt,_this.remarks,_this.staff);
}

@override
String toString() {
  final _this = this as AdminStaffLeaveRow;
  return 'AdminStaffLeaveRow(leaveId: ${_this.leaveId}, staffId: ${_this.staffId}, leaveType: ${_this.leaveType}, fromDate: ${_this.fromDate}, toDate: ${_this.toDate}, totalDays: ${_this.totalDays}, reason: ${_this.reason}, status: ${_this.status}, approvedAt: ${_this.approvedAt}, remarks: ${_this.remarks}, staff: ${_this.staff})';
}


}

/// @nodoc
abstract mixin class $AdminStaffLeaveRowCopyWith<$Res>  {
  factory $AdminStaffLeaveRowCopyWith(AdminStaffLeaveRow value, $Res Function(AdminStaffLeaveRow) _then) = _$AdminStaffLeaveRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'from_date') DateTime? fromDate,@JsonKey(name: 'to_date') DateTime? toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status,@JsonKey(name: 'approved_at') DateTime? approvedAt, String? remarks,@JsonKey(name: 'staff_accounts') LeaveStaffRef? staff
});


$LeaveStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class _$AdminStaffLeaveRowCopyWithImpl<$Res>
    implements $AdminStaffLeaveRowCopyWith<$Res> {
  _$AdminStaffLeaveRowCopyWithImpl(this._self, this._then);

  final AdminStaffLeaveRow _self;
  final $Res Function(AdminStaffLeaveRow) _then;

/// Create a copy of AdminStaffLeaveRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveId = null,Object? staffId = freezed,Object? leaveType = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? approvedAt = freezed,Object? remarks = freezed,Object? staff = freezed,}) {
  return _then(AdminStaffLeaveRow(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as LeaveStaffRef?,
  ));
}
/// Create a copy of AdminStaffLeaveRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $LeaveStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStaffLeaveRow].
extension AdminStaffLeaveRowPatterns on AdminStaffLeaveRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStaffLeaveRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStaffLeaveRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStaffLeaveRow value)  $default,){
final _that = this;
switch (_that) {
case _AdminStaffLeaveRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStaffLeaveRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStaffLeaveRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'from_date')  DateTime? fromDate, @JsonKey(name: 'to_date')  DateTime? toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status, @JsonKey(name: 'approved_at')  DateTime? approvedAt,  String? remarks, @JsonKey(name: 'staff_accounts')  LeaveStaffRef? staff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStaffLeaveRow() when $default != null:
return $default(_that.leaveId,_that.staffId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.staff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'from_date')  DateTime? fromDate, @JsonKey(name: 'to_date')  DateTime? toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status, @JsonKey(name: 'approved_at')  DateTime? approvedAt,  String? remarks, @JsonKey(name: 'staff_accounts')  LeaveStaffRef? staff)  $default,) {final _that = this;
switch (_that) {
case _AdminStaffLeaveRow():
return $default(_that.leaveId,_that.staffId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.staff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'from_date')  DateTime? fromDate, @JsonKey(name: 'to_date')  DateTime? toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status, @JsonKey(name: 'approved_at')  DateTime? approvedAt,  String? remarks, @JsonKey(name: 'staff_accounts')  LeaveStaffRef? staff)?  $default,) {final _that = this;
switch (_that) {
case _AdminStaffLeaveRow() when $default != null:
return $default(_that.leaveId,_that.staffId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.staff);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStaffLeaveRow implements AdminStaffLeaveRow {
  const _AdminStaffLeaveRow({@JsonKey(name: 'leave_id') required this.leaveId, @JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'leave_type') this.leaveType, @JsonKey(name: 'from_date') this.fromDate, @JsonKey(name: 'to_date') this.toDate, @JsonKey(name: 'total_days')@LooseNumConverter() this.totalDays, this.reason, this.status, @JsonKey(name: 'approved_at') this.approvedAt, this.remarks, @JsonKey(name: 'staff_accounts') this.staff});
  factory _AdminStaffLeaveRow.fromJson(Map<String, dynamic> json) => _$AdminStaffLeaveRowFromJson(json);

@override@JsonKey(name: 'leave_id') final  String leaveId;
@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'leave_type') final  String? leaveType;
@override@JsonKey(name: 'from_date') final  DateTime? fromDate;
@override@JsonKey(name: 'to_date') final  DateTime? toDate;
@override@JsonKey(name: 'total_days')@LooseNumConverter() final  num? totalDays;
@override final  String? reason;
@override final  String? status;
@override@JsonKey(name: 'approved_at') final  DateTime? approvedAt;
@override final  String? remarks;
@override@JsonKey(name: 'staff_accounts') final  LeaveStaffRef? staff;

/// Create a copy of AdminStaffLeaveRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStaffLeaveRowCopyWith<_AdminStaffLeaveRow> get copyWith => __$AdminStaffLeaveRowCopyWithImpl<_AdminStaffLeaveRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStaffLeaveRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStaffLeaveRow&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.staff, staff) || other.staff == staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaveId,staffId,leaveType,fromDate,toDate,totalDays,reason,status,approvedAt,remarks,staff);
}

@override
String toString() {
    return 'AdminStaffLeaveRow(leaveId: $leaveId, staffId: $staffId, leaveType: $leaveType, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, reason: $reason, status: $status, approvedAt: $approvedAt, remarks: $remarks, staff: $staff)';
}


}

/// @nodoc
abstract mixin class _$AdminStaffLeaveRowCopyWith<$Res> implements $AdminStaffLeaveRowCopyWith<$Res> {
  factory _$AdminStaffLeaveRowCopyWith(_AdminStaffLeaveRow value, $Res Function(_AdminStaffLeaveRow) _then) = __$AdminStaffLeaveRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'from_date') DateTime? fromDate,@JsonKey(name: 'to_date') DateTime? toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status,@JsonKey(name: 'approved_at') DateTime? approvedAt, String? remarks,@JsonKey(name: 'staff_accounts') LeaveStaffRef? staff
});


@override $LeaveStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class __$AdminStaffLeaveRowCopyWithImpl<$Res>
    implements _$AdminStaffLeaveRowCopyWith<$Res> {
  __$AdminStaffLeaveRowCopyWithImpl(this._self, this._then);

  final _AdminStaffLeaveRow _self;
  final $Res Function(_AdminStaffLeaveRow) _then;

/// Create a copy of AdminStaffLeaveRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveId = null,Object? staffId = freezed,Object? leaveType = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? approvedAt = freezed,Object? remarks = freezed,Object? staff = freezed,}) {
  return _then(_AdminStaffLeaveRow(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as LeaveStaffRef?,
  ));
}

/// Create a copy of AdminStaffLeaveRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $LeaveStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// @nodoc
mixin _$AdminStaffLeavePage {

 int get total; int get page; int get limit; List<AdminStaffLeaveRow> get data;
/// Create a copy of AdminStaffLeavePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStaffLeavePageCopyWith<AdminStaffLeavePage> get copyWith => _$AdminStaffLeavePageCopyWithImpl<AdminStaffLeavePage>(this as AdminStaffLeavePage, _$identity);

  /// Serializes this AdminStaffLeavePage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStaffLeavePage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStaffLeavePage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStaffLeavePage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdminStaffLeavePage;
  return 'AdminStaffLeavePage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdminStaffLeavePageCopyWith<$Res>  {
  factory $AdminStaffLeavePageCopyWith(AdminStaffLeavePage value, $Res Function(AdminStaffLeavePage) _then) = _$AdminStaffLeavePageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdminStaffLeaveRow> data
});




}
/// @nodoc
class _$AdminStaffLeavePageCopyWithImpl<$Res>
    implements $AdminStaffLeavePageCopyWith<$Res> {
  _$AdminStaffLeavePageCopyWithImpl(this._self, this._then);

  final AdminStaffLeavePage _self;
  final $Res Function(AdminStaffLeavePage) _then;

/// Create a copy of AdminStaffLeavePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdminStaffLeavePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdminStaffLeaveRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStaffLeavePage].
extension AdminStaffLeavePagePatterns on AdminStaffLeavePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStaffLeavePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStaffLeavePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStaffLeavePage value)  $default,){
final _that = this;
switch (_that) {
case _AdminStaffLeavePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStaffLeavePage value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStaffLeavePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminStaffLeaveRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStaffLeavePage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminStaffLeaveRow> data)  $default,) {final _that = this;
switch (_that) {
case _AdminStaffLeavePage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdminStaffLeaveRow> data)?  $default,) {final _that = this;
switch (_that) {
case _AdminStaffLeavePage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStaffLeavePage implements AdminStaffLeavePage {
  const _AdminStaffLeavePage({this.total = 0, this.page = 1, this.limit = 20,  List<AdminStaffLeaveRow> data = const <AdminStaffLeaveRow>[]}): _data = data;
  factory _AdminStaffLeavePage.fromJson(Map<String, dynamic> json) => _$AdminStaffLeavePageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdminStaffLeaveRow> _data;
@override@JsonKey() List<AdminStaffLeaveRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdminStaffLeavePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStaffLeavePageCopyWith<_AdminStaffLeavePage> get copyWith => __$AdminStaffLeavePageCopyWithImpl<_AdminStaffLeavePage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStaffLeavePageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStaffLeavePage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdminStaffLeavePage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminStaffLeavePageCopyWith<$Res> implements $AdminStaffLeavePageCopyWith<$Res> {
  factory _$AdminStaffLeavePageCopyWith(_AdminStaffLeavePage value, $Res Function(_AdminStaffLeavePage) _then) = __$AdminStaffLeavePageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdminStaffLeaveRow> data
});




}
/// @nodoc
class __$AdminStaffLeavePageCopyWithImpl<$Res>
    implements _$AdminStaffLeavePageCopyWith<$Res> {
  __$AdminStaffLeavePageCopyWithImpl(this._self, this._then);

  final _AdminStaffLeavePage _self;
  final $Res Function(_AdminStaffLeavePage) _then;

/// Create a copy of AdminStaffLeavePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdminStaffLeavePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdminStaffLeaveRow>,
  ));
}


}

// dart format on
