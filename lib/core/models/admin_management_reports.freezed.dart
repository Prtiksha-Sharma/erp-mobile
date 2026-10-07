// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_management_reports.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassStrengthRow {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'class_name') String get className; int get total;
/// Create a copy of ClassStrengthRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassStrengthRowCopyWith<ClassStrengthRow> get copyWith => _$ClassStrengthRowCopyWithImpl<ClassStrengthRow>(this as ClassStrengthRow, _$identity);

  /// Serializes this ClassStrengthRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassStrengthRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassStrengthRow&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassStrengthRow;
  return Object.hash(runtimeType,_this.classId,_this.className,_this.total);
}

@override
String toString() {
  final _this = this as ClassStrengthRow;
  return 'ClassStrengthRow(classId: ${_this.classId}, className: ${_this.className}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $ClassStrengthRowCopyWith<$Res>  {
  factory $ClassStrengthRowCopyWith(ClassStrengthRow value, $Res Function(ClassStrengthRow) _then) = _$ClassStrengthRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String className, int total
});




}
/// @nodoc
class _$ClassStrengthRowCopyWithImpl<$Res>
    implements $ClassStrengthRowCopyWith<$Res> {
  _$ClassStrengthRowCopyWithImpl(this._self, this._then);

  final ClassStrengthRow _self;
  final $Res Function(ClassStrengthRow) _then;

/// Create a copy of ClassStrengthRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? className = null,Object? total = null,}) {
  return _then(ClassStrengthRow(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassStrengthRow].
extension ClassStrengthRowPatterns on ClassStrengthRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassStrengthRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassStrengthRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassStrengthRow value)  $default,){
final _that = this;
switch (_that) {
case _ClassStrengthRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassStrengthRow value)?  $default,){
final _that = this;
switch (_that) {
case _ClassStrengthRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String className,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassStrengthRow() when $default != null:
return $default(_that.classId,_that.className,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String className,  int total)  $default,) {final _that = this;
switch (_that) {
case _ClassStrengthRow():
return $default(_that.classId,_that.className,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String className,  int total)?  $default,) {final _that = this;
switch (_that) {
case _ClassStrengthRow() when $default != null:
return $default(_that.classId,_that.className,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassStrengthRow implements ClassStrengthRow {
  const _ClassStrengthRow({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'class_name') required this.className, this.total = 0});
  factory _ClassStrengthRow.fromJson(Map<String, dynamic> json) => _$ClassStrengthRowFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'class_name') final  String className;
@override@JsonKey() final  int total;

/// Create a copy of ClassStrengthRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassStrengthRowCopyWith<_ClassStrengthRow> get copyWith => __$ClassStrengthRowCopyWithImpl<_ClassStrengthRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassStrengthRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassStrengthRow&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,className,total);
}

@override
String toString() {
    return 'ClassStrengthRow(classId: $classId, className: $className, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ClassStrengthRowCopyWith<$Res> implements $ClassStrengthRowCopyWith<$Res> {
  factory _$ClassStrengthRowCopyWith(_ClassStrengthRow value, $Res Function(_ClassStrengthRow) _then) = __$ClassStrengthRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String className, int total
});




}
/// @nodoc
class __$ClassStrengthRowCopyWithImpl<$Res>
    implements _$ClassStrengthRowCopyWith<$Res> {
  __$ClassStrengthRowCopyWithImpl(this._self, this._then);

  final _ClassStrengthRow _self;
  final $Res Function(_ClassStrengthRow) _then;

/// Create a copy of ClassStrengthRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? className = null,Object? total = null,}) {
  return _then(_ClassStrengthRow(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PromotionReportRow {

@JsonKey(name: 'promotion_id') String get promotionId;@JsonKey(name: 'promotion_status') String? get promotionStatus;@JsonKey(name: 'promoted_at') DateTime? get promotedAt; String? get remarks; PromotionReportStudent? get student; PromotionReportPlacement? get from; PromotionReportPlacement? get to;@JsonKey(name: 'promoted_by') String? get promotedBy;
/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionReportRowCopyWith<PromotionReportRow> get copyWith => _$PromotionReportRowCopyWithImpl<PromotionReportRow>(this as PromotionReportRow, _$identity);

  /// Serializes this PromotionReportRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PromotionReportRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionReportRow&&(identical(other.promotionId, _this.promotionId) || other.promotionId == _this.promotionId)&&(identical(other.promotionStatus, _this.promotionStatus) || other.promotionStatus == _this.promotionStatus)&&(identical(other.promotedAt, _this.promotedAt) || other.promotedAt == _this.promotedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.promotedBy, _this.promotedBy) || other.promotedBy == _this.promotedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PromotionReportRow;
  return Object.hash(runtimeType,_this.promotionId,_this.promotionStatus,_this.promotedAt,_this.remarks,_this.student,_this.from,_this.to,_this.promotedBy);
}

@override
String toString() {
  final _this = this as PromotionReportRow;
  return 'PromotionReportRow(promotionId: ${_this.promotionId}, promotionStatus: ${_this.promotionStatus}, promotedAt: ${_this.promotedAt}, remarks: ${_this.remarks}, student: ${_this.student}, from: ${_this.from}, to: ${_this.to}, promotedBy: ${_this.promotedBy})';
}


}

/// @nodoc
abstract mixin class $PromotionReportRowCopyWith<$Res>  {
  factory $PromotionReportRowCopyWith(PromotionReportRow value, $Res Function(PromotionReportRow) _then) = _$PromotionReportRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'promotion_id') String promotionId,@JsonKey(name: 'promotion_status') String? promotionStatus,@JsonKey(name: 'promoted_at') DateTime? promotedAt, String? remarks, PromotionReportStudent? student, PromotionReportPlacement? from, PromotionReportPlacement? to,@JsonKey(name: 'promoted_by') String? promotedBy
});


$PromotionReportStudentCopyWith<$Res>? get student;$PromotionReportPlacementCopyWith<$Res>? get from;$PromotionReportPlacementCopyWith<$Res>? get to;

}
/// @nodoc
class _$PromotionReportRowCopyWithImpl<$Res>
    implements $PromotionReportRowCopyWith<$Res> {
  _$PromotionReportRowCopyWithImpl(this._self, this._then);

  final PromotionReportRow _self;
  final $Res Function(PromotionReportRow) _then;

/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promotionId = null,Object? promotionStatus = freezed,Object? promotedAt = freezed,Object? remarks = freezed,Object? student = freezed,Object? from = freezed,Object? to = freezed,Object? promotedBy = freezed,}) {
  return _then(PromotionReportRow(
promotionId: null == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String,promotionStatus: freezed == promotionStatus ? _self.promotionStatus : promotionStatus // ignore: cast_nullable_to_non_nullable
as String?,promotedAt: freezed == promotedAt ? _self.promotedAt : promotedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as PromotionReportStudent?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as PromotionReportPlacement?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as PromotionReportPlacement?,promotedBy: freezed == promotedBy ? _self.promotedBy : promotedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionReportStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $PromotionReportStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionReportPlacementCopyWith<$Res>? get from {
    if (_self.from == null) {
    return null;
  }

  return $PromotionReportPlacementCopyWith<$Res>(_self.from!, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionReportPlacementCopyWith<$Res>? get to {
    if (_self.to == null) {
    return null;
  }

  return $PromotionReportPlacementCopyWith<$Res>(_self.to!, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionReportRow].
extension PromotionReportRowPatterns on PromotionReportRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionReportRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionReportRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionReportRow value)  $default,){
final _that = this;
switch (_that) {
case _PromotionReportRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionReportRow value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionReportRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'promotion_id')  String promotionId, @JsonKey(name: 'promotion_status')  String? promotionStatus, @JsonKey(name: 'promoted_at')  DateTime? promotedAt,  String? remarks,  PromotionReportStudent? student,  PromotionReportPlacement? from,  PromotionReportPlacement? to, @JsonKey(name: 'promoted_by')  String? promotedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionReportRow() when $default != null:
return $default(_that.promotionId,_that.promotionStatus,_that.promotedAt,_that.remarks,_that.student,_that.from,_that.to,_that.promotedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'promotion_id')  String promotionId, @JsonKey(name: 'promotion_status')  String? promotionStatus, @JsonKey(name: 'promoted_at')  DateTime? promotedAt,  String? remarks,  PromotionReportStudent? student,  PromotionReportPlacement? from,  PromotionReportPlacement? to, @JsonKey(name: 'promoted_by')  String? promotedBy)  $default,) {final _that = this;
switch (_that) {
case _PromotionReportRow():
return $default(_that.promotionId,_that.promotionStatus,_that.promotedAt,_that.remarks,_that.student,_that.from,_that.to,_that.promotedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'promotion_id')  String promotionId, @JsonKey(name: 'promotion_status')  String? promotionStatus, @JsonKey(name: 'promoted_at')  DateTime? promotedAt,  String? remarks,  PromotionReportStudent? student,  PromotionReportPlacement? from,  PromotionReportPlacement? to, @JsonKey(name: 'promoted_by')  String? promotedBy)?  $default,) {final _that = this;
switch (_that) {
case _PromotionReportRow() when $default != null:
return $default(_that.promotionId,_that.promotionStatus,_that.promotedAt,_that.remarks,_that.student,_that.from,_that.to,_that.promotedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionReportRow implements PromotionReportRow {
  const _PromotionReportRow({@JsonKey(name: 'promotion_id') required this.promotionId, @JsonKey(name: 'promotion_status') this.promotionStatus, @JsonKey(name: 'promoted_at') this.promotedAt, this.remarks, this.student, this.from, this.to, @JsonKey(name: 'promoted_by') this.promotedBy});
  factory _PromotionReportRow.fromJson(Map<String, dynamic> json) => _$PromotionReportRowFromJson(json);

@override@JsonKey(name: 'promotion_id') final  String promotionId;
@override@JsonKey(name: 'promotion_status') final  String? promotionStatus;
@override@JsonKey(name: 'promoted_at') final  DateTime? promotedAt;
@override final  String? remarks;
@override final  PromotionReportStudent? student;
@override final  PromotionReportPlacement? from;
@override final  PromotionReportPlacement? to;
@override@JsonKey(name: 'promoted_by') final  String? promotedBy;

/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionReportRowCopyWith<_PromotionReportRow> get copyWith => __$PromotionReportRowCopyWithImpl<_PromotionReportRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionReportRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionReportRow&&(identical(other.promotionId, promotionId) || other.promotionId == promotionId)&&(identical(other.promotionStatus, promotionStatus) || other.promotionStatus == promotionStatus)&&(identical(other.promotedAt, promotedAt) || other.promotedAt == promotedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.promotedBy, promotedBy) || other.promotedBy == promotedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,promotionId,promotionStatus,promotedAt,remarks,student,from,to,promotedBy);
}

@override
String toString() {
    return 'PromotionReportRow(promotionId: $promotionId, promotionStatus: $promotionStatus, promotedAt: $promotedAt, remarks: $remarks, student: $student, from: $from, to: $to, promotedBy: $promotedBy)';
}


}

/// @nodoc
abstract mixin class _$PromotionReportRowCopyWith<$Res> implements $PromotionReportRowCopyWith<$Res> {
  factory _$PromotionReportRowCopyWith(_PromotionReportRow value, $Res Function(_PromotionReportRow) _then) = __$PromotionReportRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'promotion_id') String promotionId,@JsonKey(name: 'promotion_status') String? promotionStatus,@JsonKey(name: 'promoted_at') DateTime? promotedAt, String? remarks, PromotionReportStudent? student, PromotionReportPlacement? from, PromotionReportPlacement? to,@JsonKey(name: 'promoted_by') String? promotedBy
});


@override $PromotionReportStudentCopyWith<$Res>? get student;@override $PromotionReportPlacementCopyWith<$Res>? get from;@override $PromotionReportPlacementCopyWith<$Res>? get to;

}
/// @nodoc
class __$PromotionReportRowCopyWithImpl<$Res>
    implements _$PromotionReportRowCopyWith<$Res> {
  __$PromotionReportRowCopyWithImpl(this._self, this._then);

  final _PromotionReportRow _self;
  final $Res Function(_PromotionReportRow) _then;

/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promotionId = null,Object? promotionStatus = freezed,Object? promotedAt = freezed,Object? remarks = freezed,Object? student = freezed,Object? from = freezed,Object? to = freezed,Object? promotedBy = freezed,}) {
  return _then(_PromotionReportRow(
promotionId: null == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String,promotionStatus: freezed == promotionStatus ? _self.promotionStatus : promotionStatus // ignore: cast_nullable_to_non_nullable
as String?,promotedAt: freezed == promotedAt ? _self.promotedAt : promotedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as PromotionReportStudent?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as PromotionReportPlacement?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as PromotionReportPlacement?,promotedBy: freezed == promotedBy ? _self.promotedBy : promotedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionReportStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $PromotionReportStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionReportPlacementCopyWith<$Res>? get from {
    if (_self.from == null) {
    return null;
  }

  return $PromotionReportPlacementCopyWith<$Res>(_self.from!, (value) {
    return _then(_self.copyWith(from: value));
  });
}/// Create a copy of PromotionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionReportPlacementCopyWith<$Res>? get to {
    if (_self.to == null) {
    return null;
  }

  return $PromotionReportPlacementCopyWith<$Res>(_self.to!, (value) {
    return _then(_self.copyWith(to: value));
  });
}
}


/// @nodoc
mixin _$PromotionReportStudent {

@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'admission_no') String? get admissionNo; String? get name;
/// Create a copy of PromotionReportStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionReportStudentCopyWith<PromotionReportStudent> get copyWith => _$PromotionReportStudentCopyWithImpl<PromotionReportStudent>(this as PromotionReportStudent, _$identity);

  /// Serializes this PromotionReportStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PromotionReportStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionReportStudent&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PromotionReportStudent;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.name);
}

