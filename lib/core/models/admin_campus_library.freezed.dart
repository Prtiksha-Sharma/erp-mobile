// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_campus_library.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LibraryBook {

@JsonKey(name: 'book_id') String get bookId; String get title; String? get author;@JsonKey(name: 'accession_no') String? get accessionNo; String? get category;@JsonKey(name: 'total_copies') int get totalCopies;@JsonKey(name: 'available_copies') int get availableCopies;@JsonKey(name: 'is_active') bool get isActive; String? get publisher; String? get edition;@JsonKey(name: 'publication_year') int? get publicationYear; String? get language;@JsonKey(name: 'shelf_rack') String? get shelfRack;@JsonKey(name: 'institute_class') String? get instituteClass;
/// Create a copy of LibraryBook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryBookCopyWith<LibraryBook> get copyWith => _$LibraryBookCopyWithImpl<LibraryBook>(this as LibraryBook, _$identity);

  /// Serializes this LibraryBook to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryBook;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryBook&&(identical(other.bookId, _this.bookId) || other.bookId == _this.bookId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.accessionNo, _this.accessionNo) || other.accessionNo == _this.accessionNo)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.totalCopies, _this.totalCopies) || other.totalCopies == _this.totalCopies)&&(identical(other.availableCopies, _this.availableCopies) || other.availableCopies == _this.availableCopies)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.publisher, _this.publisher) || other.publisher == _this.publisher)&&(identical(other.edition, _this.edition) || other.edition == _this.edition)&&(identical(other.publicationYear, _this.publicationYear) || other.publicationYear == _this.publicationYear)&&(identical(other.language, _this.language) || other.language == _this.language)&&(identical(other.shelfRack, _this.shelfRack) || other.shelfRack == _this.shelfRack)&&(identical(other.instituteClass, _this.instituteClass) || other.instituteClass == _this.instituteClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryBook;
  return Object.hash(runtimeType,_this.bookId,_this.title,_this.author,_this.accessionNo,_this.category,_this.totalCopies,_this.availableCopies,_this.isActive,_this.publisher,_this.edition,_this.publicationYear,_this.language,_this.shelfRack,_this.instituteClass);
}

@override
String toString() {
  final _this = this as LibraryBook;
  return 'LibraryBook(bookId: ${_this.bookId}, title: ${_this.title}, author: ${_this.author}, accessionNo: ${_this.accessionNo}, category: ${_this.category}, totalCopies: ${_this.totalCopies}, availableCopies: ${_this.availableCopies}, isActive: ${_this.isActive}, publisher: ${_this.publisher}, edition: ${_this.edition}, publicationYear: ${_this.publicationYear}, language: ${_this.language}, shelfRack: ${_this.shelfRack}, instituteClass: ${_this.instituteClass})';
}


}

