// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminDashboardStats {

 DashboardStudentStats? get students; DashboardApplicationStats? get applications; DashboardTransportStats? get transport;
/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminDashboardStatsCopyWith<AdminDashboardStats> get copyWith => _$AdminDashboardStatsCopyWithImpl<AdminDashboardStats>(this as AdminDashboardStats, _$identity);

  /// Serializes this AdminDashboardStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminDashboardStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminDashboardStats&&(identical(other.students, _this.students) || other.students == _this.students)&&(identical(other.applications, _this.applications) || other.applications == _this.applications)&&(identical(other.transport, _this.transport) || other.transport == _this.transport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminDashboardStats;
  return Object.hash(runtimeType,_this.students,_this.applications,_this.transport);
}

@override
String toString() {
  final _this = this as AdminDashboardStats;
  return 'AdminDashboardStats(students: ${_this.students}, applications: ${_this.applications}, transport: ${_this.transport})';
}


}

/// @nodoc
abstract mixin class $AdminDashboardStatsCopyWith<$Res>  {
  factory $AdminDashboardStatsCopyWith(AdminDashboardStats value, $Res Function(AdminDashboardStats) _then) = _$AdminDashboardStatsCopyWithImpl;
@useResult
$Res call({
 DashboardStudentStats? students, DashboardApplicationStats? applications, DashboardTransportStats? transport
});


$DashboardStudentStatsCopyWith<$Res>? get students;$DashboardApplicationStatsCopyWith<$Res>? get applications;$DashboardTransportStatsCopyWith<$Res>? get transport;

}
/// @nodoc
class _$AdminDashboardStatsCopyWithImpl<$Res>
    implements $AdminDashboardStatsCopyWith<$Res> {
  _$AdminDashboardStatsCopyWithImpl(this._self, this._then);

  final AdminDashboardStats _self;
  final $Res Function(AdminDashboardStats) _then;

/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? students = freezed,Object? applications = freezed,Object? transport = freezed,}) {
  return _then(AdminDashboardStats(
students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as DashboardStudentStats?,applications: freezed == applications ? _self.applications : applications // ignore: cast_nullable_to_non_nullable
as DashboardApplicationStats?,transport: freezed == transport ? _self.transport : transport // ignore: cast_nullable_to_non_nullable
as DashboardTransportStats?,
  ));
}
/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardStudentStatsCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $DashboardStudentStatsCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardApplicationStatsCopyWith<$Res>? get applications {
    if (_self.applications == null) {
    return null;
  }

  return $DashboardApplicationStatsCopyWith<$Res>(_self.applications!, (value) {
    return _then(_self.copyWith(applications: value));
  });
}/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardTransportStatsCopyWith<$Res>? get transport {
    if (_self.transport == null) {
    return null;
  }

  return $DashboardTransportStatsCopyWith<$Res>(_self.transport!, (value) {
    return _then(_self.copyWith(transport: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminDashboardStats].
extension AdminDashboardStatsPatterns on AdminDashboardStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminDashboardStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminDashboardStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminDashboardStats value)  $default,){
final _that = this;
switch (_that) {
case _AdminDashboardStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminDashboardStats value)?  $default,){
final _that = this;
switch (_that) {
case _AdminDashboardStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DashboardStudentStats? students,  DashboardApplicationStats? applications,  DashboardTransportStats? transport)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminDashboardStats() when $default != null:
return $default(_that.students,_that.applications,_that.transport);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DashboardStudentStats? students,  DashboardApplicationStats? applications,  DashboardTransportStats? transport)  $default,) {final _that = this;
switch (_that) {
case _AdminDashboardStats():
return $default(_that.students,_that.applications,_that.transport);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DashboardStudentStats? students,  DashboardApplicationStats? applications,  DashboardTransportStats? transport)?  $default,) {final _that = this;
switch (_that) {
case _AdminDashboardStats() when $default != null:
return $default(_that.students,_that.applications,_that.transport);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminDashboardStats implements AdminDashboardStats {
  const _AdminDashboardStats({this.students, this.applications, this.transport});
  factory _AdminDashboardStats.fromJson(Map<String, dynamic> json) => _$AdminDashboardStatsFromJson(json);

@override final  DashboardStudentStats? students;
@override final  DashboardApplicationStats? applications;
@override final  DashboardTransportStats? transport;

/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminDashboardStatsCopyWith<_AdminDashboardStats> get copyWith => __$AdminDashboardStatsCopyWithImpl<_AdminDashboardStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminDashboardStatsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminDashboardStats&&(identical(other.students, students) || other.students == students)&&(identical(other.applications, applications) || other.applications == applications)&&(identical(other.transport, transport) || other.transport == transport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,students,applications,transport);
}

@override
String toString() {
    return 'AdminDashboardStats(students: $students, applications: $applications, transport: $transport)';
}


}

/// @nodoc
abstract mixin class _$AdminDashboardStatsCopyWith<$Res> implements $AdminDashboardStatsCopyWith<$Res> {
  factory _$AdminDashboardStatsCopyWith(_AdminDashboardStats value, $Res Function(_AdminDashboardStats) _then) = __$AdminDashboardStatsCopyWithImpl;
@override @useResult
$Res call({
 DashboardStudentStats? students, DashboardApplicationStats? applications, DashboardTransportStats? transport
});


@override $DashboardStudentStatsCopyWith<$Res>? get students;@override $DashboardApplicationStatsCopyWith<$Res>? get applications;@override $DashboardTransportStatsCopyWith<$Res>? get transport;

}
/// @nodoc
class __$AdminDashboardStatsCopyWithImpl<$Res>
    implements _$AdminDashboardStatsCopyWith<$Res> {
  __$AdminDashboardStatsCopyWithImpl(this._self, this._then);

  final _AdminDashboardStats _self;
  final $Res Function(_AdminDashboardStats) _then;

/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? students = freezed,Object? applications = freezed,Object? transport = freezed,}) {
  return _then(_AdminDashboardStats(
students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as DashboardStudentStats?,applications: freezed == applications ? _self.applications : applications // ignore: cast_nullable_to_non_nullable
as DashboardApplicationStats?,transport: freezed == transport ? _self.transport : transport // ignore: cast_nullable_to_non_nullable
as DashboardTransportStats?,
  ));
}

/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardStudentStatsCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $DashboardStudentStatsCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardApplicationStatsCopyWith<$Res>? get applications {
    if (_self.applications == null) {
    return null;
  }

  return $DashboardApplicationStatsCopyWith<$Res>(_self.applications!, (value) {
    return _then(_self.copyWith(applications: value));
  });
}/// Create a copy of AdminDashboardStats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardTransportStatsCopyWith<$Res>? get transport {
    if (_self.transport == null) {
    return null;
  }

  return $DashboardTransportStatsCopyWith<$Res>(_self.transport!, (value) {
    return _then(_self.copyWith(transport: value));
  });
}
}


/// @nodoc
mixin _$DashboardStudentStats {

 int get total;@JsonKey(name: 'total_active') int get totalActive; int get active; int get inactive;@JsonKey(name: 'class_wise_strength') List<DashboardClassStrength> get classWiseStrength;@JsonKey(name: 'gender_distribution') Map<String, int> get genderDistribution;
/// Create a copy of DashboardStudentStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStudentStatsCopyWith<DashboardStudentStats> get copyWith => _$DashboardStudentStatsCopyWithImpl<DashboardStudentStats>(this as DashboardStudentStats, _$identity);

  /// Serializes this DashboardStudentStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardStudentStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStudentStats&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.totalActive, _this.totalActive) || other.totalActive == _this.totalActive)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.inactive, _this.inactive) || other.inactive == _this.inactive)&&const DeepCollectionEquality().equals(other.classWiseStrength, _this.classWiseStrength)&&const DeepCollectionEquality().equals(other.genderDistribution, _this.genderDistribution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardStudentStats;
  return Object.hash(runtimeType,_this.total,_this.totalActive,_this.active,_this.inactive,const DeepCollectionEquality().hash(_this.classWiseStrength),const DeepCollectionEquality().hash(_this.genderDistribution));
}

@override
String toString() {
  final _this = this as DashboardStudentStats;
  return 'DashboardStudentStats(total: ${_this.total}, totalActive: ${_this.totalActive}, active: ${_this.active}, inactive: ${_this.inactive}, classWiseStrength: ${_this.classWiseStrength}, genderDistribution: ${_this.genderDistribution})';
}


}

/// @nodoc
abstract mixin class $DashboardStudentStatsCopyWith<$Res>  {
  factory $DashboardStudentStatsCopyWith(DashboardStudentStats value, $Res Function(DashboardStudentStats) _then) = _$DashboardStudentStatsCopyWithImpl;
@useResult
$Res call({
 int total,@JsonKey(name: 'total_active') int totalActive, int active, int inactive,@JsonKey(name: 'class_wise_strength') List<DashboardClassStrength> classWiseStrength,@JsonKey(name: 'gender_distribution') Map<String, int> genderDistribution
});




}
/// @nodoc
class _$DashboardStudentStatsCopyWithImpl<$Res>
    implements $DashboardStudentStatsCopyWith<$Res> {
  _$DashboardStudentStatsCopyWithImpl(this._self, this._then);

  final DashboardStudentStats _self;
  final $Res Function(DashboardStudentStats) _then;

/// Create a copy of DashboardStudentStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? totalActive = null,Object? active = null,Object? inactive = null,Object? classWiseStrength = null,Object? genderDistribution = null,}) {
  return _then(DashboardStudentStats(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalActive: null == totalActive ? _self.totalActive : totalActive // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,classWiseStrength: null == classWiseStrength ? _self.classWiseStrength : classWiseStrength // ignore: cast_nullable_to_non_nullable
as List<DashboardClassStrength>,genderDistribution: null == genderDistribution ? _self.genderDistribution : genderDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStudentStats].
extension DashboardStudentStatsPatterns on DashboardStudentStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStudentStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStudentStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStudentStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStudentStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStudentStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStudentStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total, @JsonKey(name: 'total_active')  int totalActive,  int active,  int inactive, @JsonKey(name: 'class_wise_strength')  List<DashboardClassStrength> classWiseStrength, @JsonKey(name: 'gender_distribution')  Map<String, int> genderDistribution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStudentStats() when $default != null:
return $default(_that.total,_that.totalActive,_that.active,_that.inactive,_that.classWiseStrength,_that.genderDistribution);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total, @JsonKey(name: 'total_active')  int totalActive,  int active,  int inactive, @JsonKey(name: 'class_wise_strength')  List<DashboardClassStrength> classWiseStrength, @JsonKey(name: 'gender_distribution')  Map<String, int> genderDistribution)  $default,) {final _that = this;
switch (_that) {
case _DashboardStudentStats():
return $default(_that.total,_that.totalActive,_that.active,_that.inactive,_that.classWiseStrength,_that.genderDistribution);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total, @JsonKey(name: 'total_active')  int totalActive,  int active,  int inactive, @JsonKey(name: 'class_wise_strength')  List<DashboardClassStrength> classWiseStrength, @JsonKey(name: 'gender_distribution')  Map<String, int> genderDistribution)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStudentStats() when $default != null:
return $default(_that.total,_that.totalActive,_that.active,_that.inactive,_that.classWiseStrength,_that.genderDistribution);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardStudentStats implements DashboardStudentStats {
  const _DashboardStudentStats({this.total = 0, @JsonKey(name: 'total_active') this.totalActive = 0, this.active = 0, this.inactive = 0, @JsonKey(name: 'class_wise_strength')  List<DashboardClassStrength> classWiseStrength = const <DashboardClassStrength>[], @JsonKey(name: 'gender_distribution')  Map<String, int> genderDistribution = const <String, int>{}}): _classWiseStrength = classWiseStrength,_genderDistribution = genderDistribution;
  factory _DashboardStudentStats.fromJson(Map<String, dynamic> json) => _$DashboardStudentStatsFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey(name: 'total_active') final  int totalActive;
@override@JsonKey() final  int active;
@override@JsonKey() final  int inactive;
 final  List<DashboardClassStrength> _classWiseStrength;
@override@JsonKey(name: 'class_wise_strength') List<DashboardClassStrength> get classWiseStrength {
  if (_classWiseStrength is EqualUnmodifiableListView) return _classWiseStrength;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_classWiseStrength);
}

 final  Map<String, int> _genderDistribution;
@override@JsonKey(name: 'gender_distribution') Map<String, int> get genderDistribution {
  if (_genderDistribution is EqualUnmodifiableMapView) return _genderDistribution;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_genderDistribution);
}


/// Create a copy of DashboardStudentStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStudentStatsCopyWith<_DashboardStudentStats> get copyWith => __$DashboardStudentStatsCopyWithImpl<_DashboardStudentStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStudentStatsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStudentStats&&(identical(other.total, total) || other.total == total)&&(identical(other.totalActive, totalActive) || other.totalActive == totalActive)&&(identical(other.active, active) || other.active == active)&&(identical(other.inactive, inactive) || other.inactive == inactive)&&const DeepCollectionEquality().equals(other.classWiseStrength, _classWiseStrength)&&const DeepCollectionEquality().equals(other.genderDistribution, _genderDistribution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,totalActive,active,inactive,const DeepCollectionEquality().hash(_classWiseStrength),const DeepCollectionEquality().hash(_genderDistribution));
}

@override
String toString() {
    return 'DashboardStudentStats(total: $total, totalActive: $totalActive, active: $active, inactive: $inactive, classWiseStrength: $classWiseStrength, genderDistribution: $genderDistribution)';
}


}