@override
String toString() {
  final _this = this as PromotionReportStudent;
  return 'PromotionReportStudent(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $PromotionReportStudentCopyWith<$Res>  {
  factory $PromotionReportStudentCopyWith(PromotionReportStudent value, $Res Function(PromotionReportStudent) _then) = _$PromotionReportStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'admission_no') String? admissionNo, String? name
});




}
/// @nodoc
class _$PromotionReportStudentCopyWithImpl<$Res>
    implements $PromotionReportStudentCopyWith<$Res> {
  _$PromotionReportStudentCopyWithImpl(this._self, this._then);

  final PromotionReportStudent _self;
  final $Res Function(PromotionReportStudent) _then;

/// Create a copy of PromotionReportStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? admissionNo = freezed,Object? name = freezed,}) {
  return _then(PromotionReportStudent(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionReportStudent].
extension PromotionReportStudentPatterns on PromotionReportStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionReportStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionReportStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionReportStudent value)  $default,){
final _that = this;
switch (_that) {
case _PromotionReportStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionReportStudent value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionReportStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionReportStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  String? name)  $default,) {final _that = this;
switch (_that) {
case _PromotionReportStudent():
return $default(_that.studentId,_that.admissionNo,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _PromotionReportStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionReportStudent implements PromotionReportStudent {
  const _PromotionReportStudent({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, this.name});
  factory _PromotionReportStudent.fromJson(Map<String, dynamic> json) => _$PromotionReportStudentFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override final  String? name;

/// Create a copy of PromotionReportStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionReportStudentCopyWith<_PromotionReportStudent> get copyWith => __$PromotionReportStudentCopyWithImpl<_PromotionReportStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionReportStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionReportStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,name);
}

@override
String toString() {
    return 'PromotionReportStudent(studentId: $studentId, admissionNo: $admissionNo, name: $name)';
}


}

/// @nodoc
abstract mixin class _$PromotionReportStudentCopyWith<$Res> implements $PromotionReportStudentCopyWith<$Res> {
  factory _$PromotionReportStudentCopyWith(_PromotionReportStudent value, $Res Function(_PromotionReportStudent) _then) = __$PromotionReportStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'admission_no') String? admissionNo, String? name
});




}
/// @nodoc
class __$PromotionReportStudentCopyWithImpl<$Res>
    implements _$PromotionReportStudentCopyWith<$Res> {
  __$PromotionReportStudentCopyWithImpl(this._self, this._then);

  final _PromotionReportStudent _self;
  final $Res Function(_PromotionReportStudent) _then;

/// Create a copy of PromotionReportStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? admissionNo = freezed,Object? name = freezed,}) {
  return _then(_PromotionReportStudent(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PromotionReportPlacement {

 String? get session;@JsonKey(name: 'class') String? get className; String? get section;
/// Create a copy of PromotionReportPlacement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionReportPlacementCopyWith<PromotionReportPlacement> get copyWith => _$PromotionReportPlacementCopyWithImpl<PromotionReportPlacement>(this as PromotionReportPlacement, _$identity);

  /// Serializes this PromotionReportPlacement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PromotionReportPlacement;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionReportPlacement&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.section, _this.section) || other.section == _this.section));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PromotionReportPlacement;
  return Object.hash(runtimeType,_this.session,_this.className,_this.section);
}

@override
String toString() {
  final _this = this as PromotionReportPlacement;
  return 'PromotionReportPlacement(session: ${_this.session}, className: ${_this.className}, section: ${_this.section})';
}


}

/// @nodoc
abstract mixin class $PromotionReportPlacementCopyWith<$Res>  {
  factory $PromotionReportPlacementCopyWith(PromotionReportPlacement value, $Res Function(PromotionReportPlacement) _then) = _$PromotionReportPlacementCopyWithImpl;
@useResult
$Res call({
 String? session,@JsonKey(name: 'class') String? className, String? section
});




}
/// @nodoc
class _$PromotionReportPlacementCopyWithImpl<$Res>
    implements $PromotionReportPlacementCopyWith<$Res> {
  _$PromotionReportPlacementCopyWithImpl(this._self, this._then);

  final PromotionReportPlacement _self;
  final $Res Function(PromotionReportPlacement) _then;

/// Create a copy of PromotionReportPlacement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? session = freezed,Object? className = freezed,Object? section = freezed,}) {
  return _then(PromotionReportPlacement(
session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionReportPlacement].
extension PromotionReportPlacementPatterns on PromotionReportPlacement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionReportPlacement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionReportPlacement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionReportPlacement value)  $default,){
final _that = this;
switch (_that) {
case _PromotionReportPlacement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionReportPlacement value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionReportPlacement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? session, @JsonKey(name: 'class')  String? className,  String? section)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionReportPlacement() when $default != null:
return $default(_that.session,_that.className,_that.section);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? session, @JsonKey(name: 'class')  String? className,  String? section)  $default,) {final _that = this;
switch (_that) {
case _PromotionReportPlacement():
return $default(_that.session,_that.className,_that.section);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? session, @JsonKey(name: 'class')  String? className,  String? section)?  $default,) {final _that = this;
switch (_that) {
case _PromotionReportPlacement() when $default != null:
return $default(_that.session,_that.className,_that.section);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionReportPlacement implements PromotionReportPlacement {
  const _PromotionReportPlacement({this.session, @JsonKey(name: 'class') this.className, this.section});
  factory _PromotionReportPlacement.fromJson(Map<String, dynamic> json) => _$PromotionReportPlacementFromJson(json);

@override final  String? session;
@override@JsonKey(name: 'class') final  String? className;
@override final  String? section;

/// Create a copy of PromotionReportPlacement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionReportPlacementCopyWith<_PromotionReportPlacement> get copyWith => __$PromotionReportPlacementCopyWithImpl<_PromotionReportPlacement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionReportPlacementToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionReportPlacement&&(identical(other.session, session) || other.session == session)&&(identical(other.className, className) || other.className == className)&&(identical(other.section, section) || other.section == section));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,session,className,section);
}

@override
String toString() {
    return 'PromotionReportPlacement(session: $session, className: $className, section: $section)';
}


}

/// @nodoc
abstract mixin class _$PromotionReportPlacementCopyWith<$Res> implements $PromotionReportPlacementCopyWith<$Res> {
  factory _$PromotionReportPlacementCopyWith(_PromotionReportPlacement value, $Res Function(_PromotionReportPlacement) _then) = __$PromotionReportPlacementCopyWithImpl;
@override @useResult
$Res call({
 String? session,@JsonKey(name: 'class') String? className, String? section
});




}
/// @nodoc
class __$PromotionReportPlacementCopyWithImpl<$Res>
    implements _$PromotionReportPlacementCopyWith<$Res> {
  __$PromotionReportPlacementCopyWithImpl(this._self, this._then);

  final _PromotionReportPlacement _self;
  final $Res Function(_PromotionReportPlacement) _then;

/// Create a copy of PromotionReportPlacement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? session = freezed,Object? className = freezed,Object? section = freezed,}) {
  return _then(_PromotionReportPlacement(
session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BirthdayReportPage {

 int get month; int? get day; int get page; int get limit; List<BirthdayReportRow> get data;
/// Create a copy of BirthdayReportPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BirthdayReportPageCopyWith<BirthdayReportPage> get copyWith => _$BirthdayReportPageCopyWithImpl<BirthdayReportPage>(this as BirthdayReportPage, _$identity);

  /// Serializes this BirthdayReportPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BirthdayReportPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BirthdayReportPage&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.day, _this.day) || other.day == _this.day)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BirthdayReportPage;
  return Object.hash(runtimeType,_this.month,_this.day,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as BirthdayReportPage;
  return 'BirthdayReportPage(month: ${_this.month}, day: ${_this.day}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $BirthdayReportPageCopyWith<$Res>  {
  factory $BirthdayReportPageCopyWith(BirthdayReportPage value, $Res Function(BirthdayReportPage) _then) = _$BirthdayReportPageCopyWithImpl;
@useResult
$Res call({
 int month, int? day, int page, int limit, List<BirthdayReportRow> data
});




}
/// @nodoc
class _$BirthdayReportPageCopyWithImpl<$Res>
    implements $BirthdayReportPageCopyWith<$Res> {
  _$BirthdayReportPageCopyWithImpl(this._self, this._then);

  final BirthdayReportPage _self;
  final $Res Function(BirthdayReportPage) _then;

/// Create a copy of BirthdayReportPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? day = freezed,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(BirthdayReportPage(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BirthdayReportRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [BirthdayReportPage].
extension BirthdayReportPagePatterns on BirthdayReportPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BirthdayReportPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BirthdayReportPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BirthdayReportPage value)  $default,){
final _that = this;
switch (_that) {
case _BirthdayReportPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BirthdayReportPage value)?  $default,){
final _that = this;
switch (_that) {
case _BirthdayReportPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int month,  int? day,  int page,  int limit,  List<BirthdayReportRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BirthdayReportPage() when $default != null:
return $default(_that.month,_that.day,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int month,  int? day,  int page,  int limit,  List<BirthdayReportRow> data)  $default,) {final _that = this;
switch (_that) {
case _BirthdayReportPage():
return $default(_that.month,_that.day,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int month,  int? day,  int page,  int limit,  List<BirthdayReportRow> data)?  $default,) {final _that = this;
switch (_that) {
case _BirthdayReportPage() when $default != null:
return $default(_that.month,_that.day,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BirthdayReportPage implements BirthdayReportPage {
  const _BirthdayReportPage({required this.month, this.day, this.page = 1, this.limit = 20,  List<BirthdayReportRow> data = const <BirthdayReportRow>[]}): _data = data;
  factory _BirthdayReportPage.fromJson(Map<String, dynamic> json) => _$BirthdayReportPageFromJson(json);

@override final  int month;
@override final  int? day;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<BirthdayReportRow> _data;
@override@JsonKey() List<BirthdayReportRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BirthdayReportPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BirthdayReportPageCopyWith<_BirthdayReportPage> get copyWith => __$BirthdayReportPageCopyWithImpl<_BirthdayReportPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BirthdayReportPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BirthdayReportPage&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,month,day,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'BirthdayReportPage(month: $month, day: $day, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BirthdayReportPageCopyWith<$Res> implements $BirthdayReportPageCopyWith<$Res> {
  factory _$BirthdayReportPageCopyWith(_BirthdayReportPage value, $Res Function(_BirthdayReportPage) _then) = __$BirthdayReportPageCopyWithImpl;
@override @useResult
$Res call({
 int month, int? day, int page, int limit, List<BirthdayReportRow> data
});




}
/// @nodoc
class __$BirthdayReportPageCopyWithImpl<$Res>
    implements _$BirthdayReportPageCopyWith<$Res> {
  __$BirthdayReportPageCopyWithImpl(this._self, this._then);

  final _BirthdayReportPage _self;
  final $Res Function(_BirthdayReportPage) _then;

/// Create a copy of BirthdayReportPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? day = freezed,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_BirthdayReportPage(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BirthdayReportRow>,
  ));
}


}


/// @nodoc
mixin _$BirthdayReportRow {

@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; DateTime? get dob; String? get gender;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of BirthdayReportRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BirthdayReportRowCopyWith<BirthdayReportRow> get copyWith => _$BirthdayReportRowCopyWithImpl<BirthdayReportRow>(this as BirthdayReportRow, _$identity);

  /// Serializes this BirthdayReportRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BirthdayReportRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BirthdayReportRow&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BirthdayReportRow;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.firstName,_this.middleName,_this.lastName,_this.dob,_this.gender,_this.photoUrl,_this.className,_this.sectionName);
}

@override
String toString() {
  final _this = this as BirthdayReportRow;
  return 'BirthdayReportRow(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, dob: ${_this.dob}, gender: ${_this.gender}, photoUrl: ${_this.photoUrl}, className: ${_this.className}, sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $BirthdayReportRowCopyWith<$Res>  {
  factory $BirthdayReportRowCopyWith(BirthdayReportRow value, $Res Function(BirthdayReportRow) _then) = _$BirthdayReportRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, DateTime? dob, String? gender,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$BirthdayReportRowCopyWithImpl<$Res>
    implements $BirthdayReportRowCopyWith<$Res> {
  _$BirthdayReportRowCopyWithImpl(this._self, this._then);

  final BirthdayReportRow _self;
  final $Res Function(BirthdayReportRow) _then;

/// Create a copy of BirthdayReportRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? admissionNo = freezed,Object? rollNo = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? dob = freezed,Object? gender = freezed,Object? photoUrl = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(BirthdayReportRow(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BirthdayReportRow].
extension BirthdayReportRowPatterns on BirthdayReportRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BirthdayReportRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BirthdayReportRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BirthdayReportRow value)  $default,){
final _that = this;
switch (_that) {
case _BirthdayReportRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BirthdayReportRow value)?  $default,){
final _that = this;
switch (_that) {
case _BirthdayReportRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  DateTime? dob,  String? gender, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BirthdayReportRow() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.middleName,_that.lastName,_that.dob,_that.gender,_that.photoUrl,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  DateTime? dob,  String? gender, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _BirthdayReportRow():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.middleName,_that.lastName,_that.dob,_that.gender,_that.photoUrl,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  DateTime? dob,  String? gender, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _BirthdayReportRow() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.middleName,_that.lastName,_that.dob,_that.gender,_that.photoUrl,_that.className,_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BirthdayReportRow implements BirthdayReportRow {
  const _BirthdayReportRow({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.dob, this.gender, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName});
  factory _BirthdayReportRow.fromJson(Map<String, dynamic> json) => _$BirthdayReportRowFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  DateTime? dob;
@override final  String? gender;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;

/// Create a copy of BirthdayReportRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BirthdayReportRowCopyWith<_BirthdayReportRow> get copyWith => __$BirthdayReportRowCopyWithImpl<_BirthdayReportRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BirthdayReportRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BirthdayReportRow&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,firstName,middleName,lastName,dob,gender,photoUrl,className,sectionName);
}

@override
String toString() {
    return 'BirthdayReportRow(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, firstName: $firstName, middleName: $middleName, lastName: $lastName, dob: $dob, gender: $gender, photoUrl: $photoUrl, className: $className, sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$BirthdayReportRowCopyWith<$Res> implements $BirthdayReportRowCopyWith<$Res> {
  factory _$BirthdayReportRowCopyWith(_BirthdayReportRow value, $Res Function(_BirthdayReportRow) _then) = __$BirthdayReportRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, DateTime? dob, String? gender,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$BirthdayReportRowCopyWithImpl<$Res>
    implements _$BirthdayReportRowCopyWith<$Res> {
  __$BirthdayReportRowCopyWithImpl(this._self, this._then);

  final _BirthdayReportRow _self;
  final $Res Function(_BirthdayReportRow) _then;

/// Create a copy of BirthdayReportRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? admissionNo = freezed,Object? rollNo = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? dob = freezed,Object? gender = freezed,Object? photoUrl = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(_BirthdayReportRow(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionReportResult {

 int get total; List<AdmissionReportRow> get data;
/// Create a copy of AdmissionReportResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionReportResultCopyWith<AdmissionReportResult> get copyWith => _$AdmissionReportResultCopyWithImpl<AdmissionReportResult>(this as AdmissionReportResult, _$identity);

  /// Serializes this AdmissionReportResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionReportResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionReportResult&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionReportResult;
  return Object.hash(runtimeType,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdmissionReportResult;
  return 'AdmissionReportResult(total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdmissionReportResultCopyWith<$Res>  {
  factory $AdmissionReportResultCopyWith(AdmissionReportResult value, $Res Function(AdmissionReportResult) _then) = _$AdmissionReportResultCopyWithImpl;
@useResult
$Res call({
 int total, List<AdmissionReportRow> data
});




}
/// @nodoc
class _$AdmissionReportResultCopyWithImpl<$Res>
    implements $AdmissionReportResultCopyWith<$Res> {
  _$AdmissionReportResultCopyWithImpl(this._self, this._then);

  final AdmissionReportResult _self;
  final $Res Function(AdmissionReportResult) _then;

/// Create a copy of AdmissionReportResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? data = null,}) {
  return _then(AdmissionReportResult(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdmissionReportRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionReportResult].
extension AdmissionReportResultPatterns on AdmissionReportResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionReportResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionReportResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionReportResult value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionReportResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionReportResult value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionReportResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<AdmissionReportRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionReportResult() when $default != null:
return $default(_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<AdmissionReportRow> data)  $default,) {final _that = this;
switch (_that) {
case _AdmissionReportResult():
return $default(_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<AdmissionReportRow> data)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionReportResult() when $default != null:
return $default(_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionReportResult implements AdmissionReportResult {
  const _AdmissionReportResult({this.total = 0,  List<AdmissionReportRow> data = const <AdmissionReportRow>[]}): _data = data;
  factory _AdmissionReportResult.fromJson(Map<String, dynamic> json) => _$AdmissionReportResultFromJson(json);

@override@JsonKey() final  int total;
 final  List<AdmissionReportRow> _data;
@override@JsonKey() List<AdmissionReportRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdmissionReportResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionReportResultCopyWith<_AdmissionReportResult> get copyWith => __$AdmissionReportResultCopyWithImpl<_AdmissionReportResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionReportResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionReportResult&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdmissionReportResult(total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdmissionReportResultCopyWith<$Res> implements $AdmissionReportResultCopyWith<$Res> {
  factory _$AdmissionReportResultCopyWith(_AdmissionReportResult value, $Res Function(_AdmissionReportResult) _then) = __$AdmissionReportResultCopyWithImpl;
@override @useResult
$Res call({
 int total, List<AdmissionReportRow> data
});




}
/// @nodoc
class __$AdmissionReportResultCopyWithImpl<$Res>
    implements _$AdmissionReportResultCopyWith<$Res> {
  __$AdmissionReportResultCopyWithImpl(this._self, this._then);

  final _AdmissionReportResult _self;
  final $Res Function(_AdmissionReportResult) _then;

/// Create a copy of AdmissionReportResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? data = null,}) {
  return _then(_AdmissionReportResult(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdmissionReportRow>,
  ));
}


}


/// @nodoc
mixin _$AdmissionReportRow {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate;@JsonKey(name: 'student_status') String? get studentStatus;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'applicants') ReportApplicant? get applicant;
/// Create a copy of AdmissionReportRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionReportRowCopyWith<AdmissionReportRow> get copyWith => _$AdmissionReportRowCopyWithImpl<AdmissionReportRow>(this as AdmissionReportRow, _$identity);

  /// Serializes this AdmissionReportRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionReportRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionReportRow&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionReportRow;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.admissionDate,_this.studentStatus,_this.currentClass,_this.applicant);
}

@override
String toString() {
  final _this = this as AdmissionReportRow;
  return 'AdmissionReportRow(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, admissionDate: ${_this.admissionDate}, studentStatus: ${_this.studentStatus}, currentClass: ${_this.currentClass}, applicant: ${_this.applicant})';
}


}

/// @nodoc
abstract mixin class $AdmissionReportRowCopyWith<$Res>  {
  factory $AdmissionReportRowCopyWith(AdmissionReportRow value, $Res Function(AdmissionReportRow) _then) = _$AdmissionReportRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'applicants') ReportApplicant? applicant
});


$ClassRefCopyWith<$Res>? get currentClass;$ReportApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class _$AdmissionReportRowCopyWithImpl<$Res>
    implements $AdmissionReportRowCopyWith<$Res> {
  _$AdmissionReportRowCopyWithImpl(this._self, this._then);

  final AdmissionReportRow _self;
  final $Res Function(AdmissionReportRow) _then;

/// Create a copy of AdmissionReportRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? admissionDate = freezed,Object? studentStatus = freezed,Object? currentClass = freezed,Object? applicant = freezed,}) {
  return _then(AdmissionReportRow(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ReportApplicant?,
  ));
}
/// Create a copy of AdmissionReportRow
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
}/// Create a copy of AdmissionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ReportApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionReportRow].
extension AdmissionReportRowPatterns on AdmissionReportRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionReportRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionReportRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionReportRow value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionReportRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionReportRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionReportRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'applicants')  ReportApplicant? applicant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionReportRow() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.studentStatus,_that.currentClass,_that.applicant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'applicants')  ReportApplicant? applicant)  $default,) {final _that = this;
switch (_that) {
case _AdmissionReportRow():
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.studentStatus,_that.currentClass,_that.applicant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'applicants')  ReportApplicant? applicant)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionReportRow() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.admissionDate,_that.studentStatus,_that.currentClass,_that.applicant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionReportRow implements AdmissionReportRow {
  const _AdmissionReportRow({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'admission_date') this.admissionDate, @JsonKey(name: 'student_status') this.studentStatus, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'applicants') this.applicant});
  factory _AdmissionReportRow.fromJson(Map<String, dynamic> json) => _$AdmissionReportRowFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'applicants') final  ReportApplicant? applicant;

/// Create a copy of AdmissionReportRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionReportRowCopyWith<_AdmissionReportRow> get copyWith => __$AdmissionReportRowCopyWithImpl<_AdmissionReportRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionReportRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionReportRow&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.applicant, applicant) || other.applicant == applicant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,admissionDate,studentStatus,currentClass,applicant);
}

@override
String toString() {
    return 'AdmissionReportRow(studentId: $studentId, admissionNo: $admissionNo, admissionDate: $admissionDate, studentStatus: $studentStatus, currentClass: $currentClass, applicant: $applicant)';
}


}

/// @nodoc
abstract mixin class _$AdmissionReportRowCopyWith<$Res> implements $AdmissionReportRowCopyWith<$Res> {
  factory _$AdmissionReportRowCopyWith(_AdmissionReportRow value, $Res Function(_AdmissionReportRow) _then) = __$AdmissionReportRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'applicants') ReportApplicant? applicant
});


@override $ClassRefCopyWith<$Res>? get currentClass;@override $ReportApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class __$AdmissionReportRowCopyWithImpl<$Res>
    implements _$AdmissionReportRowCopyWith<$Res> {
  __$AdmissionReportRowCopyWithImpl(this._self, this._then);

  final _AdmissionReportRow _self;
  final $Res Function(_AdmissionReportRow) _then;

/// Create a copy of AdmissionReportRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? admissionDate = freezed,Object? studentStatus = freezed,Object? currentClass = freezed,Object? applicant = freezed,}) {
  return _then(_AdmissionReportRow(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ReportApplicant?,
  ));
}

/// Create a copy of AdmissionReportRow
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
}/// Create a copy of AdmissionReportRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ReportApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// @nodoc
mixin _$ReportApplicant {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; DateTime? get dob;@JsonKey(name: 'blood_group') String? get bloodGroup; String? get nationality;@JsonKey(name: 'aadhaar_no') String? get aadhaarNo;@JsonKey(name: 'birth_certificate_no') String? get birthCertificateNo;@JsonKey(name: 'photo_url') String? get photoUrl;
/// Create a copy of ReportApplicant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportApplicantCopyWith<ReportApplicant> get copyWith => _$ReportApplicantCopyWithImpl<ReportApplicant>(this as ReportApplicant, _$identity);

  /// Serializes this ReportApplicant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportApplicant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportApplicant&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.bloodGroup, _this.bloodGroup) || other.bloodGroup == _this.bloodGroup)&&(identical(other.nationality, _this.nationality) || other.nationality == _this.nationality)&&(identical(other.aadhaarNo, _this.aadhaarNo) || other.aadhaarNo == _this.aadhaarNo)&&(identical(other.birthCertificateNo, _this.birthCertificateNo) || other.birthCertificateNo == _this.birthCertificateNo)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportApplicant;
  return Object.hash(runtimeType,_this.firstName,_this.middleName,_this.lastName,_this.gender,_this.dob,_this.bloodGroup,_this.nationality,_this.aadhaarNo,_this.birthCertificateNo,_this.photoUrl);
}