/// @nodoc
abstract mixin class $LibraryBookCopyWith<$Res>  {
  factory $LibraryBookCopyWith(LibraryBook value, $Res Function(LibraryBook) _then) = _$LibraryBookCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'book_id') String bookId, String title, String? author,@JsonKey(name: 'accession_no') String? accessionNo, String? category,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies,@JsonKey(name: 'is_active') bool isActive, String? publisher, String? edition,@JsonKey(name: 'publication_year') int? publicationYear, String? language,@JsonKey(name: 'shelf_rack') String? shelfRack,@JsonKey(name: 'institute_class') String? instituteClass
});




}
/// @nodoc
class _$LibraryBookCopyWithImpl<$Res>
    implements $LibraryBookCopyWith<$Res> {
  _$LibraryBookCopyWithImpl(this._self, this._then);

  final LibraryBook _self;
  final $Res Function(LibraryBook) _then;

/// Create a copy of LibraryBook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookId = null,Object? title = null,Object? author = freezed,Object? accessionNo = freezed,Object? category = freezed,Object? totalCopies = null,Object? availableCopies = null,Object? isActive = null,Object? publisher = freezed,Object? edition = freezed,Object? publicationYear = freezed,Object? language = freezed,Object? shelfRack = freezed,Object? instituteClass = freezed,}) {
  return _then(LibraryBook(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,edition: freezed == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String?,publicationYear: freezed == publicationYear ? _self.publicationYear : publicationYear // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,shelfRack: freezed == shelfRack ? _self.shelfRack : shelfRack // ignore: cast_nullable_to_non_nullable
as String?,instituteClass: freezed == instituteClass ? _self.instituteClass : instituteClass // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryBook].
extension LibraryBookPatterns on LibraryBook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryBook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryBook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryBook value)  $default,){
final _that = this;
switch (_that) {
case _LibraryBook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryBook value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryBook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String bookId,  String title,  String? author, @JsonKey(name: 'accession_no')  String? accessionNo,  String? category, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'is_active')  bool isActive,  String? publisher,  String? edition, @JsonKey(name: 'publication_year')  int? publicationYear,  String? language, @JsonKey(name: 'shelf_rack')  String? shelfRack, @JsonKey(name: 'institute_class')  String? instituteClass)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryBook() when $default != null:
return $default(_that.bookId,_that.title,_that.author,_that.accessionNo,_that.category,_that.totalCopies,_that.availableCopies,_that.isActive,_that.publisher,_that.edition,_that.publicationYear,_that.language,_that.shelfRack,_that.instituteClass);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String bookId,  String title,  String? author, @JsonKey(name: 'accession_no')  String? accessionNo,  String? category, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'is_active')  bool isActive,  String? publisher,  String? edition, @JsonKey(name: 'publication_year')  int? publicationYear,  String? language, @JsonKey(name: 'shelf_rack')  String? shelfRack, @JsonKey(name: 'institute_class')  String? instituteClass)  $default,) {final _that = this;
switch (_that) {
case _LibraryBook():
return $default(_that.bookId,_that.title,_that.author,_that.accessionNo,_that.category,_that.totalCopies,_that.availableCopies,_that.isActive,_that.publisher,_that.edition,_that.publicationYear,_that.language,_that.shelfRack,_that.instituteClass);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'book_id')  String bookId,  String title,  String? author, @JsonKey(name: 'accession_no')  String? accessionNo,  String? category, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'is_active')  bool isActive,  String? publisher,  String? edition, @JsonKey(name: 'publication_year')  int? publicationYear,  String? language, @JsonKey(name: 'shelf_rack')  String? shelfRack, @JsonKey(name: 'institute_class')  String? instituteClass)?  $default,) {final _that = this;
switch (_that) {
case _LibraryBook() when $default != null:
return $default(_that.bookId,_that.title,_that.author,_that.accessionNo,_that.category,_that.totalCopies,_that.availableCopies,_that.isActive,_that.publisher,_that.edition,_that.publicationYear,_that.language,_that.shelfRack,_that.instituteClass);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryBook implements LibraryBook {
  const _LibraryBook({@JsonKey(name: 'book_id') required this.bookId, required this.title, this.author, @JsonKey(name: 'accession_no') this.accessionNo, this.category, @JsonKey(name: 'total_copies') this.totalCopies = 0, @JsonKey(name: 'available_copies') this.availableCopies = 0, @JsonKey(name: 'is_active') this.isActive = true, this.publisher, this.edition, @JsonKey(name: 'publication_year') this.publicationYear, this.language, @JsonKey(name: 'shelf_rack') this.shelfRack, @JsonKey(name: 'institute_class') this.instituteClass});
  factory _LibraryBook.fromJson(Map<String, dynamic> json) => _$LibraryBookFromJson(json);

@override@JsonKey(name: 'book_id') final  String bookId;
@override final  String title;
@override final  String? author;
@override@JsonKey(name: 'accession_no') final  String? accessionNo;
@override final  String? category;
@override@JsonKey(name: 'total_copies') final  int totalCopies;
@override@JsonKey(name: 'available_copies') final  int availableCopies;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override final  String? publisher;
@override final  String? edition;
@override@JsonKey(name: 'publication_year') final  int? publicationYear;
@override final  String? language;
@override@JsonKey(name: 'shelf_rack') final  String? shelfRack;
@override@JsonKey(name: 'institute_class') final  String? instituteClass;

/// Create a copy of LibraryBook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryBookCopyWith<_LibraryBook> get copyWith => __$LibraryBookCopyWithImpl<_LibraryBook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryBookToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryBook&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.accessionNo, accessionNo) || other.accessionNo == accessionNo)&&(identical(other.category, category) || other.category == category)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.availableCopies, availableCopies) || other.availableCopies == availableCopies)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.edition, edition) || other.edition == edition)&&(identical(other.publicationYear, publicationYear) || other.publicationYear == publicationYear)&&(identical(other.language, language) || other.language == language)&&(identical(other.shelfRack, shelfRack) || other.shelfRack == shelfRack)&&(identical(other.instituteClass, instituteClass) || other.instituteClass == instituteClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,bookId,title,author,accessionNo,category,totalCopies,availableCopies,isActive,publisher,edition,publicationYear,language,shelfRack,instituteClass);
}

@override
String toString() {
    return 'LibraryBook(bookId: $bookId, title: $title, author: $author, accessionNo: $accessionNo, category: $category, totalCopies: $totalCopies, availableCopies: $availableCopies, isActive: $isActive, publisher: $publisher, edition: $edition, publicationYear: $publicationYear, language: $language, shelfRack: $shelfRack, instituteClass: $instituteClass)';
}


}

/// @nodoc
abstract mixin class _$LibraryBookCopyWith<$Res> implements $LibraryBookCopyWith<$Res> {
  factory _$LibraryBookCopyWith(_LibraryBook value, $Res Function(_LibraryBook) _then) = __$LibraryBookCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'book_id') String bookId, String title, String? author,@JsonKey(name: 'accession_no') String? accessionNo, String? category,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies,@JsonKey(name: 'is_active') bool isActive, String? publisher, String? edition,@JsonKey(name: 'publication_year') int? publicationYear, String? language,@JsonKey(name: 'shelf_rack') String? shelfRack,@JsonKey(name: 'institute_class') String? instituteClass
});




}
/// @nodoc
class __$LibraryBookCopyWithImpl<$Res>
    implements _$LibraryBookCopyWith<$Res> {
  __$LibraryBookCopyWithImpl(this._self, this._then);

  final _LibraryBook _self;
  final $Res Function(_LibraryBook) _then;

/// Create a copy of LibraryBook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookId = null,Object? title = null,Object? author = freezed,Object? accessionNo = freezed,Object? category = freezed,Object? totalCopies = null,Object? availableCopies = null,Object? isActive = null,Object? publisher = freezed,Object? edition = freezed,Object? publicationYear = freezed,Object? language = freezed,Object? shelfRack = freezed,Object? instituteClass = freezed,}) {
  return _then(_LibraryBook(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,edition: freezed == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String?,publicationYear: freezed == publicationYear ? _self.publicationYear : publicationYear // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,shelfRack: freezed == shelfRack ? _self.shelfRack : shelfRack // ignore: cast_nullable_to_non_nullable
as String?,instituteClass: freezed == instituteClass ? _self.instituteClass : instituteClass // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryBookRef {

@JsonKey(name: 'book_id') String? get bookId; String? get title;@JsonKey(name: 'accession_no') String? get accessionNo;
/// Create a copy of LibraryBookRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<LibraryBookRef> get copyWith => _$LibraryBookRefCopyWithImpl<LibraryBookRef>(this as LibraryBookRef, _$identity);

  /// Serializes this LibraryBookRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryBookRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryBookRef&&(identical(other.bookId, _this.bookId) || other.bookId == _this.bookId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.accessionNo, _this.accessionNo) || other.accessionNo == _this.accessionNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryBookRef;
  return Object.hash(runtimeType,_this.bookId,_this.title,_this.accessionNo);
}

@override
String toString() {
  final _this = this as LibraryBookRef;
  return 'LibraryBookRef(bookId: ${_this.bookId}, title: ${_this.title}, accessionNo: ${_this.accessionNo})';
}


}

/// @nodoc
abstract mixin class $LibraryBookRefCopyWith<$Res>  {
  factory $LibraryBookRefCopyWith(LibraryBookRef value, $Res Function(LibraryBookRef) _then) = _$LibraryBookRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'book_id') String? bookId, String? title,@JsonKey(name: 'accession_no') String? accessionNo
});




}
/// @nodoc
class _$LibraryBookRefCopyWithImpl<$Res>
    implements $LibraryBookRefCopyWith<$Res> {
  _$LibraryBookRefCopyWithImpl(this._self, this._then);

  final LibraryBookRef _self;
  final $Res Function(LibraryBookRef) _then;

/// Create a copy of LibraryBookRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookId = freezed,Object? title = freezed,Object? accessionNo = freezed,}) {
  return _then(LibraryBookRef(
bookId: freezed == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryBookRef].
extension LibraryBookRefPatterns on LibraryBookRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryBookRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryBookRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryBookRef value)  $default,){
final _that = this;
switch (_that) {
case _LibraryBookRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryBookRef value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryBookRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String? bookId,  String? title, @JsonKey(name: 'accession_no')  String? accessionNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryBookRef() when $default != null:
return $default(_that.bookId,_that.title,_that.accessionNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String? bookId,  String? title, @JsonKey(name: 'accession_no')  String? accessionNo)  $default,) {final _that = this;
switch (_that) {
case _LibraryBookRef():
return $default(_that.bookId,_that.title,_that.accessionNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'book_id')  String? bookId,  String? title, @JsonKey(name: 'accession_no')  String? accessionNo)?  $default,) {final _that = this;
switch (_that) {
case _LibraryBookRef() when $default != null:
return $default(_that.bookId,_that.title,_that.accessionNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryBookRef implements LibraryBookRef {
  const _LibraryBookRef({@JsonKey(name: 'book_id') this.bookId, this.title, @JsonKey(name: 'accession_no') this.accessionNo});
  factory _LibraryBookRef.fromJson(Map<String, dynamic> json) => _$LibraryBookRefFromJson(json);

@override@JsonKey(name: 'book_id') final  String? bookId;
@override final  String? title;
@override@JsonKey(name: 'accession_no') final  String? accessionNo;

/// Create a copy of LibraryBookRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryBookRefCopyWith<_LibraryBookRef> get copyWith => __$LibraryBookRefCopyWithImpl<_LibraryBookRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryBookRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryBookRef&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.title, title) || other.title == title)&&(identical(other.accessionNo, accessionNo) || other.accessionNo == accessionNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,bookId,title,accessionNo);
}

@override
String toString() {
    return 'LibraryBookRef(bookId: $bookId, title: $title, accessionNo: $accessionNo)';
}


}

/// @nodoc
abstract mixin class _$LibraryBookRefCopyWith<$Res> implements $LibraryBookRefCopyWith<$Res> {
  factory _$LibraryBookRefCopyWith(_LibraryBookRef value, $Res Function(_LibraryBookRef) _then) = __$LibraryBookRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'book_id') String? bookId, String? title,@JsonKey(name: 'accession_no') String? accessionNo
});




}
/// @nodoc
class __$LibraryBookRefCopyWithImpl<$Res>
    implements _$LibraryBookRefCopyWith<$Res> {
  __$LibraryBookRefCopyWithImpl(this._self, this._then);

  final _LibraryBookRef _self;
  final $Res Function(_LibraryBookRef) _then;

/// Create a copy of LibraryBookRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookId = freezed,Object? title = freezed,Object? accessionNo = freezed,}) {
  return _then(_LibraryBookRef(
bookId: freezed == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryIssue {

@JsonKey(name: 'issue_id') String get issueId;@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'returned_at') DateTime? get returnedAt; String? get status;@JsonKey(name: 'books') LibraryBookRef? get book;@JsonKey(name: 'students') StudentBrief? get student;@JsonKey(name: 'overdue_days') int get overdueDays;@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? get fineAmount;@JsonKey(name: 'fine_id') String? get fineId;@JsonKey(name: 'fine_paid') bool get finePaid;@JsonKey(name: 'fine_paid_at') DateTime? get finePaidAt;
/// Create a copy of LibraryIssue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryIssueCopyWith<LibraryIssue> get copyWith => _$LibraryIssueCopyWithImpl<LibraryIssue>(this as LibraryIssue, _$identity);

  /// Serializes this LibraryIssue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryIssue;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryIssue&&(identical(other.issueId, _this.issueId) || other.issueId == _this.issueId)&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.returnedAt, _this.returnedAt) || other.returnedAt == _this.returnedAt)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.book, _this.book) || other.book == _this.book)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.overdueDays, _this.overdueDays) || other.overdueDays == _this.overdueDays)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.fineId, _this.fineId) || other.fineId == _this.fineId)&&(identical(other.finePaid, _this.finePaid) || other.finePaid == _this.finePaid)&&(identical(other.finePaidAt, _this.finePaidAt) || other.finePaidAt == _this.finePaidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryIssue;
  return Object.hash(runtimeType,_this.issueId,_this.issueDate,_this.dueDate,_this.returnedAt,_this.status,_this.book,_this.student,_this.overdueDays,_this.fineAmount,_this.fineId,_this.finePaid,_this.finePaidAt);
}

@override
String toString() {
  final _this = this as LibraryIssue;
  return 'LibraryIssue(issueId: ${_this.issueId}, issueDate: ${_this.issueDate}, dueDate: ${_this.dueDate}, returnedAt: ${_this.returnedAt}, status: ${_this.status}, book: ${_this.book}, student: ${_this.student}, overdueDays: ${_this.overdueDays}, fineAmount: ${_this.fineAmount}, fineId: ${_this.fineId}, finePaid: ${_this.finePaid}, finePaidAt: ${_this.finePaidAt})';
}


}

/// @nodoc
abstract mixin class $LibraryIssueCopyWith<$Res>  {
  factory $LibraryIssueCopyWith(LibraryIssue value, $Res Function(LibraryIssue) _then) = _$LibraryIssueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, String? status,@JsonKey(name: 'books') LibraryBookRef? book,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'overdue_days') int overdueDays,@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? fineAmount,@JsonKey(name: 'fine_id') String? fineId,@JsonKey(name: 'fine_paid') bool finePaid,@JsonKey(name: 'fine_paid_at') DateTime? finePaidAt
});