/// @nodoc
abstract mixin class _$DashboardStudentStatsCopyWith<$Res> implements $DashboardStudentStatsCopyWith<$Res> {
  factory _$DashboardStudentStatsCopyWith(_DashboardStudentStats value, $Res Function(_DashboardStudentStats) _then) = __$DashboardStudentStatsCopyWithImpl;
@override @useResult
$Res call({
 int total,@JsonKey(name: 'total_active') int totalActive, int active, int inactive,@JsonKey(name: 'class_wise_strength') List<DashboardClassStrength> classWiseStrength,@JsonKey(name: 'gender_distribution') Map<String, int> genderDistribution
});




}
/// @nodoc
class __$DashboardStudentStatsCopyWithImpl<$Res>
    implements _$DashboardStudentStatsCopyWith<$Res> {
  __$DashboardStudentStatsCopyWithImpl(this._self, this._then);

  final _DashboardStudentStats _self;
  final $Res Function(_DashboardStudentStats) _then;

/// Create a copy of DashboardStudentStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? totalActive = null,Object? active = null,Object? inactive = null,Object? classWiseStrength = null,Object? genderDistribution = null,}) {
  return _then(_DashboardStudentStats(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalActive: null == totalActive ? _self.totalActive : totalActive // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,classWiseStrength: null == classWiseStrength ? _self._classWiseStrength : classWiseStrength // ignore: cast_nullable_to_non_nullable
as List<DashboardClassStrength>,genderDistribution: null == genderDistribution ? _self._genderDistribution : genderDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$DashboardClassStrength {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'class_name') String? get className; int get total;
/// Create a copy of DashboardClassStrength
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardClassStrengthCopyWith<DashboardClassStrength> get copyWith => _$DashboardClassStrengthCopyWithImpl<DashboardClassStrength>(this as DashboardClassStrength, _$identity);

  /// Serializes this DashboardClassStrength to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardClassStrength;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardClassStrength&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardClassStrength;
  return Object.hash(runtimeType,_this.classId,_this.className,_this.total);
}

@override
String toString() {
  final _this = this as DashboardClassStrength;
  return 'DashboardClassStrength(classId: ${_this.classId}, className: ${_this.className}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $DashboardClassStrengthCopyWith<$Res>  {
  factory $DashboardClassStrengthCopyWith(DashboardClassStrength value, $Res Function(DashboardClassStrength) _then) = _$DashboardClassStrengthCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className, int total
});




}
/// @nodoc
class _$DashboardClassStrengthCopyWithImpl<$Res>
    implements $DashboardClassStrengthCopyWith<$Res> {
  _$DashboardClassStrengthCopyWithImpl(this._self, this._then);

  final DashboardClassStrength _self;
  final $Res Function(DashboardClassStrength) _then;

/// Create a copy of DashboardClassStrength
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? className = freezed,Object? total = null,}) {
  return _then(DashboardClassStrength(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardClassStrength].
extension DashboardClassStrengthPatterns on DashboardClassStrength {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardClassStrength value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardClassStrength() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardClassStrength value)  $default,){
final _that = this;
switch (_that) {
case _DashboardClassStrength():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardClassStrength value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardClassStrength() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardClassStrength() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className,  int total)  $default,) {final _that = this;
switch (_that) {
case _DashboardClassStrength():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className,  int total)?  $default,) {final _that = this;
switch (_that) {
case _DashboardClassStrength() when $default != null:
return $default(_that.classId,_that.className,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardClassStrength implements DashboardClassStrength {
  const _DashboardClassStrength({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'class_name') this.className, this.total = 0});
  factory _DashboardClassStrength.fromJson(Map<String, dynamic> json) => _$DashboardClassStrengthFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey() final  int total;

/// Create a copy of DashboardClassStrength
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardClassStrengthCopyWith<_DashboardClassStrength> get copyWith => __$DashboardClassStrengthCopyWithImpl<_DashboardClassStrength>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardClassStrengthToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardClassStrength&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,className,total);
}

@override
String toString() {
    return 'DashboardClassStrength(classId: $classId, className: $className, total: $total)';
}


}

/// @nodoc
abstract mixin class _$DashboardClassStrengthCopyWith<$Res> implements $DashboardClassStrengthCopyWith<$Res> {
  factory _$DashboardClassStrengthCopyWith(_DashboardClassStrength value, $Res Function(_DashboardClassStrength) _then) = __$DashboardClassStrengthCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className, int total
});




}
/// @nodoc
class __$DashboardClassStrengthCopyWithImpl<$Res>
    implements _$DashboardClassStrengthCopyWith<$Res> {
  __$DashboardClassStrengthCopyWithImpl(this._self, this._then);

  final _DashboardClassStrength _self;
  final $Res Function(_DashboardClassStrength) _then;

/// Create a copy of DashboardClassStrength
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? className = freezed,Object? total = null,}) {
  return _then(_DashboardClassStrength(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardApplicationStats {

 int get total; int get submitted; int get approved; int get rejected; int get enrolled;@JsonKey(name: 'by_status') Map<String, int> get byStatus;
/// Create a copy of DashboardApplicationStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardApplicationStatsCopyWith<DashboardApplicationStats> get copyWith => _$DashboardApplicationStatsCopyWithImpl<DashboardApplicationStats>(this as DashboardApplicationStats, _$identity);

  /// Serializes this DashboardApplicationStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardApplicationStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardApplicationStats&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.submitted, _this.submitted) || other.submitted == _this.submitted)&&(identical(other.approved, _this.approved) || other.approved == _this.approved)&&(identical(other.rejected, _this.rejected) || other.rejected == _this.rejected)&&(identical(other.enrolled, _this.enrolled) || other.enrolled == _this.enrolled)&&const DeepCollectionEquality().equals(other.byStatus, _this.byStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardApplicationStats;
  return Object.hash(runtimeType,_this.total,_this.submitted,_this.approved,_this.rejected,_this.enrolled,const DeepCollectionEquality().hash(_this.byStatus));
}

@override
String toString() {
  final _this = this as DashboardApplicationStats;
  return 'DashboardApplicationStats(total: ${_this.total}, submitted: ${_this.submitted}, approved: ${_this.approved}, rejected: ${_this.rejected}, enrolled: ${_this.enrolled}, byStatus: ${_this.byStatus})';
}


}

/// @nodoc
abstract mixin class $DashboardApplicationStatsCopyWith<$Res>  {
  factory $DashboardApplicationStatsCopyWith(DashboardApplicationStats value, $Res Function(DashboardApplicationStats) _then) = _$DashboardApplicationStatsCopyWithImpl;
@useResult
$Res call({
 int total, int submitted, int approved, int rejected, int enrolled,@JsonKey(name: 'by_status') Map<String, int> byStatus
});




}
/// @nodoc
class _$DashboardApplicationStatsCopyWithImpl<$Res>
    implements $DashboardApplicationStatsCopyWith<$Res> {
  _$DashboardApplicationStatsCopyWithImpl(this._self, this._then);

  final DashboardApplicationStats _self;
  final $Res Function(DashboardApplicationStats) _then;

/// Create a copy of DashboardApplicationStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? submitted = null,Object? approved = null,Object? rejected = null,Object? enrolled = null,Object? byStatus = null,}) {
  return _then(DashboardApplicationStats(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as int,approved: null == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as int,rejected: null == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int,enrolled: null == enrolled ? _self.enrolled : enrolled // ignore: cast_nullable_to_non_nullable
as int,byStatus: null == byStatus ? _self.byStatus : byStatus // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardApplicationStats].
extension DashboardApplicationStatsPatterns on DashboardApplicationStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardApplicationStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardApplicationStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardApplicationStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardApplicationStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardApplicationStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardApplicationStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int submitted,  int approved,  int rejected,  int enrolled, @JsonKey(name: 'by_status')  Map<String, int> byStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardApplicationStats() when $default != null:
return $default(_that.total,_that.submitted,_that.approved,_that.rejected,_that.enrolled,_that.byStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int submitted,  int approved,  int rejected,  int enrolled, @JsonKey(name: 'by_status')  Map<String, int> byStatus)  $default,) {final _that = this;
switch (_that) {
case _DashboardApplicationStats():
return $default(_that.total,_that.submitted,_that.approved,_that.rejected,_that.enrolled,_that.byStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int submitted,  int approved,  int rejected,  int enrolled, @JsonKey(name: 'by_status')  Map<String, int> byStatus)?  $default,) {final _that = this;
switch (_that) {
case _DashboardApplicationStats() when $default != null:
return $default(_that.total,_that.submitted,_that.approved,_that.rejected,_that.enrolled,_that.byStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardApplicationStats implements DashboardApplicationStats {
  const _DashboardApplicationStats({this.total = 0, this.submitted = 0, this.approved = 0, this.rejected = 0, this.enrolled = 0, @JsonKey(name: 'by_status')  Map<String, int> byStatus = const <String, int>{}}): _byStatus = byStatus;
  factory _DashboardApplicationStats.fromJson(Map<String, dynamic> json) => _$DashboardApplicationStatsFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int submitted;
@override@JsonKey() final  int approved;
@override@JsonKey() final  int rejected;
@override@JsonKey() final  int enrolled;
 final  Map<String, int> _byStatus;
@override@JsonKey(name: 'by_status') Map<String, int> get byStatus {
  if (_byStatus is EqualUnmodifiableMapView) return _byStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byStatus);
}


/// Create a copy of DashboardApplicationStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardApplicationStatsCopyWith<_DashboardApplicationStats> get copyWith => __$DashboardApplicationStatsCopyWithImpl<_DashboardApplicationStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardApplicationStatsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardApplicationStats&&(identical(other.total, total) || other.total == total)&&(identical(other.submitted, submitted) || other.submitted == submitted)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.rejected, rejected) || other.rejected == rejected)&&(identical(other.enrolled, enrolled) || other.enrolled == enrolled)&&const DeepCollectionEquality().equals(other.byStatus, _byStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,submitted,approved,rejected,enrolled,const DeepCollectionEquality().hash(_byStatus));
}

@override
String toString() {
    return 'DashboardApplicationStats(total: $total, submitted: $submitted, approved: $approved, rejected: $rejected, enrolled: $enrolled, byStatus: $byStatus)';
}


}

/// @nodoc
abstract mixin class _$DashboardApplicationStatsCopyWith<$Res> implements $DashboardApplicationStatsCopyWith<$Res> {
  factory _$DashboardApplicationStatsCopyWith(_DashboardApplicationStats value, $Res Function(_DashboardApplicationStats) _then) = __$DashboardApplicationStatsCopyWithImpl;
@override @useResult
$Res call({
 int total, int submitted, int approved, int rejected, int enrolled,@JsonKey(name: 'by_status') Map<String, int> byStatus
});




}
/// @nodoc
class __$DashboardApplicationStatsCopyWithImpl<$Res>
    implements _$DashboardApplicationStatsCopyWith<$Res> {
  __$DashboardApplicationStatsCopyWithImpl(this._self, this._then);

  final _DashboardApplicationStats _self;
  final $Res Function(_DashboardApplicationStats) _then;

/// Create a copy of DashboardApplicationStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? submitted = null,Object? approved = null,Object? rejected = null,Object? enrolled = null,Object? byStatus = null,}) {
  return _then(_DashboardApplicationStats(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as int,approved: null == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as int,rejected: null == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int,enrolled: null == enrolled ? _self.enrolled : enrolled // ignore: cast_nullable_to_non_nullable
as int,byStatus: null == byStatus ? _self._byStatus : byStatus // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$DashboardTransportStats {

@JsonKey(name: 'total_buses') int get totalBuses;@JsonKey(name: 'active_buses') int get activeBuses;@JsonKey(name: 'total_drivers') int get totalDrivers;@JsonKey(name: 'active_drivers') int get activeDrivers;@JsonKey(name: 'students_on_transport') int get studentsOnTransport;@JsonKey(name: 'delays_flagged_today') int get delaysFlaggedToday;
/// Create a copy of DashboardTransportStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardTransportStatsCopyWith<DashboardTransportStats> get copyWith => _$DashboardTransportStatsCopyWithImpl<DashboardTransportStats>(this as DashboardTransportStats, _$identity);

  /// Serializes this DashboardTransportStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardTransportStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardTransportStats&&(identical(other.totalBuses, _this.totalBuses) || other.totalBuses == _this.totalBuses)&&(identical(other.activeBuses, _this.activeBuses) || other.activeBuses == _this.activeBuses)&&(identical(other.totalDrivers, _this.totalDrivers) || other.totalDrivers == _this.totalDrivers)&&(identical(other.activeDrivers, _this.activeDrivers) || other.activeDrivers == _this.activeDrivers)&&(identical(other.studentsOnTransport, _this.studentsOnTransport) || other.studentsOnTransport == _this.studentsOnTransport)&&(identical(other.delaysFlaggedToday, _this.delaysFlaggedToday) || other.delaysFlaggedToday == _this.delaysFlaggedToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardTransportStats;
  return Object.hash(runtimeType,_this.totalBuses,_this.activeBuses,_this.totalDrivers,_this.activeDrivers,_this.studentsOnTransport,_this.delaysFlaggedToday);
}

@override
String toString() {
  final _this = this as DashboardTransportStats;
  return 'DashboardTransportStats(totalBuses: ${_this.totalBuses}, activeBuses: ${_this.activeBuses}, totalDrivers: ${_this.totalDrivers}, activeDrivers: ${_this.activeDrivers}, studentsOnTransport: ${_this.studentsOnTransport}, delaysFlaggedToday: ${_this.delaysFlaggedToday})';
}


}

/// @nodoc
abstract mixin class $DashboardTransportStatsCopyWith<$Res>  {
  factory $DashboardTransportStatsCopyWith(DashboardTransportStats value, $Res Function(DashboardTransportStats) _then) = _$DashboardTransportStatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_buses') int totalBuses,@JsonKey(name: 'active_buses') int activeBuses,@JsonKey(name: 'total_drivers') int totalDrivers,@JsonKey(name: 'active_drivers') int activeDrivers,@JsonKey(name: 'students_on_transport') int studentsOnTransport,@JsonKey(name: 'delays_flagged_today') int delaysFlaggedToday
});




}
/// @nodoc
class _$DashboardTransportStatsCopyWithImpl<$Res>
    implements $DashboardTransportStatsCopyWith<$Res> {
  _$DashboardTransportStatsCopyWithImpl(this._self, this._then);

  final DashboardTransportStats _self;
  final $Res Function(DashboardTransportStats) _then;

/// Create a copy of DashboardTransportStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalBuses = null,Object? activeBuses = null,Object? totalDrivers = null,Object? activeDrivers = null,Object? studentsOnTransport = null,Object? delaysFlaggedToday = null,}) {
  return _then(DashboardTransportStats(
totalBuses: null == totalBuses ? _self.totalBuses : totalBuses // ignore: cast_nullable_to_non_nullable
as int,activeBuses: null == activeBuses ? _self.activeBuses : activeBuses // ignore: cast_nullable_to_non_nullable
as int,totalDrivers: null == totalDrivers ? _self.totalDrivers : totalDrivers // ignore: cast_nullable_to_non_nullable
as int,activeDrivers: null == activeDrivers ? _self.activeDrivers : activeDrivers // ignore: cast_nullable_to_non_nullable
as int,studentsOnTransport: null == studentsOnTransport ? _self.studentsOnTransport : studentsOnTransport // ignore: cast_nullable_to_non_nullable
as int,delaysFlaggedToday: null == delaysFlaggedToday ? _self.delaysFlaggedToday : delaysFlaggedToday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardTransportStats].
extension DashboardTransportStatsPatterns on DashboardTransportStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardTransportStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardTransportStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardTransportStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardTransportStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardTransportStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardTransportStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_buses')  int totalBuses, @JsonKey(name: 'active_buses')  int activeBuses, @JsonKey(name: 'total_drivers')  int totalDrivers, @JsonKey(name: 'active_drivers')  int activeDrivers, @JsonKey(name: 'students_on_transport')  int studentsOnTransport, @JsonKey(name: 'delays_flagged_today')  int delaysFlaggedToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardTransportStats() when $default != null:
return $default(_that.totalBuses,_that.activeBuses,_that.totalDrivers,_that.activeDrivers,_that.studentsOnTransport,_that.delaysFlaggedToday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_buses')  int totalBuses, @JsonKey(name: 'active_buses')  int activeBuses, @JsonKey(name: 'total_drivers')  int totalDrivers, @JsonKey(name: 'active_drivers')  int activeDrivers, @JsonKey(name: 'students_on_transport')  int studentsOnTransport, @JsonKey(name: 'delays_flagged_today')  int delaysFlaggedToday)  $default,) {final _that = this;
switch (_that) {
case _DashboardTransportStats():
return $default(_that.totalBuses,_that.activeBuses,_that.totalDrivers,_that.activeDrivers,_that.studentsOnTransport,_that.delaysFlaggedToday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_buses')  int totalBuses, @JsonKey(name: 'active_buses')  int activeBuses, @JsonKey(name: 'total_drivers')  int totalDrivers, @JsonKey(name: 'active_drivers')  int activeDrivers, @JsonKey(name: 'students_on_transport')  int studentsOnTransport, @JsonKey(name: 'delays_flagged_today')  int delaysFlaggedToday)?  $default,) {final _that = this;
switch (_that) {
case _DashboardTransportStats() when $default != null:
return $default(_that.totalBuses,_that.activeBuses,_that.totalDrivers,_that.activeDrivers,_that.studentsOnTransport,_that.delaysFlaggedToday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardTransportStats implements DashboardTransportStats {
  const _DashboardTransportStats({@JsonKey(name: 'total_buses') this.totalBuses = 0, @JsonKey(name: 'active_buses') this.activeBuses = 0, @JsonKey(name: 'total_drivers') this.totalDrivers = 0, @JsonKey(name: 'active_drivers') this.activeDrivers = 0, @JsonKey(name: 'students_on_transport') this.studentsOnTransport = 0, @JsonKey(name: 'delays_flagged_today') this.delaysFlaggedToday = 0});
  factory _DashboardTransportStats.fromJson(Map<String, dynamic> json) => _$DashboardTransportStatsFromJson(json);

@override@JsonKey(name: 'total_buses') final  int totalBuses;
@override@JsonKey(name: 'active_buses') final  int activeBuses;
@override@JsonKey(name: 'total_drivers') final  int totalDrivers;
@override@JsonKey(name: 'active_drivers') final  int activeDrivers;
@override@JsonKey(name: 'students_on_transport') final  int studentsOnTransport;
@override@JsonKey(name: 'delays_flagged_today') final  int delaysFlaggedToday;

/// Create a copy of DashboardTransportStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardTransportStatsCopyWith<_DashboardTransportStats> get copyWith => __$DashboardTransportStatsCopyWithImpl<_DashboardTransportStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardTransportStatsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardTransportStats&&(identical(other.totalBuses, totalBuses) || other.totalBuses == totalBuses)&&(identical(other.activeBuses, activeBuses) || other.activeBuses == activeBuses)&&(identical(other.totalDrivers, totalDrivers) || other.totalDrivers == totalDrivers)&&(identical(other.activeDrivers, activeDrivers) || other.activeDrivers == activeDrivers)&&(identical(other.studentsOnTransport, studentsOnTransport) || other.studentsOnTransport == studentsOnTransport)&&(identical(other.delaysFlaggedToday, delaysFlaggedToday) || other.delaysFlaggedToday == delaysFlaggedToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalBuses,activeBuses,totalDrivers,activeDrivers,studentsOnTransport,delaysFlaggedToday);
}

@override
String toString() {
    return 'DashboardTransportStats(totalBuses: $totalBuses, activeBuses: $activeBuses, totalDrivers: $totalDrivers, activeDrivers: $activeDrivers, studentsOnTransport: $studentsOnTransport, delaysFlaggedToday: $delaysFlaggedToday)';
}


}

/// @nodoc
abstract mixin class _$DashboardTransportStatsCopyWith<$Res> implements $DashboardTransportStatsCopyWith<$Res> {
  factory _$DashboardTransportStatsCopyWith(_DashboardTransportStats value, $Res Function(_DashboardTransportStats) _then) = __$DashboardTransportStatsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_buses') int totalBuses,@JsonKey(name: 'active_buses') int activeBuses,@JsonKey(name: 'total_drivers') int totalDrivers,@JsonKey(name: 'active_drivers') int activeDrivers,@JsonKey(name: 'students_on_transport') int studentsOnTransport,@JsonKey(name: 'delays_flagged_today') int delaysFlaggedToday
});




}
/// @nodoc
class __$DashboardTransportStatsCopyWithImpl<$Res>
    implements _$DashboardTransportStatsCopyWith<$Res> {
  __$DashboardTransportStatsCopyWithImpl(this._self, this._then);

  final _DashboardTransportStats _self;
  final $Res Function(_DashboardTransportStats) _then;

/// Create a copy of DashboardTransportStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalBuses = null,Object? activeBuses = null,Object? totalDrivers = null,Object? activeDrivers = null,Object? studentsOnTransport = null,Object? delaysFlaggedToday = null,}) {
  return _then(_DashboardTransportStats(
totalBuses: null == totalBuses ? _self.totalBuses : totalBuses // ignore: cast_nullable_to_non_nullable
as int,activeBuses: null == activeBuses ? _self.activeBuses : activeBuses // ignore: cast_nullable_to_non_nullable
as int,totalDrivers: null == totalDrivers ? _self.totalDrivers : totalDrivers // ignore: cast_nullable_to_non_nullable
as int,activeDrivers: null == activeDrivers ? _self.activeDrivers : activeDrivers // ignore: cast_nullable_to_non_nullable
as int,studentsOnTransport: null == studentsOnTransport ? _self.studentsOnTransport : studentsOnTransport // ignore: cast_nullable_to_non_nullable
as int,delaysFlaggedToday: null == delaysFlaggedToday ? _self.delaysFlaggedToday : delaysFlaggedToday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardAttendanceToday {

 DateTime? get from; DateTime? get to; Map<String, int> get summary;
/// Create a copy of DashboardAttendanceToday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardAttendanceTodayCopyWith<DashboardAttendanceToday> get copyWith => _$DashboardAttendanceTodayCopyWithImpl<DashboardAttendanceToday>(this as DashboardAttendanceToday, _$identity);

  /// Serializes this DashboardAttendanceToday to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardAttendanceToday;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardAttendanceToday&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&const DeepCollectionEquality().equals(other.summary, _this.summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardAttendanceToday;
  return Object.hash(runtimeType,_this.from,_this.to,const DeepCollectionEquality().hash(_this.summary));
}

@override
String toString() {
  final _this = this as DashboardAttendanceToday;
  return 'DashboardAttendanceToday(from: ${_this.from}, to: ${_this.to}, summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $DashboardAttendanceTodayCopyWith<$Res>  {
  factory $DashboardAttendanceTodayCopyWith(DashboardAttendanceToday value, $Res Function(DashboardAttendanceToday) _then) = _$DashboardAttendanceTodayCopyWithImpl;
@useResult
$Res call({
 DateTime? from, DateTime? to, Map<String, int> summary
});




}
/// @nodoc
class _$DashboardAttendanceTodayCopyWithImpl<$Res>
    implements $DashboardAttendanceTodayCopyWith<$Res> {
  _$DashboardAttendanceTodayCopyWithImpl(this._self, this._then);

  final DashboardAttendanceToday _self;
  final $Res Function(DashboardAttendanceToday) _then;

/// Create a copy of DashboardAttendanceToday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,Object? summary = null,}) {
  return _then(DashboardAttendanceToday(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardAttendanceToday].
extension DashboardAttendanceTodayPatterns on DashboardAttendanceToday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardAttendanceToday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardAttendanceToday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardAttendanceToday value)  $default,){
final _that = this;
switch (_that) {
case _DashboardAttendanceToday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardAttendanceToday value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardAttendanceToday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  Map<String, int> summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardAttendanceToday() when $default != null:
return $default(_that.from,_that.to,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  Map<String, int> summary)  $default,) {final _that = this;
switch (_that) {
case _DashboardAttendanceToday():
return $default(_that.from,_that.to,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? from,  DateTime? to,  Map<String, int> summary)?  $default,) {final _that = this;
switch (_that) {
case _DashboardAttendanceToday() when $default != null:
return $default(_that.from,_that.to,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardAttendanceToday implements DashboardAttendanceToday {
  const _DashboardAttendanceToday({this.from, this.to,  Map<String, int> summary = const <String, int>{}}): _summary = summary;
  factory _DashboardAttendanceToday.fromJson(Map<String, dynamic> json) => _$DashboardAttendanceTodayFromJson(json);

@override final  DateTime? from;
@override final  DateTime? to;
 final  Map<String, int> _summary;
@override@JsonKey() Map<String, int> get summary {
  if (_summary is EqualUnmodifiableMapView) return _summary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_summary);
}


/// Create a copy of DashboardAttendanceToday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardAttendanceTodayCopyWith<_DashboardAttendanceToday> get copyWith => __$DashboardAttendanceTodayCopyWithImpl<_DashboardAttendanceToday>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardAttendanceTodayToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardAttendanceToday&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&const DeepCollectionEquality().equals(other.summary, _summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to,const DeepCollectionEquality().hash(_summary));
}

@override
String toString() {
    return 'DashboardAttendanceToday(from: $from, to: $to, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$DashboardAttendanceTodayCopyWith<$Res> implements $DashboardAttendanceTodayCopyWith<$Res> {
  factory _$DashboardAttendanceTodayCopyWith(_DashboardAttendanceToday value, $Res Function(_DashboardAttendanceToday) _then) = __$DashboardAttendanceTodayCopyWithImpl;
@override @useResult
$Res call({
 DateTime? from, DateTime? to, Map<String, int> summary
});




}
/// @nodoc
class __$DashboardAttendanceTodayCopyWithImpl<$Res>
    implements _$DashboardAttendanceTodayCopyWith<$Res> {
  __$DashboardAttendanceTodayCopyWithImpl(this._self, this._then);

  final _DashboardAttendanceToday _self;
  final $Res Function(_DashboardAttendanceToday) _then;

/// Create a copy of DashboardAttendanceToday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,Object? summary = null,}) {
  return _then(_DashboardAttendanceToday(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,summary: null == summary ? _self._summary : summary // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$DashboardBirthday {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; DateTime? get dob; String? get gender;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of DashboardBirthday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardBirthdayCopyWith<DashboardBirthday> get copyWith => _$DashboardBirthdayCopyWithImpl<DashboardBirthday>(this as DashboardBirthday, _$identity);

  /// Serializes this DashboardBirthday to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardBirthday;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardBirthday&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardBirthday;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.firstName,_this.middleName,_this.lastName,_this.dob,_this.gender,_this.photoUrl,_this.className,_this.sectionName);
}

@override
String toString() {
  final _this = this as DashboardBirthday;
  return 'DashboardBirthday(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, dob: ${_this.dob}, gender: ${_this.gender}, photoUrl: ${_this.photoUrl}, className: ${_this.className}, sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $DashboardBirthdayCopyWith<$Res>  {
  factory $DashboardBirthdayCopyWith(DashboardBirthday value, $Res Function(DashboardBirthday) _then) = _$DashboardBirthdayCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, DateTime? dob, String? gender,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$DashboardBirthdayCopyWithImpl<$Res>
    implements $DashboardBirthdayCopyWith<$Res> {
  _$DashboardBirthdayCopyWithImpl(this._self, this._then);

  final DashboardBirthday _self;
  final $Res Function(DashboardBirthday) _then;

/// Create a copy of DashboardBirthday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? dob = freezed,Object? gender = freezed,Object? photoUrl = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(DashboardBirthday(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [DashboardBirthday].
extension DashboardBirthdayPatterns on DashboardBirthday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardBirthday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardBirthday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardBirthday value)  $default,){
final _that = this;
switch (_that) {
case _DashboardBirthday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardBirthday value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardBirthday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  DateTime? dob,  String? gender, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardBirthday() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  DateTime? dob,  String? gender, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _DashboardBirthday():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  DateTime? dob,  String? gender, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _DashboardBirthday() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.middleName,_that.lastName,_that.dob,_that.gender,_that.photoUrl,_that.className,_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardBirthday implements DashboardBirthday {
  const _DashboardBirthday({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.dob, this.gender, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName});
  factory _DashboardBirthday.fromJson(Map<String, dynamic> json) => _$DashboardBirthdayFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
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

/// Create a copy of DashboardBirthday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardBirthdayCopyWith<_DashboardBirthday> get copyWith => __$DashboardBirthdayCopyWithImpl<_DashboardBirthday>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardBirthdayToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardBirthday&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,firstName,middleName,lastName,dob,gender,photoUrl,className,sectionName);
}

@override
String toString() {
    return 'DashboardBirthday(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, firstName: $firstName, middleName: $middleName, lastName: $lastName, dob: $dob, gender: $gender, photoUrl: $photoUrl, className: $className, sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$DashboardBirthdayCopyWith<$Res> implements $DashboardBirthdayCopyWith<$Res> {
  factory _$DashboardBirthdayCopyWith(_DashboardBirthday value, $Res Function(_DashboardBirthday) _then) = __$DashboardBirthdayCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, DateTime? dob, String? gender,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$DashboardBirthdayCopyWithImpl<$Res>
    implements _$DashboardBirthdayCopyWith<$Res> {
  __$DashboardBirthdayCopyWithImpl(this._self, this._then);

  final _DashboardBirthday _self;
  final $Res Function(_DashboardBirthday) _then;

/// Create a copy of DashboardBirthday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? dob = freezed,Object? gender = freezed,Object? photoUrl = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(_DashboardBirthday(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
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
mixin _$DashboardFeeSnapshot {

@JsonKey(name: 'total_fee_collected')@DecimalConverter() Decimal get totalFeeCollected;@JsonKey(name: 'todays_collection')@DecimalConverter() Decimal get todaysCollection;@JsonKey(name: 'this_month_collection')@DecimalConverter() Decimal get thisMonthCollection;@JsonKey(name: 'pending_amount')@DecimalConverter() Decimal get pendingAmount;@JsonKey(name: 'students_with_pending_fees') int get studentsWithPendingFees;@JsonKey(name: 'active_scholarships') int get activeScholarships;
/// Create a copy of DashboardFeeSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardFeeSnapshotCopyWith<DashboardFeeSnapshot> get copyWith => _$DashboardFeeSnapshotCopyWithImpl<DashboardFeeSnapshot>(this as DashboardFeeSnapshot, _$identity);

  /// Serializes this DashboardFeeSnapshot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardFeeSnapshot;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardFeeSnapshot&&(identical(other.totalFeeCollected, _this.totalFeeCollected) || other.totalFeeCollected == _this.totalFeeCollected)&&(identical(other.todaysCollection, _this.todaysCollection) || other.todaysCollection == _this.todaysCollection)&&(identical(other.thisMonthCollection, _this.thisMonthCollection) || other.thisMonthCollection == _this.thisMonthCollection)&&(identical(other.pendingAmount, _this.pendingAmount) || other.pendingAmount == _this.pendingAmount)&&(identical(other.studentsWithPendingFees, _this.studentsWithPendingFees) || other.studentsWithPendingFees == _this.studentsWithPendingFees)&&(identical(other.activeScholarships, _this.activeScholarships) || other.activeScholarships == _this.activeScholarships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardFeeSnapshot;
  return Object.hash(runtimeType,_this.totalFeeCollected,_this.todaysCollection,_this.thisMonthCollection,_this.pendingAmount,_this.studentsWithPendingFees,_this.activeScholarships);
}

@override
String toString() {
  final _this = this as DashboardFeeSnapshot;
  return 'DashboardFeeSnapshot(totalFeeCollected: ${_this.totalFeeCollected}, todaysCollection: ${_this.todaysCollection}, thisMonthCollection: ${_this.thisMonthCollection}, pendingAmount: ${_this.pendingAmount}, studentsWithPendingFees: ${_this.studentsWithPendingFees}, activeScholarships: ${_this.activeScholarships})';
}


}

/// @nodoc
abstract mixin class $DashboardFeeSnapshotCopyWith<$Res>  {
  factory $DashboardFeeSnapshotCopyWith(DashboardFeeSnapshot value, $Res Function(DashboardFeeSnapshot) _then) = _$DashboardFeeSnapshotCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_fee_collected')@DecimalConverter() Decimal totalFeeCollected,@JsonKey(name: 'todays_collection')@DecimalConverter() Decimal todaysCollection,@JsonKey(name: 'this_month_collection')@DecimalConverter() Decimal thisMonthCollection,@JsonKey(name: 'pending_amount')@DecimalConverter() Decimal pendingAmount,@JsonKey(name: 'students_with_pending_fees') int studentsWithPendingFees,@JsonKey(name: 'active_scholarships') int activeScholarships
});




}
/// @nodoc
class _$DashboardFeeSnapshotCopyWithImpl<$Res>
    implements $DashboardFeeSnapshotCopyWith<$Res> {
  _$DashboardFeeSnapshotCopyWithImpl(this._self, this._then);

  final DashboardFeeSnapshot _self;
  final $Res Function(DashboardFeeSnapshot) _then;

/// Create a copy of DashboardFeeSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalFeeCollected = null,Object? todaysCollection = null,Object? thisMonthCollection = null,Object? pendingAmount = null,Object? studentsWithPendingFees = null,Object? activeScholarships = null,}) {
  return _then(DashboardFeeSnapshot(
totalFeeCollected: null == totalFeeCollected ? _self.totalFeeCollected : totalFeeCollected // ignore: cast_nullable_to_non_nullable
as Decimal,todaysCollection: null == todaysCollection ? _self.todaysCollection : todaysCollection // ignore: cast_nullable_to_non_nullable
as Decimal,thisMonthCollection: null == thisMonthCollection ? _self.thisMonthCollection : thisMonthCollection // ignore: cast_nullable_to_non_nullable
as Decimal,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPendingFees: null == studentsWithPendingFees ? _self.studentsWithPendingFees : studentsWithPendingFees // ignore: cast_nullable_to_non_nullable
as int,activeScholarships: null == activeScholarships ? _self.activeScholarships : activeScholarships // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardFeeSnapshot].
extension DashboardFeeSnapshotPatterns on DashboardFeeSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardFeeSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardFeeSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardFeeSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _DashboardFeeSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardFeeSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardFeeSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_fee_collected')@DecimalConverter()  Decimal totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter()  Decimal todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter()  Decimal thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter()  Decimal pendingAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'active_scholarships')  int activeScholarships)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardFeeSnapshot() when $default != null:
return $default(_that.totalFeeCollected,_that.todaysCollection,_that.thisMonthCollection,_that.pendingAmount,_that.studentsWithPendingFees,_that.activeScholarships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_fee_collected')@DecimalConverter()  Decimal totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter()  Decimal todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter()  Decimal thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter()  Decimal pendingAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'active_scholarships')  int activeScholarships)  $default,) {final _that = this;
switch (_that) {
case _DashboardFeeSnapshot():
return $default(_that.totalFeeCollected,_that.todaysCollection,_that.thisMonthCollection,_that.pendingAmount,_that.studentsWithPendingFees,_that.activeScholarships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_fee_collected')@DecimalConverter()  Decimal totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter()  Decimal todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter()  Decimal thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter()  Decimal pendingAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'active_scholarships')  int activeScholarships)?  $default,) {final _that = this;
switch (_that) {
case _DashboardFeeSnapshot() when $default != null:
return $default(_that.totalFeeCollected,_that.todaysCollection,_that.thisMonthCollection,_that.pendingAmount,_that.studentsWithPendingFees,_that.activeScholarships);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardFeeSnapshot implements DashboardFeeSnapshot {
  const _DashboardFeeSnapshot({@JsonKey(name: 'total_fee_collected')@DecimalConverter() required this.totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter() required this.todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter() required this.thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter() required this.pendingAmount, @JsonKey(name: 'students_with_pending_fees') this.studentsWithPendingFees = 0, @JsonKey(name: 'active_scholarships') this.activeScholarships = 0});
  factory _DashboardFeeSnapshot.fromJson(Map<String, dynamic> json) => _$DashboardFeeSnapshotFromJson(json);

@override@JsonKey(name: 'total_fee_collected')@DecimalConverter() final  Decimal totalFeeCollected;
@override@JsonKey(name: 'todays_collection')@DecimalConverter() final  Decimal todaysCollection;
@override@JsonKey(name: 'this_month_collection')@DecimalConverter() final  Decimal thisMonthCollection;
@override@JsonKey(name: 'pending_amount')@DecimalConverter() final  Decimal pendingAmount;
@override@JsonKey(name: 'students_with_pending_fees') final  int studentsWithPendingFees;
@override@JsonKey(name: 'active_scholarships') final  int activeScholarships;

/// Create a copy of DashboardFeeSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardFeeSnapshotCopyWith<_DashboardFeeSnapshot> get copyWith => __$DashboardFeeSnapshotCopyWithImpl<_DashboardFeeSnapshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardFeeSnapshotToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardFeeSnapshot&&(identical(other.totalFeeCollected, totalFeeCollected) || other.totalFeeCollected == totalFeeCollected)&&(identical(other.todaysCollection, todaysCollection) || other.todaysCollection == todaysCollection)&&(identical(other.thisMonthCollection, thisMonthCollection) || other.thisMonthCollection == thisMonthCollection)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&(identical(other.studentsWithPendingFees, studentsWithPendingFees) || other.studentsWithPendingFees == studentsWithPendingFees)&&(identical(other.activeScholarships, activeScholarships) || other.activeScholarships == activeScholarships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalFeeCollected,todaysCollection,thisMonthCollection,pendingAmount,studentsWithPendingFees,activeScholarships);
}

@override
String toString() {
    return 'DashboardFeeSnapshot(totalFeeCollected: $totalFeeCollected, todaysCollection: $todaysCollection, thisMonthCollection: $thisMonthCollection, pendingAmount: $pendingAmount, studentsWithPendingFees: $studentsWithPendingFees, activeScholarships: $activeScholarships)';
}


}

/// @nodoc
abstract mixin class _$DashboardFeeSnapshotCopyWith<$Res> implements $DashboardFeeSnapshotCopyWith<$Res> {
  factory _$DashboardFeeSnapshotCopyWith(_DashboardFeeSnapshot value, $Res Function(_DashboardFeeSnapshot) _then) = __$DashboardFeeSnapshotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_fee_collected')@DecimalConverter() Decimal totalFeeCollected,@JsonKey(name: 'todays_collection')@DecimalConverter() Decimal todaysCollection,@JsonKey(name: 'this_month_collection')@DecimalConverter() Decimal thisMonthCollection,@JsonKey(name: 'pending_amount')@DecimalConverter() Decimal pendingAmount,@JsonKey(name: 'students_with_pending_fees') int studentsWithPendingFees,@JsonKey(name: 'active_scholarships') int activeScholarships
});




}
/// @nodoc
class __$DashboardFeeSnapshotCopyWithImpl<$Res>
    implements _$DashboardFeeSnapshotCopyWith<$Res> {
  __$DashboardFeeSnapshotCopyWithImpl(this._self, this._then);

  final _DashboardFeeSnapshot _self;
  final $Res Function(_DashboardFeeSnapshot) _then;

/// Create a copy of DashboardFeeSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalFeeCollected = null,Object? todaysCollection = null,Object? thisMonthCollection = null,Object? pendingAmount = null,Object? studentsWithPendingFees = null,Object? activeScholarships = null,}) {
  return _then(_DashboardFeeSnapshot(
totalFeeCollected: null == totalFeeCollected ? _self.totalFeeCollected : totalFeeCollected // ignore: cast_nullable_to_non_nullable
as Decimal,todaysCollection: null == todaysCollection ? _self.todaysCollection : todaysCollection // ignore: cast_nullable_to_non_nullable
as Decimal,thisMonthCollection: null == thisMonthCollection ? _self.thisMonthCollection : thisMonthCollection // ignore: cast_nullable_to_non_nullable
as Decimal,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPendingFees: null == studentsWithPendingFees ? _self.studentsWithPendingFees : studentsWithPendingFees // ignore: cast_nullable_to_non_nullable
as int,activeScholarships: null == activeScholarships ? _self.activeScholarships : activeScholarships // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardExamRow {

@JsonKey(name: 'exam_id') String get examId;@JsonKey(name: 'exam_name') String get examName;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'exam_types') DashboardExamTypeRef? get examType;
/// Create a copy of DashboardExamRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardExamRowCopyWith<DashboardExamRow> get copyWith => _$DashboardExamRowCopyWithImpl<DashboardExamRow>(this as DashboardExamRow, _$identity);

  /// Serializes this DashboardExamRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardExamRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardExamRow&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.examName, _this.examName) || other.examName == _this.examName)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.examType, _this.examType) || other.examType == _this.examType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardExamRow;
  return Object.hash(runtimeType,_this.examId,_this.examName,_this.startDate,_this.endDate,_this.examType);
}

@override
String toString() {
  final _this = this as DashboardExamRow;
  return 'DashboardExamRow(examId: ${_this.examId}, examName: ${_this.examName}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, examType: ${_this.examType})';
}


}

/// @nodoc
abstract mixin class $DashboardExamRowCopyWith<$Res>  {
  factory $DashboardExamRowCopyWith(DashboardExamRow value, $Res Function(DashboardExamRow) _then) = _$DashboardExamRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'exam_types') DashboardExamTypeRef? examType
});


$DashboardExamTypeRefCopyWith<$Res>? get examType;

}
/// @nodoc
class _$DashboardExamRowCopyWithImpl<$Res>
    implements $DashboardExamRowCopyWith<$Res> {
  _$DashboardExamRowCopyWithImpl(this._self, this._then);

  final DashboardExamRow _self;
  final $Res Function(DashboardExamRow) _then;

/// Create a copy of DashboardExamRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examName = null,Object? startDate = freezed,Object? endDate = freezed,Object? examType = freezed,}) {
  return _then(DashboardExamRow(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as DashboardExamTypeRef?,
  ));
}
/// Create a copy of DashboardExamRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardExamTypeRefCopyWith<$Res>? get examType {
    if (_self.examType == null) {
    return null;
  }

  return $DashboardExamTypeRefCopyWith<$Res>(_self.examType!, (value) {
    return _then(_self.copyWith(examType: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardExamRow].
extension DashboardExamRowPatterns on DashboardExamRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardExamRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardExamRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardExamRow value)  $default,){
final _that = this;
switch (_that) {
case _DashboardExamRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardExamRow value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardExamRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  DashboardExamTypeRef? examType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardExamRow() when $default != null:
return $default(_that.examId,_that.examName,_that.startDate,_that.endDate,_that.examType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  DashboardExamTypeRef? examType)  $default,) {final _that = this;
switch (_that) {
case _DashboardExamRow():
return $default(_that.examId,_that.examName,_that.startDate,_that.endDate,_that.examType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  DashboardExamTypeRef? examType)?  $default,) {final _that = this;
switch (_that) {
case _DashboardExamRow() when $default != null:
return $default(_that.examId,_that.examName,_that.startDate,_that.endDate,_that.examType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardExamRow implements DashboardExamRow {
  const _DashboardExamRow({@JsonKey(name: 'exam_id') required this.examId, @JsonKey(name: 'exam_name') required this.examName, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'exam_types') this.examType});
  factory _DashboardExamRow.fromJson(Map<String, dynamic> json) => _$DashboardExamRowFromJson(json);

@override@JsonKey(name: 'exam_id') final  String examId;
@override@JsonKey(name: 'exam_name') final  String examName;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'exam_types') final  DashboardExamTypeRef? examType;

/// Create a copy of DashboardExamRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardExamRowCopyWith<_DashboardExamRow> get copyWith => __$DashboardExamRowCopyWithImpl<_DashboardExamRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardExamRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardExamRow&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.examType, examType) || other.examType == examType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examId,examName,startDate,endDate,examType);
}

@override
String toString() {
    return 'DashboardExamRow(examId: $examId, examName: $examName, startDate: $startDate, endDate: $endDate, examType: $examType)';
}


}

/// @nodoc
abstract mixin class _$DashboardExamRowCopyWith<$Res> implements $DashboardExamRowCopyWith<$Res> {
  factory _$DashboardExamRowCopyWith(_DashboardExamRow value, $Res Function(_DashboardExamRow) _then) = __$DashboardExamRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'exam_types') DashboardExamTypeRef? examType
});


@override $DashboardExamTypeRefCopyWith<$Res>? get examType;

}
/// @nodoc
class __$DashboardExamRowCopyWithImpl<$Res>
    implements _$DashboardExamRowCopyWith<$Res> {
  __$DashboardExamRowCopyWithImpl(this._self, this._then);

  final _DashboardExamRow _self;
  final $Res Function(_DashboardExamRow) _then;

/// Create a copy of DashboardExamRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examName = null,Object? startDate = freezed,Object? endDate = freezed,Object? examType = freezed,}) {
  return _then(_DashboardExamRow(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as DashboardExamTypeRef?,
  ));
}

/// Create a copy of DashboardExamRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardExamTypeRefCopyWith<$Res>? get examType {
    if (_self.examType == null) {
    return null;
  }

  return $DashboardExamTypeRefCopyWith<$Res>(_self.examType!, (value) {
    return _then(_self.copyWith(examType: value));
  });
}
}


/// @nodoc
mixin _$DashboardExamTypeRef {

@JsonKey(name: 'exam_type_id') String? get examTypeId;@JsonKey(name: 'type_name') String? get typeName;
/// Create a copy of DashboardExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardExamTypeRefCopyWith<DashboardExamTypeRef> get copyWith => _$DashboardExamTypeRefCopyWithImpl<DashboardExamTypeRef>(this as DashboardExamTypeRef, _$identity);

  /// Serializes this DashboardExamTypeRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardExamTypeRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardExamTypeRef&&(identical(other.examTypeId, _this.examTypeId) || other.examTypeId == _this.examTypeId)&&(identical(other.typeName, _this.typeName) || other.typeName == _this.typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardExamTypeRef;
  return Object.hash(runtimeType,_this.examTypeId,_this.typeName);
}

@override
String toString() {
  final _this = this as DashboardExamTypeRef;
  return 'DashboardExamTypeRef(examTypeId: ${_this.examTypeId}, typeName: ${_this.typeName})';
}


}

/// @nodoc
abstract mixin class $DashboardExamTypeRefCopyWith<$Res>  {
  factory $DashboardExamTypeRefCopyWith(DashboardExamTypeRef value, $Res Function(DashboardExamTypeRef) _then) = _$DashboardExamTypeRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_type_id') String? examTypeId,@JsonKey(name: 'type_name') String? typeName
});




}
/// @nodoc
class _$DashboardExamTypeRefCopyWithImpl<$Res>
    implements $DashboardExamTypeRefCopyWith<$Res> {
  _$DashboardExamTypeRefCopyWithImpl(this._self, this._then);

  final DashboardExamTypeRef _self;
  final $Res Function(DashboardExamTypeRef) _then;

/// Create a copy of DashboardExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examTypeId = freezed,Object? typeName = freezed,}) {
  return _then(DashboardExamTypeRef(
examTypeId: freezed == examTypeId ? _self.examTypeId : examTypeId // ignore: cast_nullable_to_non_nullable
as String?,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardExamTypeRef].
extension DashboardExamTypeRefPatterns on DashboardExamTypeRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardExamTypeRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardExamTypeRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardExamTypeRef value)  $default,){
final _that = this;
switch (_that) {
case _DashboardExamTypeRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardExamTypeRef value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardExamTypeRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_type_id')  String? examTypeId, @JsonKey(name: 'type_name')  String? typeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardExamTypeRef() when $default != null:
return $default(_that.examTypeId,_that.typeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_type_id')  String? examTypeId, @JsonKey(name: 'type_name')  String? typeName)  $default,) {final _that = this;
switch (_that) {
case _DashboardExamTypeRef():
return $default(_that.examTypeId,_that.typeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_type_id')  String? examTypeId, @JsonKey(name: 'type_name')  String? typeName)?  $default,) {final _that = this;
switch (_that) {
case _DashboardExamTypeRef() when $default != null:
return $default(_that.examTypeId,_that.typeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardExamTypeRef implements DashboardExamTypeRef {
  const _DashboardExamTypeRef({@JsonKey(name: 'exam_type_id') this.examTypeId, @JsonKey(name: 'type_name') this.typeName});
  factory _DashboardExamTypeRef.fromJson(Map<String, dynamic> json) => _$DashboardExamTypeRefFromJson(json);

@override@JsonKey(name: 'exam_type_id') final  String? examTypeId;
@override@JsonKey(name: 'type_name') final  String? typeName;

/// Create a copy of DashboardExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardExamTypeRefCopyWith<_DashboardExamTypeRef> get copyWith => __$DashboardExamTypeRefCopyWithImpl<_DashboardExamTypeRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardExamTypeRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardExamTypeRef&&(identical(other.examTypeId, examTypeId) || other.examTypeId == examTypeId)&&(identical(other.typeName, typeName) || other.typeName == typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examTypeId,typeName);
}

@override
String toString() {
    return 'DashboardExamTypeRef(examTypeId: $examTypeId, typeName: $typeName)';
}


}

/// @nodoc
abstract mixin class _$DashboardExamTypeRefCopyWith<$Res> implements $DashboardExamTypeRefCopyWith<$Res> {
  factory _$DashboardExamTypeRefCopyWith(_DashboardExamTypeRef value, $Res Function(_DashboardExamTypeRef) _then) = __$DashboardExamTypeRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_type_id') String? examTypeId,@JsonKey(name: 'type_name') String? typeName
});




}
/// @nodoc
class __$DashboardExamTypeRefCopyWithImpl<$Res>
    implements _$DashboardExamTypeRefCopyWith<$Res> {
  __$DashboardExamTypeRefCopyWithImpl(this._self, this._then);

  final _DashboardExamTypeRef _self;
  final $Res Function(_DashboardExamTypeRef) _then;

/// Create a copy of DashboardExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examTypeId = freezed,Object? typeName = freezed,}) {
  return _then(_DashboardExamTypeRef(
examTypeId: freezed == examTypeId ? _self.examTypeId : examTypeId // ignore: cast_nullable_to_non_nullable
as String?,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DashboardHomeworkRow {

@JsonKey(name: 'homework_id') String get homeworkId; String get title;@JsonKey(name: 'due_date') DateTime? get dueDate; String? get type;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;
/// Create a copy of DashboardHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardHomeworkRowCopyWith<DashboardHomeworkRow> get copyWith => _$DashboardHomeworkRowCopyWithImpl<DashboardHomeworkRow>(this as DashboardHomeworkRow, _$identity);

  /// Serializes this DashboardHomeworkRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardHomeworkRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardHomeworkRow&&(identical(other.homeworkId, _this.homeworkId) || other.homeworkId == _this.homeworkId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardHomeworkRow;
  return Object.hash(runtimeType,_this.homeworkId,_this.title,_this.dueDate,_this.type,_this.classRef,_this.sectionRef,_this.subject);
}

@override
String toString() {
  final _this = this as DashboardHomeworkRow;
  return 'DashboardHomeworkRow(homeworkId: ${_this.homeworkId}, title: ${_this.title}, dueDate: ${_this.dueDate}, type: ${_this.type}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject})';
}


}

/// @nodoc
abstract mixin class $DashboardHomeworkRowCopyWith<$Res>  {
  factory $DashboardHomeworkRowCopyWith(DashboardHomeworkRow value, $Res Function(DashboardHomeworkRow) _then) = _$DashboardHomeworkRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'homework_id') String homeworkId, String title,@JsonKey(name: 'due_date') DateTime? dueDate, String? type,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$DashboardHomeworkRowCopyWithImpl<$Res>
    implements $DashboardHomeworkRowCopyWith<$Res> {
  _$DashboardHomeworkRowCopyWithImpl(this._self, this._then);

  final DashboardHomeworkRow _self;
  final $Res Function(DashboardHomeworkRow) _then;

/// Create a copy of DashboardHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homeworkId = null,Object? title = null,Object? dueDate = freezed,Object? type = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(DashboardHomeworkRow(
homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}
/// Create a copy of DashboardHomeworkRow
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
}/// Create a copy of DashboardHomeworkRow
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
}/// Create a copy of DashboardHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectRefCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardHomeworkRow].
extension DashboardHomeworkRowPatterns on DashboardHomeworkRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardHomeworkRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardHomeworkRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardHomeworkRow value)  $default,){
final _that = this;
switch (_that) {
case _DashboardHomeworkRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardHomeworkRow value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardHomeworkRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'homework_id')  String homeworkId,  String title, @JsonKey(name: 'due_date')  DateTime? dueDate,  String? type, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardHomeworkRow() when $default != null:
return $default(_that.homeworkId,_that.title,_that.dueDate,_that.type,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'homework_id')  String homeworkId,  String title, @JsonKey(name: 'due_date')  DateTime? dueDate,  String? type, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)  $default,) {final _that = this;
switch (_that) {
case _DashboardHomeworkRow():
return $default(_that.homeworkId,_that.title,_that.dueDate,_that.type,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'homework_id')  String homeworkId,  String title, @JsonKey(name: 'due_date')  DateTime? dueDate,  String? type, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,) {final _that = this;
switch (_that) {
case _DashboardHomeworkRow() when $default != null:
return $default(_that.homeworkId,_that.title,_that.dueDate,_that.type,_that.classRef,_that.sectionRef,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardHomeworkRow implements DashboardHomeworkRow {
  const _DashboardHomeworkRow({@JsonKey(name: 'homework_id') required this.homeworkId, this.title = '', @JsonKey(name: 'due_date') this.dueDate, this.type, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject});
  factory _DashboardHomeworkRow.fromJson(Map<String, dynamic> json) => _$DashboardHomeworkRowFromJson(json);

@override@JsonKey(name: 'homework_id') final  String homeworkId;
@override@JsonKey() final  String title;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override final  String? type;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;

/// Create a copy of DashboardHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardHomeworkRowCopyWith<_DashboardHomeworkRow> get copyWith => __$DashboardHomeworkRowCopyWithImpl<_DashboardHomeworkRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardHomeworkRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardHomeworkRow&&(identical(other.homeworkId, homeworkId) || other.homeworkId == homeworkId)&&(identical(other.title, title) || other.title == title)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.type, type) || other.type == type)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,homeworkId,title,dueDate,type,classRef,sectionRef,subject);
}

@override
String toString() {
    return 'DashboardHomeworkRow(homeworkId: $homeworkId, title: $title, dueDate: $dueDate, type: $type, classRef: $classRef, sectionRef: $sectionRef, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$DashboardHomeworkRowCopyWith<$Res> implements $DashboardHomeworkRowCopyWith<$Res> {
  factory _$DashboardHomeworkRowCopyWith(_DashboardHomeworkRow value, $Res Function(_DashboardHomeworkRow) _then) = __$DashboardHomeworkRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'homework_id') String homeworkId, String title,@JsonKey(name: 'due_date') DateTime? dueDate, String? type,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$DashboardHomeworkRowCopyWithImpl<$Res>
    implements _$DashboardHomeworkRowCopyWith<$Res> {
  __$DashboardHomeworkRowCopyWithImpl(this._self, this._then);

  final _DashboardHomeworkRow _self;
  final $Res Function(_DashboardHomeworkRow) _then;

/// Create a copy of DashboardHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homeworkId = null,Object? title = null,Object? dueDate = freezed,Object? type = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(_DashboardHomeworkRow(
homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}

/// Create a copy of DashboardHomeworkRow
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
}/// Create a copy of DashboardHomeworkRow
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
}/// Create a copy of DashboardHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectRefCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}


/// @nodoc
mixin _$DashboardExamSummary {

@JsonKey(name: 'total_exams') int get totalExams;@JsonKey(name: 'upcoming_exams') int get upcomingExams;@JsonKey(name: 'completed_exams') int get completedExams;@JsonKey(name: 'results_published') int get resultsPublished;@JsonKey(name: 'results_pending_publish') int get resultsPendingPublish;
/// Create a copy of DashboardExamSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardExamSummaryCopyWith<DashboardExamSummary> get copyWith => _$DashboardExamSummaryCopyWithImpl<DashboardExamSummary>(this as DashboardExamSummary, _$identity);

  /// Serializes this DashboardExamSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardExamSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardExamSummary&&(identical(other.totalExams, _this.totalExams) || other.totalExams == _this.totalExams)&&(identical(other.upcomingExams, _this.upcomingExams) || other.upcomingExams == _this.upcomingExams)&&(identical(other.completedExams, _this.completedExams) || other.completedExams == _this.completedExams)&&(identical(other.resultsPublished, _this.resultsPublished) || other.resultsPublished == _this.resultsPublished)&&(identical(other.resultsPendingPublish, _this.resultsPendingPublish) || other.resultsPendingPublish == _this.resultsPendingPublish));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardExamSummary;
  return Object.hash(runtimeType,_this.totalExams,_this.upcomingExams,_this.completedExams,_this.resultsPublished,_this.resultsPendingPublish);
}

@override
String toString() {
  final _this = this as DashboardExamSummary;
  return 'DashboardExamSummary(totalExams: ${_this.totalExams}, upcomingExams: ${_this.upcomingExams}, completedExams: ${_this.completedExams}, resultsPublished: ${_this.resultsPublished}, resultsPendingPublish: ${_this.resultsPendingPublish})';
}


}

/// @nodoc
abstract mixin class $DashboardExamSummaryCopyWith<$Res>  {
  factory $DashboardExamSummaryCopyWith(DashboardExamSummary value, $Res Function(DashboardExamSummary) _then) = _$DashboardExamSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_exams') int totalExams,@JsonKey(name: 'upcoming_exams') int upcomingExams,@JsonKey(name: 'completed_exams') int completedExams,@JsonKey(name: 'results_published') int resultsPublished,@JsonKey(name: 'results_pending_publish') int resultsPendingPublish
});




}
/// @nodoc
class _$DashboardExamSummaryCopyWithImpl<$Res>
    implements $DashboardExamSummaryCopyWith<$Res> {
  _$DashboardExamSummaryCopyWithImpl(this._self, this._then);

  final DashboardExamSummary _self;
  final $Res Function(DashboardExamSummary) _then;

/// Create a copy of DashboardExamSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalExams = null,Object? upcomingExams = null,Object? completedExams = null,Object? resultsPublished = null,Object? resultsPendingPublish = null,}) {
  return _then(DashboardExamSummary(
totalExams: null == totalExams ? _self.totalExams : totalExams // ignore: cast_nullable_to_non_nullable
as int,upcomingExams: null == upcomingExams ? _self.upcomingExams : upcomingExams // ignore: cast_nullable_to_non_nullable
as int,completedExams: null == completedExams ? _self.completedExams : completedExams // ignore: cast_nullable_to_non_nullable
as int,resultsPublished: null == resultsPublished ? _self.resultsPublished : resultsPublished // ignore: cast_nullable_to_non_nullable
as int,resultsPendingPublish: null == resultsPendingPublish ? _self.resultsPendingPublish : resultsPendingPublish // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardExamSummary].
extension DashboardExamSummaryPatterns on DashboardExamSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardExamSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardExamSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardExamSummary value)  $default,){
final _that = this;
switch (_that) {
case _DashboardExamSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardExamSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardExamSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_exams')  int totalExams, @JsonKey(name: 'upcoming_exams')  int upcomingExams, @JsonKey(name: 'completed_exams')  int completedExams, @JsonKey(name: 'results_published')  int resultsPublished, @JsonKey(name: 'results_pending_publish')  int resultsPendingPublish)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardExamSummary() when $default != null:
return $default(_that.totalExams,_that.upcomingExams,_that.completedExams,_that.resultsPublished,_that.resultsPendingPublish);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_exams')  int totalExams, @JsonKey(name: 'upcoming_exams')  int upcomingExams, @JsonKey(name: 'completed_exams')  int completedExams, @JsonKey(name: 'results_published')  int resultsPublished, @JsonKey(name: 'results_pending_publish')  int resultsPendingPublish)  $default,) {final _that = this;
switch (_that) {
case _DashboardExamSummary():
return $default(_that.totalExams,_that.upcomingExams,_that.completedExams,_that.resultsPublished,_that.resultsPendingPublish);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_exams')  int totalExams, @JsonKey(name: 'upcoming_exams')  int upcomingExams, @JsonKey(name: 'completed_exams')  int completedExams, @JsonKey(name: 'results_published')  int resultsPublished, @JsonKey(name: 'results_pending_publish')  int resultsPendingPublish)?  $default,) {final _that = this;
switch (_that) {
case _DashboardExamSummary() when $default != null:
return $default(_that.totalExams,_that.upcomingExams,_that.completedExams,_that.resultsPublished,_that.resultsPendingPublish);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardExamSummary implements DashboardExamSummary {
  const _DashboardExamSummary({@JsonKey(name: 'total_exams') this.totalExams = 0, @JsonKey(name: 'upcoming_exams') this.upcomingExams = 0, @JsonKey(name: 'completed_exams') this.completedExams = 0, @JsonKey(name: 'results_published') this.resultsPublished = 0, @JsonKey(name: 'results_pending_publish') this.resultsPendingPublish = 0});
  factory _DashboardExamSummary.fromJson(Map<String, dynamic> json) => _$DashboardExamSummaryFromJson(json);

@override@JsonKey(name: 'total_exams') final  int totalExams;
@override@JsonKey(name: 'upcoming_exams') final  int upcomingExams;
@override@JsonKey(name: 'completed_exams') final  int completedExams;
@override@JsonKey(name: 'results_published') final  int resultsPublished;
@override@JsonKey(name: 'results_pending_publish') final  int resultsPendingPublish;

/// Create a copy of DashboardExamSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardExamSummaryCopyWith<_DashboardExamSummary> get copyWith => __$DashboardExamSummaryCopyWithImpl<_DashboardExamSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardExamSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardExamSummary&&(identical(other.totalExams, totalExams) || other.totalExams == totalExams)&&(identical(other.upcomingExams, upcomingExams) || other.upcomingExams == upcomingExams)&&(identical(other.completedExams, completedExams) || other.completedExams == completedExams)&&(identical(other.resultsPublished, resultsPublished) || other.resultsPublished == resultsPublished)&&(identical(other.resultsPendingPublish, resultsPendingPublish) || other.resultsPendingPublish == resultsPendingPublish));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalExams,upcomingExams,completedExams,resultsPublished,resultsPendingPublish);
}

@override
String toString() {
    return 'DashboardExamSummary(totalExams: $totalExams, upcomingExams: $upcomingExams, completedExams: $completedExams, resultsPublished: $resultsPublished, resultsPendingPublish: $resultsPendingPublish)';
}


}

/// @nodoc
abstract mixin class _$DashboardExamSummaryCopyWith<$Res> implements $DashboardExamSummaryCopyWith<$Res> {
  factory _$DashboardExamSummaryCopyWith(_DashboardExamSummary value, $Res Function(_DashboardExamSummary) _then) = __$DashboardExamSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_exams') int totalExams,@JsonKey(name: 'upcoming_exams') int upcomingExams,@JsonKey(name: 'completed_exams') int completedExams,@JsonKey(name: 'results_published') int resultsPublished,@JsonKey(name: 'results_pending_publish') int resultsPendingPublish
});




}
/// @nodoc
class __$DashboardExamSummaryCopyWithImpl<$Res>
    implements _$DashboardExamSummaryCopyWith<$Res> {
  __$DashboardExamSummaryCopyWithImpl(this._self, this._then);

  final _DashboardExamSummary _self;
  final $Res Function(_DashboardExamSummary) _then;

/// Create a copy of DashboardExamSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalExams = null,Object? upcomingExams = null,Object? completedExams = null,Object? resultsPublished = null,Object? resultsPendingPublish = null,}) {
  return _then(_DashboardExamSummary(
totalExams: null == totalExams ? _self.totalExams : totalExams // ignore: cast_nullable_to_non_nullable
as int,upcomingExams: null == upcomingExams ? _self.upcomingExams : upcomingExams // ignore: cast_nullable_to_non_nullable
as int,completedExams: null == completedExams ? _self.completedExams : completedExams // ignore: cast_nullable_to_non_nullable
as int,resultsPublished: null == resultsPublished ? _self.resultsPublished : resultsPublished // ignore: cast_nullable_to_non_nullable
as int,resultsPendingPublish: null == resultsPendingPublish ? _self.resultsPendingPublish : resultsPendingPublish // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StaffDailyAttendance {

 DateTime? get date; int get total; List<StaffDailyAttendanceRow> get data;
/// Create a copy of StaffDailyAttendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffDailyAttendanceCopyWith<StaffDailyAttendance> get copyWith => _$StaffDailyAttendanceCopyWithImpl<StaffDailyAttendance>(this as StaffDailyAttendance, _$identity);

  /// Serializes this StaffDailyAttendance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffDailyAttendance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffDailyAttendance&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffDailyAttendance;
  return Object.hash(runtimeType,_this.date,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as StaffDailyAttendance;
  return 'StaffDailyAttendance(date: ${_this.date}, total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $StaffDailyAttendanceCopyWith<$Res>  {
  factory $StaffDailyAttendanceCopyWith(StaffDailyAttendance value, $Res Function(StaffDailyAttendance) _then) = _$StaffDailyAttendanceCopyWithImpl;
@useResult
$Res call({
 DateTime? date, int total, List<StaffDailyAttendanceRow> data
});




}
/// @nodoc
class _$StaffDailyAttendanceCopyWithImpl<$Res>
    implements $StaffDailyAttendanceCopyWith<$Res> {
  _$StaffDailyAttendanceCopyWithImpl(this._self, this._then);

  final StaffDailyAttendance _self;
  final $Res Function(StaffDailyAttendance) _then;

/// Create a copy of StaffDailyAttendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? total = null,Object? data = null,}) {
  return _then(StaffDailyAttendance(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StaffDailyAttendanceRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffDailyAttendance].
extension StaffDailyAttendancePatterns on StaffDailyAttendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffDailyAttendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffDailyAttendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffDailyAttendance value)  $default,){
final _that = this;
switch (_that) {
case _StaffDailyAttendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffDailyAttendance value)?  $default,){
final _that = this;
switch (_that) {
case _StaffDailyAttendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? date,  int total,  List<StaffDailyAttendanceRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffDailyAttendance() when $default != null:
return $default(_that.date,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? date,  int total,  List<StaffDailyAttendanceRow> data)  $default,) {final _that = this;
switch (_that) {
case _StaffDailyAttendance():
return $default(_that.date,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? date,  int total,  List<StaffDailyAttendanceRow> data)?  $default,) {final _that = this;
switch (_that) {
case _StaffDailyAttendance() when $default != null:
return $default(_that.date,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffDailyAttendance implements StaffDailyAttendance {
  const _StaffDailyAttendance({this.date, this.total = 0,  List<StaffDailyAttendanceRow> data = const <StaffDailyAttendanceRow>[]}): _data = data;
  factory _StaffDailyAttendance.fromJson(Map<String, dynamic> json) => _$StaffDailyAttendanceFromJson(json);

@override final  DateTime? date;
@override@JsonKey() final  int total;
 final  List<StaffDailyAttendanceRow> _data;
@override@JsonKey() List<StaffDailyAttendanceRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of StaffDailyAttendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffDailyAttendanceCopyWith<_StaffDailyAttendance> get copyWith => __$StaffDailyAttendanceCopyWithImpl<_StaffDailyAttendance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffDailyAttendanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffDailyAttendance&&(identical(other.date, date) || other.date == date)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'StaffDailyAttendance(date: $date, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StaffDailyAttendanceCopyWith<$Res> implements $StaffDailyAttendanceCopyWith<$Res> {
  factory _$StaffDailyAttendanceCopyWith(_StaffDailyAttendance value, $Res Function(_StaffDailyAttendance) _then) = __$StaffDailyAttendanceCopyWithImpl;
@override @useResult
$Res call({
 DateTime? date, int total, List<StaffDailyAttendanceRow> data
});




}
/// @nodoc
class __$StaffDailyAttendanceCopyWithImpl<$Res>
    implements _$StaffDailyAttendanceCopyWith<$Res> {
  __$StaffDailyAttendanceCopyWithImpl(this._self, this._then);

  final _StaffDailyAttendance _self;
  final $Res Function(_StaffDailyAttendance) _then;

/// Create a copy of StaffDailyAttendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? total = null,Object? data = null,}) {
  return _then(_StaffDailyAttendance(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StaffDailyAttendanceRow>,
  ));
}


}


/// @nodoc
mixin _$StaffDailyAttendanceRow {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation; StaffAttendanceRecord? get attendance;
/// Create a copy of StaffDailyAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffDailyAttendanceRowCopyWith<StaffDailyAttendanceRow> get copyWith => _$StaffDailyAttendanceRowCopyWithImpl<StaffDailyAttendanceRow>(this as StaffDailyAttendanceRow, _$identity);

  /// Serializes this StaffDailyAttendanceRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffDailyAttendanceRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffDailyAttendanceRow&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.attendance, _this.attendance) || other.attendance == _this.attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffDailyAttendanceRow;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.designation,_this.attendance);
}

@override
String toString() {
  final _this = this as StaffDailyAttendanceRow;
  return 'StaffDailyAttendanceRow(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation}, attendance: ${_this.attendance})';
}


}

/// @nodoc
abstract mixin class $StaffDailyAttendanceRowCopyWith<$Res>  {
  factory $StaffDailyAttendanceRowCopyWith(StaffDailyAttendanceRow value, $Res Function(StaffDailyAttendanceRow) _then) = _$StaffDailyAttendanceRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation, StaffAttendanceRecord? attendance
});


$StaffAttendanceRecordCopyWith<$Res>? get attendance;

}
/// @nodoc
class _$StaffDailyAttendanceRowCopyWithImpl<$Res>
    implements $StaffDailyAttendanceRowCopyWith<$Res> {
  _$StaffDailyAttendanceRowCopyWithImpl(this._self, this._then);

  final StaffDailyAttendanceRow _self;
  final $Res Function(StaffDailyAttendanceRow) _then;

/// Create a copy of StaffDailyAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,Object? attendance = freezed,}) {
  return _then(StaffDailyAttendanceRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as StaffAttendanceRecord?,
  ));
}
/// Create a copy of StaffDailyAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffAttendanceRecordCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $StaffAttendanceRecordCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [StaffDailyAttendanceRow].
extension StaffDailyAttendanceRowPatterns on StaffDailyAttendanceRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffDailyAttendanceRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffDailyAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffDailyAttendanceRow value)  $default,){
final _that = this;
switch (_that) {
case _StaffDailyAttendanceRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffDailyAttendanceRow value)?  $default,){
final _that = this;
switch (_that) {
case _StaffDailyAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation,  StaffAttendanceRecord? attendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffDailyAttendanceRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.attendance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation,  StaffAttendanceRecord? attendance)  $default,) {final _that = this;
switch (_that) {
case _StaffDailyAttendanceRow():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.attendance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation,  StaffAttendanceRecord? attendance)?  $default,) {final _that = this;
switch (_that) {
case _StaffDailyAttendanceRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.attendance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffDailyAttendanceRow implements StaffDailyAttendanceRow {
  const _StaffDailyAttendanceRow({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation, this.attendance});
  factory _StaffDailyAttendanceRow.fromJson(Map<String, dynamic> json) => _$StaffDailyAttendanceRowFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;
@override final  StaffAttendanceRecord? attendance;

/// Create a copy of StaffDailyAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffDailyAttendanceRowCopyWith<_StaffDailyAttendanceRow> get copyWith => __$StaffDailyAttendanceRowCopyWithImpl<_StaffDailyAttendanceRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffDailyAttendanceRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffDailyAttendanceRow&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.attendance, attendance) || other.attendance == attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,designation,attendance);
}

@override
String toString() {
    return 'StaffDailyAttendanceRow(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, designation: $designation, attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$StaffDailyAttendanceRowCopyWith<$Res> implements $StaffDailyAttendanceRowCopyWith<$Res> {
  factory _$StaffDailyAttendanceRowCopyWith(_StaffDailyAttendanceRow value, $Res Function(_StaffDailyAttendanceRow) _then) = __$StaffDailyAttendanceRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation, StaffAttendanceRecord? attendance
});


@override $StaffAttendanceRecordCopyWith<$Res>? get attendance;

}
/// @nodoc
class __$StaffDailyAttendanceRowCopyWithImpl<$Res>
    implements _$StaffDailyAttendanceRowCopyWith<$Res> {
  __$StaffDailyAttendanceRowCopyWithImpl(this._self, this._then);

  final _StaffDailyAttendanceRow _self;
  final $Res Function(_StaffDailyAttendanceRow) _then;

/// Create a copy of StaffDailyAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,Object? attendance = freezed,}) {
  return _then(_StaffDailyAttendanceRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as StaffAttendanceRecord?,
  ));
}

/// Create a copy of StaffDailyAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffAttendanceRecordCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $StaffAttendanceRecordCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// @nodoc
mixin _$StaffBulkMarkResult {

 int get marked; int get failed; List<StaffBulkMarkError> get errors;
/// Create a copy of StaffBulkMarkResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffBulkMarkResultCopyWith<StaffBulkMarkResult> get copyWith => _$StaffBulkMarkResultCopyWithImpl<StaffBulkMarkResult>(this as StaffBulkMarkResult, _$identity);

  /// Serializes this StaffBulkMarkResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffBulkMarkResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffBulkMarkResult&&(identical(other.marked, _this.marked) || other.marked == _this.marked)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&const DeepCollectionEquality().equals(other.errors, _this.errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffBulkMarkResult;
  return Object.hash(runtimeType,_this.marked,_this.failed,const DeepCollectionEquality().hash(_this.errors));
}

@override
String toString() {
  final _this = this as StaffBulkMarkResult;
  return 'StaffBulkMarkResult(marked: ${_this.marked}, failed: ${_this.failed}, errors: ${_this.errors})';
}


}

/// @nodoc
abstract mixin class $StaffBulkMarkResultCopyWith<$Res>  {
  factory $StaffBulkMarkResultCopyWith(StaffBulkMarkResult value, $Res Function(StaffBulkMarkResult) _then) = _$StaffBulkMarkResultCopyWithImpl;
@useResult
$Res call({
 int marked, int failed, List<StaffBulkMarkError> errors
});




}
/// @nodoc
class _$StaffBulkMarkResultCopyWithImpl<$Res>
    implements $StaffBulkMarkResultCopyWith<$Res> {
  _$StaffBulkMarkResultCopyWithImpl(this._self, this._then);

  final StaffBulkMarkResult _self;
  final $Res Function(StaffBulkMarkResult) _then;

/// Create a copy of StaffBulkMarkResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marked = null,Object? failed = null,Object? errors = null,}) {
  return _then(StaffBulkMarkResult(
marked: null == marked ? _self.marked : marked // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<StaffBulkMarkError>,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffBulkMarkResult].
extension StaffBulkMarkResultPatterns on StaffBulkMarkResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffBulkMarkResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffBulkMarkResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffBulkMarkResult value)  $default,){
final _that = this;
switch (_that) {
case _StaffBulkMarkResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffBulkMarkResult value)?  $default,){
final _that = this;
switch (_that) {
case _StaffBulkMarkResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int marked,  int failed,  List<StaffBulkMarkError> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffBulkMarkResult() when $default != null:
return $default(_that.marked,_that.failed,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int marked,  int failed,  List<StaffBulkMarkError> errors)  $default,) {final _that = this;
switch (_that) {
case _StaffBulkMarkResult():
return $default(_that.marked,_that.failed,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int marked,  int failed,  List<StaffBulkMarkError> errors)?  $default,) {final _that = this;
switch (_that) {
case _StaffBulkMarkResult() when $default != null:
return $default(_that.marked,_that.failed,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffBulkMarkResult implements StaffBulkMarkResult {
  const _StaffBulkMarkResult({this.marked = 0, this.failed = 0,  List<StaffBulkMarkError> errors = const <StaffBulkMarkError>[]}): _errors = errors;
  factory _StaffBulkMarkResult.fromJson(Map<String, dynamic> json) => _$StaffBulkMarkResultFromJson(json);

@override@JsonKey() final  int marked;
@override@JsonKey() final  int failed;
 final  List<StaffBulkMarkError> _errors;
@override@JsonKey() List<StaffBulkMarkError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of StaffBulkMarkResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffBulkMarkResultCopyWith<_StaffBulkMarkResult> get copyWith => __$StaffBulkMarkResultCopyWithImpl<_StaffBulkMarkResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffBulkMarkResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffBulkMarkResult&&(identical(other.marked, marked) || other.marked == marked)&&(identical(other.failed, failed) || other.failed == failed)&&const DeepCollectionEquality().equals(other.errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,marked,failed,const DeepCollectionEquality().hash(_errors));
}

@override
String toString() {
    return 'StaffBulkMarkResult(marked: $marked, failed: $failed, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$StaffBulkMarkResultCopyWith<$Res> implements $StaffBulkMarkResultCopyWith<$Res> {
  factory _$StaffBulkMarkResultCopyWith(_StaffBulkMarkResult value, $Res Function(_StaffBulkMarkResult) _then) = __$StaffBulkMarkResultCopyWithImpl;
@override @useResult
$Res call({
 int marked, int failed, List<StaffBulkMarkError> errors
});




}
/// @nodoc
class __$StaffBulkMarkResultCopyWithImpl<$Res>
    implements _$StaffBulkMarkResultCopyWith<$Res> {
  __$StaffBulkMarkResultCopyWithImpl(this._self, this._then);

  final _StaffBulkMarkResult _self;
  final $Res Function(_StaffBulkMarkResult) _then;

/// Create a copy of StaffBulkMarkResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marked = null,Object? failed = null,Object? errors = null,}) {
  return _then(_StaffBulkMarkResult(
marked: null == marked ? _self.marked : marked // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<StaffBulkMarkError>,
  ));
}


}


/// @nodoc
mixin _$StaffBulkMarkError {

@JsonKey(name: 'staff_id') String? get staffId; String? get error;
/// Create a copy of StaffBulkMarkError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffBulkMarkErrorCopyWith<StaffBulkMarkError> get copyWith => _$StaffBulkMarkErrorCopyWithImpl<StaffBulkMarkError>(this as StaffBulkMarkError, _$identity);

  /// Serializes this StaffBulkMarkError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffBulkMarkError;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffBulkMarkError&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.error, _this.error) || other.error == _this.error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffBulkMarkError;
  return Object.hash(runtimeType,_this.staffId,_this.error);
}

@override
String toString() {
  final _this = this as StaffBulkMarkError;
  return 'StaffBulkMarkError(staffId: ${_this.staffId}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $StaffBulkMarkErrorCopyWith<$Res>  {
  factory $StaffBulkMarkErrorCopyWith(StaffBulkMarkError value, $Res Function(StaffBulkMarkError) _then) = _$StaffBulkMarkErrorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId, String? error
});




}
/// @nodoc
class _$StaffBulkMarkErrorCopyWithImpl<$Res>
    implements $StaffBulkMarkErrorCopyWith<$Res> {
  _$StaffBulkMarkErrorCopyWithImpl(this._self, this._then);

  final StaffBulkMarkError _self;
  final $Res Function(StaffBulkMarkError) _then;

/// Create a copy of StaffBulkMarkError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? error = freezed,}) {
  return _then(StaffBulkMarkError(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffBulkMarkError].
extension StaffBulkMarkErrorPatterns on StaffBulkMarkError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffBulkMarkError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffBulkMarkError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffBulkMarkError value)  $default,){
final _that = this;
switch (_that) {
case _StaffBulkMarkError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffBulkMarkError value)?  $default,){
final _that = this;
switch (_that) {
case _StaffBulkMarkError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffBulkMarkError() when $default != null:
return $default(_that.staffId,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId,  String? error)  $default,) {final _that = this;
switch (_that) {
case _StaffBulkMarkError():
return $default(_that.staffId,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _StaffBulkMarkError() when $default != null:
return $default(_that.staffId,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffBulkMarkError implements StaffBulkMarkError {
  const _StaffBulkMarkError({@JsonKey(name: 'staff_id') this.staffId, this.error});
  factory _StaffBulkMarkError.fromJson(Map<String, dynamic> json) => _$StaffBulkMarkErrorFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override final  String? error;

/// Create a copy of StaffBulkMarkError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffBulkMarkErrorCopyWith<_StaffBulkMarkError> get copyWith => __$StaffBulkMarkErrorCopyWithImpl<_StaffBulkMarkError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffBulkMarkErrorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffBulkMarkError&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,error);
}

@override
String toString() {
    return 'StaffBulkMarkError(staffId: $staffId, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StaffBulkMarkErrorCopyWith<$Res> implements $StaffBulkMarkErrorCopyWith<$Res> {
  factory _$StaffBulkMarkErrorCopyWith(_StaffBulkMarkError value, $Res Function(_StaffBulkMarkError) _then) = __$StaffBulkMarkErrorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId, String? error
});




}
/// @nodoc
class __$StaffBulkMarkErrorCopyWithImpl<$Res>
    implements _$StaffBulkMarkErrorCopyWith<$Res> {
  __$StaffBulkMarkErrorCopyWithImpl(this._self, this._then);

  final _StaffBulkMarkError _self;
  final $Res Function(_StaffBulkMarkError) _then;

/// Create a copy of StaffBulkMarkError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? error = freezed,}) {
  return _then(_StaffBulkMarkError(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OverviewAttendanceReport {

 DateTime? get from; DateTime? get to; Map<String, int> get summary; int get total; int get page; int get limit; List<OverviewAttendanceRow> get data;
/// Create a copy of OverviewAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewAttendanceReportCopyWith<OverviewAttendanceReport> get copyWith => _$OverviewAttendanceReportCopyWithImpl<OverviewAttendanceReport>(this as OverviewAttendanceReport, _$identity);

  /// Serializes this OverviewAttendanceReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OverviewAttendanceReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewAttendanceReport&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&const DeepCollectionEquality().equals(other.summary, _this.summary)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OverviewAttendanceReport;
  return Object.hash(runtimeType,_this.from,_this.to,const DeepCollectionEquality().hash(_this.summary),_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as OverviewAttendanceReport;
  return 'OverviewAttendanceReport(from: ${_this.from}, to: ${_this.to}, summary: ${_this.summary}, total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $OverviewAttendanceReportCopyWith<$Res>  {
  factory $OverviewAttendanceReportCopyWith(OverviewAttendanceReport value, $Res Function(OverviewAttendanceReport) _then) = _$OverviewAttendanceReportCopyWithImpl;
@useResult
$Res call({
 DateTime? from, DateTime? to, Map<String, int> summary, int total, int page, int limit, List<OverviewAttendanceRow> data
});




}
/// @nodoc
class _$OverviewAttendanceReportCopyWithImpl<$Res>
    implements $OverviewAttendanceReportCopyWith<$Res> {
  _$OverviewAttendanceReportCopyWithImpl(this._self, this._then);

  final OverviewAttendanceReport _self;
  final $Res Function(OverviewAttendanceReport) _then;

/// Create a copy of OverviewAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,Object? summary = null,Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(OverviewAttendanceReport(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Map<String, int>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<OverviewAttendanceRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [OverviewAttendanceReport].
extension OverviewAttendanceReportPatterns on OverviewAttendanceReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewAttendanceReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewAttendanceReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewAttendanceReport value)  $default,){
final _that = this;
switch (_that) {
case _OverviewAttendanceReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewAttendanceReport value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewAttendanceReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  Map<String, int> summary,  int total,  int page,  int limit,  List<OverviewAttendanceRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewAttendanceReport() when $default != null:
return $default(_that.from,_that.to,_that.summary,_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  Map<String, int> summary,  int total,  int page,  int limit,  List<OverviewAttendanceRow> data)  $default,) {final _that = this;
switch (_that) {
case _OverviewAttendanceReport():
return $default(_that.from,_that.to,_that.summary,_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? from,  DateTime? to,  Map<String, int> summary,  int total,  int page,  int limit,  List<OverviewAttendanceRow> data)?  $default,) {final _that = this;
switch (_that) {
case _OverviewAttendanceReport() when $default != null:
return $default(_that.from,_that.to,_that.summary,_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewAttendanceReport implements OverviewAttendanceReport {
  const _OverviewAttendanceReport({this.from, this.to,  Map<String, int> summary = const <String, int>{}, this.total = 0, this.page = 1, this.limit = 20,  List<OverviewAttendanceRow> data = const <OverviewAttendanceRow>[]}): _summary = summary,_data = data;
  factory _OverviewAttendanceReport.fromJson(Map<String, dynamic> json) => _$OverviewAttendanceReportFromJson(json);

@override final  DateTime? from;
@override final  DateTime? to;
 final  Map<String, int> _summary;
@override@JsonKey() Map<String, int> get summary {
  if (_summary is EqualUnmodifiableMapView) return _summary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_summary);
}

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<OverviewAttendanceRow> _data;
@override@JsonKey() List<OverviewAttendanceRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of OverviewAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewAttendanceReportCopyWith<_OverviewAttendanceReport> get copyWith => __$OverviewAttendanceReportCopyWithImpl<_OverviewAttendanceReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewAttendanceReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewAttendanceReport&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&const DeepCollectionEquality().equals(other.summary, _summary)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to,const DeepCollectionEquality().hash(_summary),total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'OverviewAttendanceReport(from: $from, to: $to, summary: $summary, total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$OverviewAttendanceReportCopyWith<$Res> implements $OverviewAttendanceReportCopyWith<$Res> {
  factory _$OverviewAttendanceReportCopyWith(_OverviewAttendanceReport value, $Res Function(_OverviewAttendanceReport) _then) = __$OverviewAttendanceReportCopyWithImpl;
@override @useResult
$Res call({
 DateTime? from, DateTime? to, Map<String, int> summary, int total, int page, int limit, List<OverviewAttendanceRow> data
});




}
/// @nodoc
class __$OverviewAttendanceReportCopyWithImpl<$Res>
    implements _$OverviewAttendanceReportCopyWith<$Res> {
  __$OverviewAttendanceReportCopyWithImpl(this._self, this._then);

  final _OverviewAttendanceReport _self;
  final $Res Function(_OverviewAttendanceReport) _then;

/// Create a copy of OverviewAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,Object? summary = null,Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_OverviewAttendanceReport(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,summary: null == summary ? _self._summary : summary // ignore: cast_nullable_to_non_nullable
as Map<String, int>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<OverviewAttendanceRow>,
  ));
}


}


/// @nodoc
mixin _$OverviewAttendanceRow {

@JsonKey(name: 'attendance_id') String get attendanceId;@JsonKey(name: 'attendance_date') DateTime? get attendanceDate; String get status; String? get remarks;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of OverviewAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewAttendanceRowCopyWith<OverviewAttendanceRow> get copyWith => _$OverviewAttendanceRowCopyWithImpl<OverviewAttendanceRow>(this as OverviewAttendanceRow, _$identity);

  /// Serializes this OverviewAttendanceRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OverviewAttendanceRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewAttendanceRow&&(identical(other.attendanceId, _this.attendanceId) || other.attendanceId == _this.attendanceId)&&(identical(other.attendanceDate, _this.attendanceDate) || other.attendanceDate == _this.attendanceDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OverviewAttendanceRow;
  return Object.hash(runtimeType,_this.attendanceId,_this.attendanceDate,_this.status,_this.remarks,_this.student);
}

@override
String toString() {
  final _this = this as OverviewAttendanceRow;
  return 'OverviewAttendanceRow(attendanceId: ${_this.attendanceId}, attendanceDate: ${_this.attendanceDate}, status: ${_this.status}, remarks: ${_this.remarks}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $OverviewAttendanceRowCopyWith<$Res>  {
  factory $OverviewAttendanceRowCopyWith(OverviewAttendanceRow value, $Res Function(OverviewAttendanceRow) _then) = _$OverviewAttendanceRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'attendance_date') DateTime? attendanceDate, String status, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$OverviewAttendanceRowCopyWithImpl<$Res>
    implements $OverviewAttendanceRowCopyWith<$Res> {
  _$OverviewAttendanceRowCopyWithImpl(this._self, this._then);

  final OverviewAttendanceRow _self;
  final $Res Function(OverviewAttendanceRow) _then;

/// Create a copy of OverviewAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceId = null,Object? attendanceDate = freezed,Object? status = null,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(OverviewAttendanceRow(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of OverviewAttendanceRow
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


/// Adds pattern-matching-related methods to [OverviewAttendanceRow].
extension OverviewAttendanceRowPatterns on OverviewAttendanceRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewAttendanceRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewAttendanceRow value)  $default,){
final _that = this;
switch (_that) {
case _OverviewAttendanceRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewAttendanceRow value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime? attendanceDate,  String status,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewAttendanceRow() when $default != null:
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime? attendanceDate,  String status,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _OverviewAttendanceRow():
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime? attendanceDate,  String status,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _OverviewAttendanceRow() when $default != null:
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewAttendanceRow implements OverviewAttendanceRow {
  const _OverviewAttendanceRow({@JsonKey(name: 'attendance_id') required this.attendanceId, @JsonKey(name: 'attendance_date') this.attendanceDate, this.status = '', this.remarks, @JsonKey(name: 'students') this.student});
  factory _OverviewAttendanceRow.fromJson(Map<String, dynamic> json) => _$OverviewAttendanceRowFromJson(json);

@override@JsonKey(name: 'attendance_id') final  String attendanceId;
@override@JsonKey(name: 'attendance_date') final  DateTime? attendanceDate;
@override@JsonKey() final  String status;
@override final  String? remarks;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of OverviewAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewAttendanceRowCopyWith<_OverviewAttendanceRow> get copyWith => __$OverviewAttendanceRowCopyWithImpl<_OverviewAttendanceRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewAttendanceRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewAttendanceRow&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attendanceId,attendanceDate,status,remarks,student);
}

@override
String toString() {
    return 'OverviewAttendanceRow(attendanceId: $attendanceId, attendanceDate: $attendanceDate, status: $status, remarks: $remarks, student: $student)';
}


}

/// @nodoc
abstract mixin class _$OverviewAttendanceRowCopyWith<$Res> implements $OverviewAttendanceRowCopyWith<$Res> {
  factory _$OverviewAttendanceRowCopyWith(_OverviewAttendanceRow value, $Res Function(_OverviewAttendanceRow) _then) = __$OverviewAttendanceRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'attendance_date') DateTime? attendanceDate, String status, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$OverviewAttendanceRowCopyWithImpl<$Res>
    implements _$OverviewAttendanceRowCopyWith<$Res> {
  __$OverviewAttendanceRowCopyWithImpl(this._self, this._then);

  final _OverviewAttendanceRow _self;
  final $Res Function(_OverviewAttendanceRow) _then;

/// Create a copy of OverviewAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceId = null,Object? attendanceDate = freezed,Object? status = null,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(_OverviewAttendanceRow(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of OverviewAttendanceRow
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
mixin _$ActivityLogPage {

 int get total; int get page; int get limit; List<ActivityLogEntry> get data;
/// Create a copy of ActivityLogPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityLogPageCopyWith<ActivityLogPage> get copyWith => _$ActivityLogPageCopyWithImpl<ActivityLogPage>(this as ActivityLogPage, _$identity);

  /// Serializes this ActivityLogPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityLogPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityLogPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityLogPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ActivityLogPage;
  return 'ActivityLogPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ActivityLogPageCopyWith<$Res>  {
  factory $ActivityLogPageCopyWith(ActivityLogPage value, $Res Function(ActivityLogPage) _then) = _$ActivityLogPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<ActivityLogEntry> data
});




}
/// @nodoc
class _$ActivityLogPageCopyWithImpl<$Res>
    implements $ActivityLogPageCopyWith<$Res> {
  _$ActivityLogPageCopyWithImpl(this._self, this._then);

  final ActivityLogPage _self;
  final $Res Function(ActivityLogPage) _then;

/// Create a copy of ActivityLogPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(ActivityLogPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ActivityLogEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityLogPage].
extension ActivityLogPagePatterns on ActivityLogPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityLogPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityLogPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityLogPage value)  $default,){
final _that = this;
switch (_that) {
case _ActivityLogPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityLogPage value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityLogPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<ActivityLogEntry> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityLogPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<ActivityLogEntry> data)  $default,) {final _that = this;
switch (_that) {
case _ActivityLogPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<ActivityLogEntry> data)?  $default,) {final _that = this;
switch (_that) {
case _ActivityLogPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityLogPage implements ActivityLogPage {
  const _ActivityLogPage({this.total = 0, this.page = 1, this.limit = 50,  List<ActivityLogEntry> data = const <ActivityLogEntry>[]}): _data = data;
  factory _ActivityLogPage.fromJson(Map<String, dynamic> json) => _$ActivityLogPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<ActivityLogEntry> _data;
@override@JsonKey() List<ActivityLogEntry> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ActivityLogPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityLogPageCopyWith<_ActivityLogPage> get copyWith => __$ActivityLogPageCopyWithImpl<_ActivityLogPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityLogPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityLogPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ActivityLogPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ActivityLogPageCopyWith<$Res> implements $ActivityLogPageCopyWith<$Res> {
  factory _$ActivityLogPageCopyWith(_ActivityLogPage value, $Res Function(_ActivityLogPage) _then) = __$ActivityLogPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<ActivityLogEntry> data
});




}
/// @nodoc
class __$ActivityLogPageCopyWithImpl<$Res>
    implements _$ActivityLogPageCopyWith<$Res> {
  __$ActivityLogPageCopyWithImpl(this._self, this._then);

  final _ActivityLogPage _self;
  final $Res Function(_ActivityLogPage) _then;

/// Create a copy of ActivityLogPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_ActivityLogPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ActivityLogEntry>,
  ));
}


}


/// @nodoc
mixin _$ActivityLogEntry {

@JsonKey(name: 'log_id') String get logId;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'module_name') String? get moduleName;@JsonKey(name: 'action_type') String? get actionType;@JsonKey(name: 'record_id') String? get recordId;@JsonKey(name: 'old_data') Object? get oldData;@JsonKey(name: 'new_data') Object? get newData;@JsonKey(name: 'ip_address') String? get ipAddress;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of ActivityLogEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityLogEntryCopyWith<ActivityLogEntry> get copyWith => _$ActivityLogEntryCopyWithImpl<ActivityLogEntry>(this as ActivityLogEntry, _$identity);

  /// Serializes this ActivityLogEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityLogEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityLogEntry&&(identical(other.logId, _this.logId) || other.logId == _this.logId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.moduleName, _this.moduleName) || other.moduleName == _this.moduleName)&&(identical(other.actionType, _this.actionType) || other.actionType == _this.actionType)&&(identical(other.recordId, _this.recordId) || other.recordId == _this.recordId)&&const DeepCollectionEquality().equals(other.oldData, _this.oldData)&&const DeepCollectionEquality().equals(other.newData, _this.newData)&&(identical(other.ipAddress, _this.ipAddress) || other.ipAddress == _this.ipAddress)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityLogEntry;
  return Object.hash(runtimeType,_this.logId,_this.userId,_this.moduleName,_this.actionType,_this.recordId,const DeepCollectionEquality().hash(_this.oldData),const DeepCollectionEquality().hash(_this.newData),_this.ipAddress,_this.createdAt);
}

@override
String toString() {
  final _this = this as ActivityLogEntry;
  return 'ActivityLogEntry(logId: ${_this.logId}, userId: ${_this.userId}, moduleName: ${_this.moduleName}, actionType: ${_this.actionType}, recordId: ${_this.recordId}, oldData: ${_this.oldData}, newData: ${_this.newData}, ipAddress: ${_this.ipAddress}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ActivityLogEntryCopyWith<$Res>  {
  factory $ActivityLogEntryCopyWith(ActivityLogEntry value, $Res Function(ActivityLogEntry) _then) = _$ActivityLogEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'log_id') String logId,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'module_name') String? moduleName,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'record_id') String? recordId,@JsonKey(name: 'old_data') Object? oldData,@JsonKey(name: 'new_data') Object? newData,@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$ActivityLogEntryCopyWithImpl<$Res>
    implements $ActivityLogEntryCopyWith<$Res> {
  _$ActivityLogEntryCopyWithImpl(this._self, this._then);

  final ActivityLogEntry _self;
  final $Res Function(ActivityLogEntry) _then;

/// Create a copy of ActivityLogEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logId = null,Object? userId = freezed,Object? moduleName = freezed,Object? actionType = freezed,Object? recordId = freezed,Object? oldData = freezed,Object? newData = freezed,Object? ipAddress = freezed,Object? createdAt = freezed,}) {
  return _then(ActivityLogEntry(
logId: null == logId ? _self.logId : logId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,oldData: freezed == oldData ? _self.oldData : oldData ,newData: freezed == newData ? _self.newData : newData ,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityLogEntry].
extension ActivityLogEntryPatterns on ActivityLogEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityLogEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityLogEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityLogEntry value)  $default,){
final _that = this;
switch (_that) {
case _ActivityLogEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityLogEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityLogEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'module_name')  String? moduleName, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'record_id')  String? recordId, @JsonKey(name: 'old_data')  Object? oldData, @JsonKey(name: 'new_data')  Object? newData, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityLogEntry() when $default != null:
return $default(_that.logId,_that.userId,_that.moduleName,_that.actionType,_that.recordId,_that.oldData,_that.newData,_that.ipAddress,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'module_name')  String? moduleName, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'record_id')  String? recordId, @JsonKey(name: 'old_data')  Object? oldData, @JsonKey(name: 'new_data')  Object? newData, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ActivityLogEntry():
return $default(_that.logId,_that.userId,_that.moduleName,_that.actionType,_that.recordId,_that.oldData,_that.newData,_that.ipAddress,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'module_name')  String? moduleName, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'record_id')  String? recordId, @JsonKey(name: 'old_data')  Object? oldData, @JsonKey(name: 'new_data')  Object? newData, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ActivityLogEntry() when $default != null:
return $default(_that.logId,_that.userId,_that.moduleName,_that.actionType,_that.recordId,_that.oldData,_that.newData,_that.ipAddress,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityLogEntry implements ActivityLogEntry {
  const _ActivityLogEntry({@JsonKey(name: 'log_id') required this.logId, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'module_name') this.moduleName, @JsonKey(name: 'action_type') this.actionType, @JsonKey(name: 'record_id') this.recordId, @JsonKey(name: 'old_data') this.oldData, @JsonKey(name: 'new_data') this.newData, @JsonKey(name: 'ip_address') this.ipAddress, @JsonKey(name: 'created_at') this.createdAt});
  factory _ActivityLogEntry.fromJson(Map<String, dynamic> json) => _$ActivityLogEntryFromJson(json);

@override@JsonKey(name: 'log_id') final  String logId;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'module_name') final  String? moduleName;
@override@JsonKey(name: 'action_type') final  String? actionType;
@override@JsonKey(name: 'record_id') final  String? recordId;
@override@JsonKey(name: 'old_data') final  Object? oldData;
@override@JsonKey(name: 'new_data') final  Object? newData;
@override@JsonKey(name: 'ip_address') final  String? ipAddress;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of ActivityLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityLogEntryCopyWith<_ActivityLogEntry> get copyWith => __$ActivityLogEntryCopyWithImpl<_ActivityLogEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityLogEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityLogEntry&&(identical(other.logId, logId) || other.logId == logId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&const DeepCollectionEquality().equals(other.oldData, oldData)&&const DeepCollectionEquality().equals(other.newData, newData)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,logId,userId,moduleName,actionType,recordId,const DeepCollectionEquality().hash(oldData),const DeepCollectionEquality().hash(newData),ipAddress,createdAt);
}

@override
String toString() {
    return 'ActivityLogEntry(logId: $logId, userId: $userId, moduleName: $moduleName, actionType: $actionType, recordId: $recordId, oldData: $oldData, newData: $newData, ipAddress: $ipAddress, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ActivityLogEntryCopyWith<$Res> implements $ActivityLogEntryCopyWith<$Res> {
  factory _$ActivityLogEntryCopyWith(_ActivityLogEntry value, $Res Function(_ActivityLogEntry) _then) = __$ActivityLogEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'log_id') String logId,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'module_name') String? moduleName,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'record_id') String? recordId,@JsonKey(name: 'old_data') Object? oldData,@JsonKey(name: 'new_data') Object? newData,@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$ActivityLogEntryCopyWithImpl<$Res>
    implements _$ActivityLogEntryCopyWith<$Res> {
  __$ActivityLogEntryCopyWithImpl(this._self, this._then);

  final _ActivityLogEntry _self;
  final $Res Function(_ActivityLogEntry) _then;

/// Create a copy of ActivityLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logId = null,Object? userId = freezed,Object? moduleName = freezed,Object? actionType = freezed,Object? recordId = freezed,Object? oldData = freezed,Object? newData = freezed,Object? ipAddress = freezed,Object? createdAt = freezed,}) {
  return _then(_ActivityLogEntry(
logId: null == logId ? _self.logId : logId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,moduleName: freezed == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String?,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as String?,oldData: freezed == oldData ? _self.oldData : oldData ,newData: freezed == newData ? _self.newData : newData ,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