@override
String toString() {
  final _this = this as ReportApplicant;
  return 'ReportApplicant(firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, gender: ${_this.gender}, dob: ${_this.dob}, bloodGroup: ${_this.bloodGroup}, nationality: ${_this.nationality}, aadhaarNo: ${_this.aadhaarNo}, birthCertificateNo: ${_this.birthCertificateNo}, photoUrl: ${_this.photoUrl})';
}


}

/// @nodoc
abstract mixin class $ReportApplicantCopyWith<$Res>  {
  factory $ReportApplicantCopyWith(ReportApplicant value, $Res Function(ReportApplicant) _then) = _$ReportApplicantCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup, String? nationality,@JsonKey(name: 'aadhaar_no') String? aadhaarNo,@JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class _$ReportApplicantCopyWithImpl<$Res>
    implements $ReportApplicantCopyWith<$Res> {
  _$ReportApplicantCopyWithImpl(this._self, this._then);

  final ReportApplicant _self;
  final $Res Function(ReportApplicant) _then;

/// Create a copy of ReportApplicant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? nationality = freezed,Object? aadhaarNo = freezed,Object? birthCertificateNo = freezed,Object? photoUrl = freezed,}) {
  return _then(ReportApplicant(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,birthCertificateNo: freezed == birthCertificateNo ? _self.birthCertificateNo : birthCertificateNo // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportApplicant].
extension ReportApplicantPatterns on ReportApplicant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportApplicant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportApplicant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportApplicant value)  $default,){
final _that = this;
switch (_that) {
case _ReportApplicant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportApplicant value)?  $default,){
final _that = this;
switch (_that) {
case _ReportApplicant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportApplicant() when $default != null:
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'photo_url')  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _ReportApplicant():
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.photoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _ReportApplicant() when $default != null:
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportApplicant implements ReportApplicant {
  const _ReportApplicant({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.dob, @JsonKey(name: 'blood_group') this.bloodGroup, this.nationality, @JsonKey(name: 'aadhaar_no') this.aadhaarNo, @JsonKey(name: 'birth_certificate_no') this.birthCertificateNo, @JsonKey(name: 'photo_url') this.photoUrl});
  factory _ReportApplicant.fromJson(Map<String, dynamic> json) => _$ReportApplicantFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override final  String? nationality;
@override@JsonKey(name: 'aadhaar_no') final  String? aadhaarNo;
@override@JsonKey(name: 'birth_certificate_no') final  String? birthCertificateNo;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;

/// Create a copy of ReportApplicant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportApplicantCopyWith<_ReportApplicant> get copyWith => __$ReportApplicantCopyWithImpl<_ReportApplicant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportApplicantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportApplicant&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.aadhaarNo, aadhaarNo) || other.aadhaarNo == aadhaarNo)&&(identical(other.birthCertificateNo, birthCertificateNo) || other.birthCertificateNo == birthCertificateNo)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,middleName,lastName,gender,dob,bloodGroup,nationality,aadhaarNo,birthCertificateNo,photoUrl);
}

@override
String toString() {
    return 'ReportApplicant(firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, dob: $dob, bloodGroup: $bloodGroup, nationality: $nationality, aadhaarNo: $aadhaarNo, birthCertificateNo: $birthCertificateNo, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$ReportApplicantCopyWith<$Res> implements $ReportApplicantCopyWith<$Res> {
  factory _$ReportApplicantCopyWith(_ReportApplicant value, $Res Function(_ReportApplicant) _then) = __$ReportApplicantCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup, String? nationality,@JsonKey(name: 'aadhaar_no') String? aadhaarNo,@JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class __$ReportApplicantCopyWithImpl<$Res>
    implements _$ReportApplicantCopyWith<$Res> {
  __$ReportApplicantCopyWithImpl(this._self, this._then);

  final _ReportApplicant _self;
  final $Res Function(_ReportApplicant) _then;

/// Create a copy of ReportApplicant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? nationality = freezed,Object? aadhaarNo = freezed,Object? birthCertificateNo = freezed,Object? photoUrl = freezed,}) {
  return _then(_ReportApplicant(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,birthCertificateNo: freezed == birthCertificateNo ? _self.birthCertificateNo : birthCertificateNo // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LeaveReportPage {

 int get total; int get page; int get limit; List<LeaveReportRow> get data;
/// Create a copy of LeaveReportPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveReportPageCopyWith<LeaveReportPage> get copyWith => _$LeaveReportPageCopyWithImpl<LeaveReportPage>(this as LeaveReportPage, _$identity);

  /// Serializes this LeaveReportPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaveReportPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveReportPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaveReportPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as LeaveReportPage;
  return 'LeaveReportPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $LeaveReportPageCopyWith<$Res>  {
  factory $LeaveReportPageCopyWith(LeaveReportPage value, $Res Function(LeaveReportPage) _then) = _$LeaveReportPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<LeaveReportRow> data
});




}
/// @nodoc
class _$LeaveReportPageCopyWithImpl<$Res>
    implements $LeaveReportPageCopyWith<$Res> {
  _$LeaveReportPageCopyWithImpl(this._self, this._then);

  final LeaveReportPage _self;
  final $Res Function(LeaveReportPage) _then;

/// Create a copy of LeaveReportPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(LeaveReportPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LeaveReportRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveReportPage].
extension LeaveReportPagePatterns on LeaveReportPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveReportPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveReportPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveReportPage value)  $default,){
final _that = this;
switch (_that) {
case _LeaveReportPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveReportPage value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveReportPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<LeaveReportRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveReportPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<LeaveReportRow> data)  $default,) {final _that = this;
switch (_that) {
case _LeaveReportPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<LeaveReportRow> data)?  $default,) {final _that = this;
switch (_that) {
case _LeaveReportPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveReportPage implements LeaveReportPage {
  const _LeaveReportPage({this.total = 0, this.page = 1, this.limit = 20,  List<LeaveReportRow> data = const <LeaveReportRow>[]}): _data = data;
  factory _LeaveReportPage.fromJson(Map<String, dynamic> json) => _$LeaveReportPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<LeaveReportRow> _data;
@override@JsonKey() List<LeaveReportRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of LeaveReportPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveReportPageCopyWith<_LeaveReportPage> get copyWith => __$LeaveReportPageCopyWithImpl<_LeaveReportPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveReportPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveReportPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'LeaveReportPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LeaveReportPageCopyWith<$Res> implements $LeaveReportPageCopyWith<$Res> {
  factory _$LeaveReportPageCopyWith(_LeaveReportPage value, $Res Function(_LeaveReportPage) _then) = __$LeaveReportPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<LeaveReportRow> data
});




}
/// @nodoc
class __$LeaveReportPageCopyWithImpl<$Res>
    implements _$LeaveReportPageCopyWith<$Res> {
  __$LeaveReportPageCopyWithImpl(this._self, this._then);

  final _LeaveReportPage _self;
  final $Res Function(_LeaveReportPage) _then;

/// Create a copy of LeaveReportPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_LeaveReportPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LeaveReportRow>,
  ));
}


}