$LibraryBookRefCopyWith<$Res>? get book;$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$LibraryIssueCopyWithImpl<$Res>
    implements $LibraryIssueCopyWith<$Res> {
  _$LibraryIssueCopyWithImpl(this._self, this._then);

  final LibraryIssue _self;
  final $Res Function(LibraryIssue) _then;

/// Create a copy of LibraryIssue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issueId = null,Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? status = freezed,Object? book = freezed,Object? student = freezed,Object? overdueDays = null,Object? fineAmount = freezed,Object? fineId = freezed,Object? finePaid = null,Object? finePaidAt = freezed,}) {
  return _then(LibraryIssue(
issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,book: freezed == book ? _self.book : book // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,overdueDays: null == overdueDays ? _self.overdueDays : overdueDays // ignore: cast_nullable_to_non_nullable
as int,fineAmount: freezed == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,fineId: freezed == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String?,finePaid: null == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool,finePaidAt: freezed == finePaidAt ? _self.finePaidAt : finePaidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of LibraryIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get book {
    if (_self.book == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.book!, (value) {
    return _then(_self.copyWith(book: value));
  });
}/// Create a copy of LibraryIssue
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


/// Adds pattern-matching-related methods to [LibraryIssue].
extension LibraryIssuePatterns on LibraryIssue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryIssue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryIssue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryIssue value)  $default,){
final _that = this;
switch (_that) {
case _LibraryIssue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryIssue value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryIssue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  String? status, @JsonKey(name: 'books')  LibraryBookRef? book, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'overdue_days')  int overdueDays, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'fine_id')  String? fineId, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryIssue() when $default != null:
return $default(_that.issueId,_that.issueDate,_that.dueDate,_that.returnedAt,_that.status,_that.book,_that.student,_that.overdueDays,_that.fineAmount,_that.fineId,_that.finePaid,_that.finePaidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  String? status, @JsonKey(name: 'books')  LibraryBookRef? book, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'overdue_days')  int overdueDays, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'fine_id')  String? fineId, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt)  $default,) {final _that = this;
switch (_that) {
case _LibraryIssue():
return $default(_that.issueId,_that.issueDate,_that.dueDate,_that.returnedAt,_that.status,_that.book,_that.student,_that.overdueDays,_that.fineAmount,_that.fineId,_that.finePaid,_that.finePaidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  String? status, @JsonKey(name: 'books')  LibraryBookRef? book, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'overdue_days')  int overdueDays, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'fine_id')  String? fineId, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt)?  $default,) {final _that = this;
switch (_that) {
case _LibraryIssue() when $default != null:
return $default(_that.issueId,_that.issueDate,_that.dueDate,_that.returnedAt,_that.status,_that.book,_that.student,_that.overdueDays,_that.fineAmount,_that.fineId,_that.finePaid,_that.finePaidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryIssue implements LibraryIssue {
  const _LibraryIssue({@JsonKey(name: 'issue_id') required this.issueId, @JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'returned_at') this.returnedAt, this.status, @JsonKey(name: 'books') this.book, @JsonKey(name: 'students') this.student, @JsonKey(name: 'overdue_days') this.overdueDays = 0, @JsonKey(name: 'fine_amount')@NullableDecimalConverter() this.fineAmount, @JsonKey(name: 'fine_id') this.fineId, @JsonKey(name: 'fine_paid') this.finePaid = false, @JsonKey(name: 'fine_paid_at') this.finePaidAt});
  factory _LibraryIssue.fromJson(Map<String, dynamic> json) => _$LibraryIssueFromJson(json);

@override@JsonKey(name: 'issue_id') final  String issueId;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'returned_at') final  DateTime? returnedAt;
@override final  String? status;
@override@JsonKey(name: 'books') final  LibraryBookRef? book;
@override@JsonKey(name: 'students') final  StudentBrief? student;
@override@JsonKey(name: 'overdue_days') final  int overdueDays;
@override@JsonKey(name: 'fine_amount')@NullableDecimalConverter() final  Decimal? fineAmount;
@override@JsonKey(name: 'fine_id') final  String? fineId;
@override@JsonKey(name: 'fine_paid') final  bool finePaid;
@override@JsonKey(name: 'fine_paid_at') final  DateTime? finePaidAt;

/// Create a copy of LibraryIssue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryIssueCopyWith<_LibraryIssue> get copyWith => __$LibraryIssueCopyWithImpl<_LibraryIssue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryIssueToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryIssue&&(identical(other.issueId, issueId) || other.issueId == issueId)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.book, book) || other.book == book)&&(identical(other.student, student) || other.student == student)&&(identical(other.overdueDays, overdueDays) || other.overdueDays == overdueDays)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.fineId, fineId) || other.fineId == fineId)&&(identical(other.finePaid, finePaid) || other.finePaid == finePaid)&&(identical(other.finePaidAt, finePaidAt) || other.finePaidAt == finePaidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,issueId,issueDate,dueDate,returnedAt,status,book,student,overdueDays,fineAmount,fineId,finePaid,finePaidAt);
}

@override
String toString() {
    return 'LibraryIssue(issueId: $issueId, issueDate: $issueDate, dueDate: $dueDate, returnedAt: $returnedAt, status: $status, book: $book, student: $student, overdueDays: $overdueDays, fineAmount: $fineAmount, fineId: $fineId, finePaid: $finePaid, finePaidAt: $finePaidAt)';
}


}

