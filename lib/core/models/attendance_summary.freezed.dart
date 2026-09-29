// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceSummary {

 DateTime get from; DateTime get to; int get total; List<AttendanceRecord> get data;
/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceSummaryCopyWith<AttendanceSummary> get copyWith => _$AttendanceSummaryCopyWithImpl<AttendanceSummary>(this as AttendanceSummary, _$identity);

  /// Serializes this AttendanceSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AttendanceSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceSummary&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AttendanceSummary;
  return Object.hash(runtimeType,_this.from,_this.to,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AttendanceSummary;
  return 'AttendanceSummary(from: ${_this.from}, to: ${_this.to}, total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AttendanceSummaryCopyWith<$Res>  {
  factory $AttendanceSummaryCopyWith(AttendanceSummary value, $Res Function(AttendanceSummary) _then) = _$AttendanceSummaryCopyWithImpl;
@useResult
$Res call({
 DateTime from, DateTime to, int total, List<AttendanceRecord> data
});




}
/// @nodoc
class _$AttendanceSummaryCopyWithImpl<$Res>
    implements $AttendanceSummaryCopyWith<$Res> {
  _$AttendanceSummaryCopyWithImpl(this._self, this._then);

  final AttendanceSummary _self;
  final $Res Function(AttendanceSummary) _then;

/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = null,Object? to = null,Object? total = null,Object? data = null,}) {
  return _then(AttendanceSummary(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceSummary].
extension AttendanceSummaryPatterns on AttendanceSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceSummary value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime from,  DateTime to,  int total,  List<AttendanceRecord> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
return $default(_that.from,_that.to,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime from,  DateTime to,  int total,  List<AttendanceRecord> data)  $default,) {final _that = this;
switch (_that) {
case _AttendanceSummary():
return $default(_that.from,_that.to,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime from,  DateTime to,  int total,  List<AttendanceRecord> data)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
return $default(_that.from,_that.to,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceSummary implements AttendanceSummary {
  const _AttendanceSummary({required this.from, required this.to, required this.total, required  List<AttendanceRecord> data}): _data = data;
  factory _AttendanceSummary.fromJson(Map<String, dynamic> json) => _$AttendanceSummaryFromJson(json);

@override final  DateTime from;
@override final  DateTime to;
@override final  int total;
 final  List<AttendanceRecord> _data;
@override List<AttendanceRecord> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceSummaryCopyWith<_AttendanceSummary> get copyWith => __$AttendanceSummaryCopyWithImpl<_AttendanceSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceSummary&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AttendanceSummary(from: $from, to: $to, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AttendanceSummaryCopyWith<$Res> implements $AttendanceSummaryCopyWith<$Res> {
  factory _$AttendanceSummaryCopyWith(_AttendanceSummary value, $Res Function(_AttendanceSummary) _then) = __$AttendanceSummaryCopyWithImpl;
@override @useResult
$Res call({
 DateTime from, DateTime to, int total, List<AttendanceRecord> data
});




}
/// @nodoc
class __$AttendanceSummaryCopyWithImpl<$Res>
    implements _$AttendanceSummaryCopyWith<$Res> {
  __$AttendanceSummaryCopyWithImpl(this._self, this._then);

  final _AttendanceSummary _self;
  final $Res Function(_AttendanceSummary) _then;

/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,Object? total = null,Object? data = null,}) {
  return _then(_AttendanceSummary(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>,
  ));
}


}

// dart format on