/// @nodoc
mixin _$LeaveReportRow {

@JsonKey(name: 'leave_id') String get leaveId;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'leave_type') String? get leaveType;@JsonKey(name: 'from_date') DateTime? get fromDate;@JsonKey(name: 'to_date') DateTime? get toDate;@JsonKey(name: 'total_days')@LooseNumConverter() num? get totalDays; String? get reason; String? get status;@JsonKey(name: 'approved_at') DateTime? get approvedAt; String? get remarks;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of LeaveReportRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveReportRowCopyWith<LeaveReportRow> get copyWith => _$LeaveReportRowCopyWithImpl<LeaveReportRow>(this as LeaveReportRow, _$identity);

  /// Serializes this LeaveReportRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaveReportRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveReportRow&&(identical(other.leaveId, _this.leaveId) || other.leaveId == _this.leaveId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.leaveType, _this.leaveType) || other.leaveType == _this.leaveType)&&(identical(other.fromDate, _this.fromDate) || other.fromDate == _this.fromDate)&&(identical(other.toDate, _this.toDate) || other.toDate == _this.toDate)&&(identical(other.totalDays, _this.totalDays) || other.totalDays == _this.totalDays)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.approvedAt, _this.approvedAt) || other.approvedAt == _this.approvedAt)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaveReportRow;
  return Object.hash(runtimeType,_this.leaveId,_this.studentId,_this.leaveType,_this.fromDate,_this.toDate,_this.totalDays,_this.reason,_this.status,_this.approvedAt,_this.remarks,_this.student);
}