/// @nodoc
abstract mixin class _$LibraryIssueCopyWith<$Res> implements $LibraryIssueCopyWith<$Res> {
  factory _$LibraryIssueCopyWith(_LibraryIssue value, $Res Function(_LibraryIssue) _then) = __$LibraryIssueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, String? status,@JsonKey(name: 'books') LibraryBookRef? book,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'overdue_days') int overdueDays,@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? fineAmount,@JsonKey(name: 'fine_id') String? fineId,@JsonKey(name: 'fine_paid') bool finePaid,@JsonKey(name: 'fine_paid_at') DateTime? finePaidAt
});


@override $LibraryBookRefCopyWith<$Res>? get book;@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$LibraryIssueCopyWithImpl<$Res>
    implements _$LibraryIssueCopyWith<$Res> {
  __$LibraryIssueCopyWithImpl(this._self, this._then);

  final _LibraryIssue _self;
  final $Res Function(_LibraryIssue) _then;

/// Create a copy of LibraryIssue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issueId = null,Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? status = freezed,Object? book = freezed,Object? student = freezed,Object? overdueDays = null,Object? fineAmount = freezed,Object? fineId = freezed,Object? finePaid = null,Object? finePaidAt = freezed,}) {
  return _then(_LibraryIssue(
issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,book: freezed == book ? _self.book : book // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,overdueDays: null == overdueDays ? _self.overdueDays : overdueDays // ignore: cast_nullable_to_non_nullable
as int,fineAmount: freezed == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,fineId: freezed == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String?,finePaid: null == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool,finePaidAt: freezed == finePaidAt ? _self.finePaidAt : finePaidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of LibraryIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get book {
    if (_self.book == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.book!, (value) {
    return _then(_self.copyWith(book: value));
  });
}/// Create a copy of LibraryIssue
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
mixin _$LibraryOverdueReport {

 int get count;@JsonKey(name: 'total_fine')@NullableDecimalConverter() Decimal? get totalFine; List<LibraryIssue> get items;
/// Create a copy of LibraryOverdueReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryOverdueReportCopyWith<LibraryOverdueReport> get copyWith => _$LibraryOverdueReportCopyWithImpl<LibraryOverdueReport>(this as LibraryOverdueReport, _$identity);

  /// Serializes this LibraryOverdueReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryOverdueReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryOverdueReport&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.totalFine, _this.totalFine) || other.totalFine == _this.totalFine)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryOverdueReport;
  return Object.hash(runtimeType,_this.count,_this.totalFine,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as LibraryOverdueReport;
  return 'LibraryOverdueReport(count: ${_this.count}, totalFine: ${_this.totalFine}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $LibraryOverdueReportCopyWith<$Res>  {
  factory $LibraryOverdueReportCopyWith(LibraryOverdueReport value, $Res Function(LibraryOverdueReport) _then) = _$LibraryOverdueReportCopyWithImpl;
@useResult
$Res call({
 int count,@JsonKey(name: 'total_fine')@NullableDecimalConverter() Decimal? totalFine, List<LibraryIssue> items
});




}
/// @nodoc
class _$LibraryOverdueReportCopyWithImpl<$Res>
    implements $LibraryOverdueReportCopyWith<$Res> {
  _$LibraryOverdueReportCopyWithImpl(this._self, this._then);

  final LibraryOverdueReport _self;
  final $Res Function(LibraryOverdueReport) _then;

/// Create a copy of LibraryOverdueReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? totalFine = freezed,Object? items = null,}) {
  return _then(LibraryOverdueReport(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalFine: freezed == totalFine ? _self.totalFine : totalFine // ignore: cast_nullable_to_non_nullable
as Decimal?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<LibraryIssue>,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryOverdueReport].
extension LibraryOverdueReportPatterns on LibraryOverdueReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryOverdueReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryOverdueReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryOverdueReport value)  $default,){
final _that = this;
switch (_that) {
case _LibraryOverdueReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryOverdueReport value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryOverdueReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count, @JsonKey(name: 'total_fine')@NullableDecimalConverter()  Decimal? totalFine,  List<LibraryIssue> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryOverdueReport() when $default != null:
return $default(_that.count,_that.totalFine,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count, @JsonKey(name: 'total_fine')@NullableDecimalConverter()  Decimal? totalFine,  List<LibraryIssue> items)  $default,) {final _that = this;
switch (_that) {
case _LibraryOverdueReport():
return $default(_that.count,_that.totalFine,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count, @JsonKey(name: 'total_fine')@NullableDecimalConverter()  Decimal? totalFine,  List<LibraryIssue> items)?  $default,) {final _that = this;
switch (_that) {
case _LibraryOverdueReport() when $default != null:
return $default(_that.count,_that.totalFine,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryOverdueReport implements LibraryOverdueReport {
  const _LibraryOverdueReport({this.count = 0, @JsonKey(name: 'total_fine')@NullableDecimalConverter() this.totalFine,  List<LibraryIssue> items = const <LibraryIssue>[]}): _items = items;
  factory _LibraryOverdueReport.fromJson(Map<String, dynamic> json) => _$LibraryOverdueReportFromJson(json);

@override@JsonKey() final  int count;
@override@JsonKey(name: 'total_fine')@NullableDecimalConverter() final  Decimal? totalFine;
 final  List<LibraryIssue> _items;
@override@JsonKey() List<LibraryIssue> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of LibraryOverdueReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryOverdueReportCopyWith<_LibraryOverdueReport> get copyWith => __$LibraryOverdueReportCopyWithImpl<_LibraryOverdueReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryOverdueReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryOverdueReport&&(identical(other.count, count) || other.count == count)&&(identical(other.totalFine, totalFine) || other.totalFine == totalFine)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,count,totalFine,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'LibraryOverdueReport(count: $count, totalFine: $totalFine, items: $items)';
}


}

/// @nodoc
abstract mixin class _$LibraryOverdueReportCopyWith<$Res> implements $LibraryOverdueReportCopyWith<$Res> {
  factory _$LibraryOverdueReportCopyWith(_LibraryOverdueReport value, $Res Function(_LibraryOverdueReport) _then) = __$LibraryOverdueReportCopyWithImpl;
@override @useResult
$Res call({
 int count,@JsonKey(name: 'total_fine')@NullableDecimalConverter() Decimal? totalFine, List<LibraryIssue> items
});




}
/// @nodoc
class __$LibraryOverdueReportCopyWithImpl<$Res>
    implements _$LibraryOverdueReportCopyWith<$Res> {
  __$LibraryOverdueReportCopyWithImpl(this._self, this._then);

  final _LibraryOverdueReport _self;
  final $Res Function(_LibraryOverdueReport) _then;

/// Create a copy of LibraryOverdueReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? totalFine = freezed,Object? items = null,}) {
  return _then(_LibraryOverdueReport(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalFine: freezed == totalFine ? _self.totalFine : totalFine // ignore: cast_nullable_to_non_nullable
as Decimal?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<LibraryIssue>,
  ));
}


}


/// @nodoc
mixin _$LibraryActivityItem {

@JsonKey(name: 'activity_type') String get activityType; DateTime? get timestamp; LibraryBookRef? get book; StudentBrief? get student;@JsonKey(name: 'issue_id') String? get issueId;@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? get fineAmount;@JsonKey(name: 'fine_paid') bool? get finePaid;
/// Create a copy of LibraryActivityItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryActivityItemCopyWith<LibraryActivityItem> get copyWith => _$LibraryActivityItemCopyWithImpl<LibraryActivityItem>(this as LibraryActivityItem, _$identity);

  /// Serializes this LibraryActivityItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryActivityItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryActivityItem&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.timestamp, _this.timestamp) || other.timestamp == _this.timestamp)&&(identical(other.book, _this.book) || other.book == _this.book)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.issueId, _this.issueId) || other.issueId == _this.issueId)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.finePaid, _this.finePaid) || other.finePaid == _this.finePaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryActivityItem;
  return Object.hash(runtimeType,_this.activityType,_this.timestamp,_this.book,_this.student,_this.issueId,_this.fineAmount,_this.finePaid);
}

@override
String toString() {
  final _this = this as LibraryActivityItem;
  return 'LibraryActivityItem(activityType: ${_this.activityType}, timestamp: ${_this.timestamp}, book: ${_this.book}, student: ${_this.student}, issueId: ${_this.issueId}, fineAmount: ${_this.fineAmount}, finePaid: ${_this.finePaid})';
}


}

/// @nodoc
abstract mixin class $LibraryActivityItemCopyWith<$Res>  {
  factory $LibraryActivityItemCopyWith(LibraryActivityItem value, $Res Function(LibraryActivityItem) _then) = _$LibraryActivityItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_type') String activityType, DateTime? timestamp, LibraryBookRef? book, StudentBrief? student,@JsonKey(name: 'issue_id') String? issueId,@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? fineAmount,@JsonKey(name: 'fine_paid') bool? finePaid
});


$LibraryBookRefCopyWith<$Res>? get book;$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$LibraryActivityItemCopyWithImpl<$Res>
    implements $LibraryActivityItemCopyWith<$Res> {
  _$LibraryActivityItemCopyWithImpl(this._self, this._then);

  final LibraryActivityItem _self;
  final $Res Function(LibraryActivityItem) _then;

/// Create a copy of LibraryActivityItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityType = null,Object? timestamp = freezed,Object? book = freezed,Object? student = freezed,Object? issueId = freezed,Object? fineAmount = freezed,Object? finePaid = freezed,}) {
  return _then(LibraryActivityItem(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,book: freezed == book ? _self.book : book // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,issueId: freezed == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String?,fineAmount: freezed == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,finePaid: freezed == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of LibraryActivityItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get book {
    if (_self.book == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.book!, (value) {
    return _then(_self.copyWith(book: value));
  });
}/// Create a copy of LibraryActivityItem
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


/// Adds pattern-matching-related methods to [LibraryActivityItem].
extension LibraryActivityItemPatterns on LibraryActivityItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryActivityItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryActivityItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryActivityItem value)  $default,){
final _that = this;
switch (_that) {
case _LibraryActivityItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryActivityItem value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryActivityItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_type')  String activityType,  DateTime? timestamp,  LibraryBookRef? book,  StudentBrief? student, @JsonKey(name: 'issue_id')  String? issueId, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'fine_paid')  bool? finePaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryActivityItem() when $default != null:
return $default(_that.activityType,_that.timestamp,_that.book,_that.student,_that.issueId,_that.fineAmount,_that.finePaid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_type')  String activityType,  DateTime? timestamp,  LibraryBookRef? book,  StudentBrief? student, @JsonKey(name: 'issue_id')  String? issueId, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'fine_paid')  bool? finePaid)  $default,) {final _that = this;
switch (_that) {
case _LibraryActivityItem():
return $default(_that.activityType,_that.timestamp,_that.book,_that.student,_that.issueId,_that.fineAmount,_that.finePaid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_type')  String activityType,  DateTime? timestamp,  LibraryBookRef? book,  StudentBrief? student, @JsonKey(name: 'issue_id')  String? issueId, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'fine_paid')  bool? finePaid)?  $default,) {final _that = this;
switch (_that) {
case _LibraryActivityItem() when $default != null:
return $default(_that.activityType,_that.timestamp,_that.book,_that.student,_that.issueId,_that.fineAmount,_that.finePaid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryActivityItem implements LibraryActivityItem {
  const _LibraryActivityItem({@JsonKey(name: 'activity_type') required this.activityType, this.timestamp, this.book, this.student, @JsonKey(name: 'issue_id') this.issueId, @JsonKey(name: 'fine_amount')@NullableDecimalConverter() this.fineAmount, @JsonKey(name: 'fine_paid') this.finePaid});
  factory _LibraryActivityItem.fromJson(Map<String, dynamic> json) => _$LibraryActivityItemFromJson(json);

@override@JsonKey(name: 'activity_type') final  String activityType;
@override final  DateTime? timestamp;
@override final  LibraryBookRef? book;
@override final  StudentBrief? student;
@override@JsonKey(name: 'issue_id') final  String? issueId;
@override@JsonKey(name: 'fine_amount')@NullableDecimalConverter() final  Decimal? fineAmount;
@override@JsonKey(name: 'fine_paid') final  bool? finePaid;

/// Create a copy of LibraryActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryActivityItemCopyWith<_LibraryActivityItem> get copyWith => __$LibraryActivityItemCopyWithImpl<_LibraryActivityItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryActivityItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryActivityItem&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.book, book) || other.book == book)&&(identical(other.student, student) || other.student == student)&&(identical(other.issueId, issueId) || other.issueId == issueId)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.finePaid, finePaid) || other.finePaid == finePaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityType,timestamp,book,student,issueId,fineAmount,finePaid);
}

@override
String toString() {
    return 'LibraryActivityItem(activityType: $activityType, timestamp: $timestamp, book: $book, student: $student, issueId: $issueId, fineAmount: $fineAmount, finePaid: $finePaid)';
}


}

/// @nodoc
abstract mixin class _$LibraryActivityItemCopyWith<$Res> implements $LibraryActivityItemCopyWith<$Res> {
  factory _$LibraryActivityItemCopyWith(_LibraryActivityItem value, $Res Function(_LibraryActivityItem) _then) = __$LibraryActivityItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_type') String activityType, DateTime? timestamp, LibraryBookRef? book, StudentBrief? student,@JsonKey(name: 'issue_id') String? issueId,@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? fineAmount,@JsonKey(name: 'fine_paid') bool? finePaid
});


@override $LibraryBookRefCopyWith<$Res>? get book;@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$LibraryActivityItemCopyWithImpl<$Res>
    implements _$LibraryActivityItemCopyWith<$Res> {
  __$LibraryActivityItemCopyWithImpl(this._self, this._then);

  final _LibraryActivityItem _self;
  final $Res Function(_LibraryActivityItem) _then;

/// Create a copy of LibraryActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityType = null,Object? timestamp = freezed,Object? book = freezed,Object? student = freezed,Object? issueId = freezed,Object? fineAmount = freezed,Object? finePaid = freezed,}) {
  return _then(_LibraryActivityItem(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,book: freezed == book ? _self.book : book // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,issueId: freezed == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String?,fineAmount: freezed == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,finePaid: freezed == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of LibraryActivityItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get book {
    if (_self.book == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.book!, (value) {
    return _then(_self.copyWith(book: value));
  });
}/// Create a copy of LibraryActivityItem
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
mixin _$LibraryFineSettings {

@JsonKey(name: 'rate_per_day')@DecimalConverter() Decimal get ratePerDay;@JsonKey(name: 'grace_period_days') int get gracePeriodDays;@JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter() Decimal? get maxFinePerBook;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of LibraryFineSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryFineSettingsCopyWith<LibraryFineSettings> get copyWith => _$LibraryFineSettingsCopyWithImpl<LibraryFineSettings>(this as LibraryFineSettings, _$identity);

  /// Serializes this LibraryFineSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryFineSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryFineSettings&&(identical(other.ratePerDay, _this.ratePerDay) || other.ratePerDay == _this.ratePerDay)&&(identical(other.gracePeriodDays, _this.gracePeriodDays) || other.gracePeriodDays == _this.gracePeriodDays)&&(identical(other.maxFinePerBook, _this.maxFinePerBook) || other.maxFinePerBook == _this.maxFinePerBook)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryFineSettings;
  return Object.hash(runtimeType,_this.ratePerDay,_this.gracePeriodDays,_this.maxFinePerBook,_this.updatedAt);
}

@override
String toString() {
  final _this = this as LibraryFineSettings;
  return 'LibraryFineSettings(ratePerDay: ${_this.ratePerDay}, gracePeriodDays: ${_this.gracePeriodDays}, maxFinePerBook: ${_this.maxFinePerBook}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $LibraryFineSettingsCopyWith<$Res>  {
  factory $LibraryFineSettingsCopyWith(LibraryFineSettings value, $Res Function(LibraryFineSettings) _then) = _$LibraryFineSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rate_per_day')@DecimalConverter() Decimal ratePerDay,@JsonKey(name: 'grace_period_days') int gracePeriodDays,@JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter() Decimal? maxFinePerBook,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$LibraryFineSettingsCopyWithImpl<$Res>
    implements $LibraryFineSettingsCopyWith<$Res> {
  _$LibraryFineSettingsCopyWithImpl(this._self, this._then);

  final LibraryFineSettings _self;
  final $Res Function(LibraryFineSettings) _then;

/// Create a copy of LibraryFineSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ratePerDay = null,Object? gracePeriodDays = null,Object? maxFinePerBook = freezed,Object? updatedAt = freezed,}) {
  return _then(LibraryFineSettings(
ratePerDay: null == ratePerDay ? _self.ratePerDay : ratePerDay // ignore: cast_nullable_to_non_nullable
as Decimal,gracePeriodDays: null == gracePeriodDays ? _self.gracePeriodDays : gracePeriodDays // ignore: cast_nullable_to_non_nullable
as int,maxFinePerBook: freezed == maxFinePerBook ? _self.maxFinePerBook : maxFinePerBook // ignore: cast_nullable_to_non_nullable
as Decimal?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryFineSettings].
extension LibraryFineSettingsPatterns on LibraryFineSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryFineSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryFineSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryFineSettings value)  $default,){
final _that = this;
switch (_that) {
case _LibraryFineSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryFineSettings value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryFineSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_per_day')@DecimalConverter()  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter()  Decimal? maxFinePerBook, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryFineSettings() when $default != null:
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerBook,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_per_day')@DecimalConverter()  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter()  Decimal? maxFinePerBook, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _LibraryFineSettings():
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerBook,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rate_per_day')@DecimalConverter()  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter()  Decimal? maxFinePerBook, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _LibraryFineSettings() when $default != null:
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerBook,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryFineSettings implements LibraryFineSettings {
  const _LibraryFineSettings({@JsonKey(name: 'rate_per_day')@DecimalConverter() required this.ratePerDay, @JsonKey(name: 'grace_period_days') this.gracePeriodDays = 0, @JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter() this.maxFinePerBook, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _LibraryFineSettings.fromJson(Map<String, dynamic> json) => _$LibraryFineSettingsFromJson(json);

@override@JsonKey(name: 'rate_per_day')@DecimalConverter() final  Decimal ratePerDay;
@override@JsonKey(name: 'grace_period_days') final  int gracePeriodDays;
@override@JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter() final  Decimal? maxFinePerBook;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of LibraryFineSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryFineSettingsCopyWith<_LibraryFineSettings> get copyWith => __$LibraryFineSettingsCopyWithImpl<_LibraryFineSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryFineSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryFineSettings&&(identical(other.ratePerDay, ratePerDay) || other.ratePerDay == ratePerDay)&&(identical(other.gracePeriodDays, gracePeriodDays) || other.gracePeriodDays == gracePeriodDays)&&(identical(other.maxFinePerBook, maxFinePerBook) || other.maxFinePerBook == maxFinePerBook)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ratePerDay,gracePeriodDays,maxFinePerBook,updatedAt);
}

@override
String toString() {
    return 'LibraryFineSettings(ratePerDay: $ratePerDay, gracePeriodDays: $gracePeriodDays, maxFinePerBook: $maxFinePerBook, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LibraryFineSettingsCopyWith<$Res> implements $LibraryFineSettingsCopyWith<$Res> {
  factory _$LibraryFineSettingsCopyWith(_LibraryFineSettings value, $Res Function(_LibraryFineSettings) _then) = __$LibraryFineSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rate_per_day')@DecimalConverter() Decimal ratePerDay,@JsonKey(name: 'grace_period_days') int gracePeriodDays,@JsonKey(name: 'max_fine_per_book')@NullableDecimalConverter() Decimal? maxFinePerBook,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$LibraryFineSettingsCopyWithImpl<$Res>
    implements _$LibraryFineSettingsCopyWith<$Res> {
  __$LibraryFineSettingsCopyWithImpl(this._self, this._then);

  final _LibraryFineSettings _self;
  final $Res Function(_LibraryFineSettings) _then;

/// Create a copy of LibraryFineSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ratePerDay = null,Object? gracePeriodDays = null,Object? maxFinePerBook = freezed,Object? updatedAt = freezed,}) {
  return _then(_LibraryFineSettings(
ratePerDay: null == ratePerDay ? _self.ratePerDay : ratePerDay // ignore: cast_nullable_to_non_nullable
as Decimal,gracePeriodDays: null == gracePeriodDays ? _self.gracePeriodDays : gracePeriodDays // ignore: cast_nullable_to_non_nullable
as int,maxFinePerBook: freezed == maxFinePerBook ? _self.maxFinePerBook : maxFinePerBook // ignore: cast_nullable_to_non_nullable
as Decimal?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