@override
String toString() {
  final _this = this as LeaveReportRow;
  return 'LeaveReportRow(leaveId: ${_this.leaveId}, studentId: ${_this.studentId}, leaveType: ${_this.leaveType}, fromDate: ${_this.fromDate}, toDate: ${_this.toDate}, totalDays: ${_this.totalDays}, reason: ${_this.reason}, status: ${_this.status}, approvedAt: ${_this.approvedAt}, remarks: ${_this.remarks}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $LeaveReportRowCopyWith<$Res>  {
  factory $LeaveReportRowCopyWith(LeaveReportRow value, $Res Function(LeaveReportRow) _then) = _$LeaveReportRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'from_date') DateTime? fromDate,@JsonKey(name: 'to_date') DateTime? toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status,@JsonKey(name: 'approved_at') DateTime? approvedAt, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$LeaveReportRowCopyWithImpl<$Res>
    implements $LeaveReportRowCopyWith<$Res> {
  _$LeaveReportRowCopyWithImpl(this._self, this._then);

  final LeaveReportRow _self;
  final $Res Function(LeaveReportRow) _then;

/// Create a copy of LeaveReportRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveId = null,Object? studentId = freezed,Object? leaveType = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? approvedAt = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(LeaveReportRow(
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
/// Create a copy of LeaveReportRow
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


/// Adds pattern-matching-related methods to [LeaveReportRow].
extension LeaveReportRowPatterns on LeaveReportRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveReportRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveReportRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveReportRow value)  $default,){
final _that = this;
switch (_that) {
case _LeaveReportRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveReportRow value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveReportRow() when $default != null:
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
case _LeaveReportRow() when $default != null:
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
case _LeaveReportRow():
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
case _LeaveReportRow() when $default != null:
return $default(_that.leaveId,_that.studentId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.approvedAt,_that.remarks,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveReportRow implements LeaveReportRow {
  const _LeaveReportRow({@JsonKey(name: 'leave_id') required this.leaveId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'leave_type') this.leaveType, @JsonKey(name: 'from_date') this.fromDate, @JsonKey(name: 'to_date') this.toDate, @JsonKey(name: 'total_days')@LooseNumConverter() this.totalDays, this.reason, this.status, @JsonKey(name: 'approved_at') this.approvedAt, this.remarks, @JsonKey(name: 'students') this.student});
  factory _LeaveReportRow.fromJson(Map<String, dynamic> json) => _$LeaveReportRowFromJson(json);

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

/// Create a copy of LeaveReportRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveReportRowCopyWith<_LeaveReportRow> get copyWith => __$LeaveReportRowCopyWithImpl<_LeaveReportRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveReportRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveReportRow&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaveId,studentId,leaveType,fromDate,toDate,totalDays,reason,status,approvedAt,remarks,student);
}

@override
String toString() {
    return 'LeaveReportRow(leaveId: $leaveId, studentId: $studentId, leaveType: $leaveType, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, reason: $reason, status: $status, approvedAt: $approvedAt, remarks: $remarks, student: $student)';
}


}

/// @nodoc
abstract mixin class _$LeaveReportRowCopyWith<$Res> implements $LeaveReportRowCopyWith<$Res> {
  factory _$LeaveReportRowCopyWith(_LeaveReportRow value, $Res Function(_LeaveReportRow) _then) = __$LeaveReportRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'from_date') DateTime? fromDate,@JsonKey(name: 'to_date') DateTime? toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status,@JsonKey(name: 'approved_at') DateTime? approvedAt, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$LeaveReportRowCopyWithImpl<$Res>
    implements _$LeaveReportRowCopyWith<$Res> {
  __$LeaveReportRowCopyWithImpl(this._self, this._then);

  final _LeaveReportRow _self;
  final $Res Function(_LeaveReportRow) _then;

/// Create a copy of LeaveReportRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveId = null,Object? studentId = freezed,Object? leaveType = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? approvedAt = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(_LeaveReportRow(
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

/// Create a copy of LeaveReportRow
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
mixin _$StudentProfileReport {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate;@JsonKey(name: 'student_status') String? get studentStatus; String? get remarks;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'current_section') SectionRef? get currentSection;@JsonKey(name: 'institutions') InstitutionRef? get institution;@JsonKey(name: 'applicants') ReportApplicant? get applicant;
/// Create a copy of StudentProfileReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileReportCopyWith<StudentProfileReport> get copyWith => _$StudentProfileReportCopyWithImpl<StudentProfileReport>(this as StudentProfileReport, _$identity);

  /// Serializes this StudentProfileReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentProfileReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfileReport&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection)&&(identical(other.institution, _this.institution) || other.institution == _this.institution)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentProfileReport;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.admissionDate,_this.studentStatus,_this.remarks,_this.currentClass,_this.currentSection,_this.institution,_this.applicant);
}

@override
String toString() {
  final _this = this as StudentProfileReport;
  return 'StudentProfileReport(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, admissionDate: ${_this.admissionDate}, studentStatus: ${_this.studentStatus}, remarks: ${_this.remarks}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection}, institution: ${_this.institution}, applicant: ${_this.applicant})';
}


}

/// @nodoc
abstract mixin class $StudentProfileReportCopyWith<$Res>  {
  factory $StudentProfileReportCopyWith(StudentProfileReport value, $Res Function(StudentProfileReport) _then) = _$StudentProfileReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'student_status') String? studentStatus, String? remarks,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'applicants') ReportApplicant? applicant
});


$ClassRefCopyWith<$Res>? get currentClass;$SectionRefCopyWith<$Res>? get currentSection;$InstitutionRefCopyWith<$Res>? get institution;$ReportApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class _$StudentProfileReportCopyWithImpl<$Res>
    implements $StudentProfileReportCopyWith<$Res> {
  _$StudentProfileReportCopyWithImpl(this._self, this._then);

  final StudentProfileReport _self;
  final $Res Function(StudentProfileReport) _then;

/// Create a copy of StudentProfileReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = null,Object? rollNo = freezed,Object? admissionDate = freezed,Object? studentStatus = freezed,Object? remarks = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? institution = freezed,Object? applicant = freezed,}) {
  return _then(StudentProfileReport(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ReportApplicant?,
  ));
}
/// Create a copy of StudentProfileReport
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
}/// Create a copy of StudentProfileReport
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
}/// Create a copy of StudentProfileReport
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
}/// Create a copy of StudentProfileReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ReportApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentProfileReport].
extension StudentProfileReportPatterns on StudentProfileReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentProfileReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentProfileReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentProfileReport value)  $default,){
final _that = this;
switch (_that) {
case _StudentProfileReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentProfileReport value)?  $default,){
final _that = this;
switch (_that) {
case _StudentProfileReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus,  String? remarks, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  ReportApplicant? applicant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentProfileReport() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.admissionDate,_that.studentStatus,_that.remarks,_that.currentClass,_that.currentSection,_that.institution,_that.applicant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus,  String? remarks, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  ReportApplicant? applicant)  $default,) {final _that = this;
switch (_that) {
case _StudentProfileReport():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.admissionDate,_that.studentStatus,_that.remarks,_that.currentClass,_that.currentSection,_that.institution,_that.applicant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'student_status')  String? studentStatus,  String? remarks, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  ReportApplicant? applicant)?  $default,) {final _that = this;
switch (_that) {
case _StudentProfileReport() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.admissionDate,_that.studentStatus,_that.remarks,_that.currentClass,_that.currentSection,_that.institution,_that.applicant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentProfileReport implements StudentProfileReport {
  const _StudentProfileReport({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') required this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'admission_date') this.admissionDate, @JsonKey(name: 'student_status') this.studentStatus, this.remarks, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection, @JsonKey(name: 'institutions') this.institution, @JsonKey(name: 'applicants') this.applicant});
  factory _StudentProfileReport.fromJson(Map<String, dynamic> json) => _$StudentProfileReportFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String admissionNo;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override final  String? remarks;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  SectionRef? currentSection;
@override@JsonKey(name: 'institutions') final  InstitutionRef? institution;
@override@JsonKey(name: 'applicants') final  ReportApplicant? applicant;

/// Create a copy of StudentProfileReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentProfileReportCopyWith<_StudentProfileReport> get copyWith => __$StudentProfileReportCopyWithImpl<_StudentProfileReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentProfileReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentProfileReport&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection)&&(identical(other.institution, institution) || other.institution == institution)&&(identical(other.applicant, applicant) || other.applicant == applicant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,admissionDate,studentStatus,remarks,currentClass,currentSection,institution,applicant);
}

@override
String toString() {
    return 'StudentProfileReport(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, admissionDate: $admissionDate, studentStatus: $studentStatus, remarks: $remarks, currentClass: $currentClass, currentSection: $currentSection, institution: $institution, applicant: $applicant)';
}


}

/// @nodoc
abstract mixin class _$StudentProfileReportCopyWith<$Res> implements $StudentProfileReportCopyWith<$Res> {
  factory _$StudentProfileReportCopyWith(_StudentProfileReport value, $Res Function(_StudentProfileReport) _then) = __$StudentProfileReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'student_status') String? studentStatus, String? remarks,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'applicants') ReportApplicant? applicant
});


@override $ClassRefCopyWith<$Res>? get currentClass;@override $SectionRefCopyWith<$Res>? get currentSection;@override $InstitutionRefCopyWith<$Res>? get institution;@override $ReportApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class __$StudentProfileReportCopyWithImpl<$Res>
    implements _$StudentProfileReportCopyWith<$Res> {
  __$StudentProfileReportCopyWithImpl(this._self, this._then);

  final _StudentProfileReport _self;
  final $Res Function(_StudentProfileReport) _then;

/// Create a copy of StudentProfileReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = null,Object? rollNo = freezed,Object? admissionDate = freezed,Object? studentStatus = freezed,Object? remarks = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? institution = freezed,Object? applicant = freezed,}) {
  return _then(_StudentProfileReport(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: null == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ReportApplicant?,
  ));
}

/// Create a copy of StudentProfileReport
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
}/// Create a copy of StudentProfileReport
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
}/// Create a copy of StudentProfileReport
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
}/// Create a copy of StudentProfileReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ReportApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}

// dart format on
