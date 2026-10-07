// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LibraryBook {

@JsonKey(name: 'book_id') String get bookId; String get title; String? get author;@JsonKey(name: 'accession_no') String? get accessionNo; String? get category; String? get publisher; String? get edition;@JsonKey(name: 'publication_year') int? get publicationYear; String? get language;@JsonKey(name: 'shelf_rack') String? get shelfRack;@JsonKey(name: 'institute_class') String? get instituteClass;@JsonKey(name: 'total_copies') int get totalCopies;@JsonKey(name: 'available_copies') int get availableCopies;@JsonKey(name: 'is_active') bool get isActive;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryBook&&(identical(other.bookId, _this.bookId) || other.bookId == _this.bookId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.accessionNo, _this.accessionNo) || other.accessionNo == _this.accessionNo)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.publisher, _this.publisher) || other.publisher == _this.publisher)&&(identical(other.edition, _this.edition) || other.edition == _this.edition)&&(identical(other.publicationYear, _this.publicationYear) || other.publicationYear == _this.publicationYear)&&(identical(other.language, _this.language) || other.language == _this.language)&&(identical(other.shelfRack, _this.shelfRack) || other.shelfRack == _this.shelfRack)&&(identical(other.instituteClass, _this.instituteClass) || other.instituteClass == _this.instituteClass)&&(identical(other.totalCopies, _this.totalCopies) || other.totalCopies == _this.totalCopies)&&(identical(other.availableCopies, _this.availableCopies) || other.availableCopies == _this.availableCopies)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryBook;
  return Object.hash(runtimeType,_this.bookId,_this.title,_this.author,_this.accessionNo,_this.category,_this.publisher,_this.edition,_this.publicationYear,_this.language,_this.shelfRack,_this.instituteClass,_this.totalCopies,_this.availableCopies,_this.isActive);
}

@override
String toString() {
  final _this = this as LibraryBook;
  return 'LibraryBook(bookId: ${_this.bookId}, title: ${_this.title}, author: ${_this.author}, accessionNo: ${_this.accessionNo}, category: ${_this.category}, publisher: ${_this.publisher}, edition: ${_this.edition}, publicationYear: ${_this.publicationYear}, language: ${_this.language}, shelfRack: ${_this.shelfRack}, instituteClass: ${_this.instituteClass}, totalCopies: ${_this.totalCopies}, availableCopies: ${_this.availableCopies}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $LibraryBookCopyWith<$Res>  {
  factory $LibraryBookCopyWith(LibraryBook value, $Res Function(LibraryBook) _then) = _$LibraryBookCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'book_id') String bookId, String title, String? author,@JsonKey(name: 'accession_no') String? accessionNo, String? category, String? publisher, String? edition,@JsonKey(name: 'publication_year') int? publicationYear, String? language,@JsonKey(name: 'shelf_rack') String? shelfRack,@JsonKey(name: 'institute_class') String? instituteClass,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies,@JsonKey(name: 'is_active') bool isActive
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
@pragma('vm:prefer-inline') @override $Res call({Object? bookId = null,Object? title = null,Object? author = freezed,Object? accessionNo = freezed,Object? category = freezed,Object? publisher = freezed,Object? edition = freezed,Object? publicationYear = freezed,Object? language = freezed,Object? shelfRack = freezed,Object? instituteClass = freezed,Object? totalCopies = null,Object? availableCopies = null,Object? isActive = null,}) {
  return _then(LibraryBook(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,edition: freezed == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String?,publicationYear: freezed == publicationYear ? _self.publicationYear : publicationYear // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,shelfRack: freezed == shelfRack ? _self.shelfRack : shelfRack // ignore: cast_nullable_to_non_nullable
as String?,instituteClass: freezed == instituteClass ? _self.instituteClass : instituteClass // ignore: cast_nullable_to_non_nullable
as String?,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String bookId,  String title,  String? author, @JsonKey(name: 'accession_no')  String? accessionNo,  String? category,  String? publisher,  String? edition, @JsonKey(name: 'publication_year')  int? publicationYear,  String? language, @JsonKey(name: 'shelf_rack')  String? shelfRack, @JsonKey(name: 'institute_class')  String? instituteClass, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryBook() when $default != null:
return $default(_that.bookId,_that.title,_that.author,_that.accessionNo,_that.category,_that.publisher,_that.edition,_that.publicationYear,_that.language,_that.shelfRack,_that.instituteClass,_that.totalCopies,_that.availableCopies,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String bookId,  String title,  String? author, @JsonKey(name: 'accession_no')  String? accessionNo,  String? category,  String? publisher,  String? edition, @JsonKey(name: 'publication_year')  int? publicationYear,  String? language, @JsonKey(name: 'shelf_rack')  String? shelfRack, @JsonKey(name: 'institute_class')  String? instituteClass, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _LibraryBook():
return $default(_that.bookId,_that.title,_that.author,_that.accessionNo,_that.category,_that.publisher,_that.edition,_that.publicationYear,_that.language,_that.shelfRack,_that.instituteClass,_that.totalCopies,_that.availableCopies,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'book_id')  String bookId,  String title,  String? author, @JsonKey(name: 'accession_no')  String? accessionNo,  String? category,  String? publisher,  String? edition, @JsonKey(name: 'publication_year')  int? publicationYear,  String? language, @JsonKey(name: 'shelf_rack')  String? shelfRack, @JsonKey(name: 'institute_class')  String? instituteClass, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _LibraryBook() when $default != null:
return $default(_that.bookId,_that.title,_that.author,_that.accessionNo,_that.category,_that.publisher,_that.edition,_that.publicationYear,_that.language,_that.shelfRack,_that.instituteClass,_that.totalCopies,_that.availableCopies,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryBook implements LibraryBook {
  const _LibraryBook({@JsonKey(name: 'book_id') required this.bookId, required this.title, this.author, @JsonKey(name: 'accession_no') this.accessionNo, this.category, this.publisher, this.edition, @JsonKey(name: 'publication_year') this.publicationYear, this.language, @JsonKey(name: 'shelf_rack') this.shelfRack, @JsonKey(name: 'institute_class') this.instituteClass, @JsonKey(name: 'total_copies') this.totalCopies = 0, @JsonKey(name: 'available_copies') this.availableCopies = 0, @JsonKey(name: 'is_active') this.isActive = true});
  factory _LibraryBook.fromJson(Map<String, dynamic> json) => _$LibraryBookFromJson(json);

@override@JsonKey(name: 'book_id') final  String bookId;
@override final  String title;
@override final  String? author;
@override@JsonKey(name: 'accession_no') final  String? accessionNo;
@override final  String? category;
@override final  String? publisher;
@override final  String? edition;
@override@JsonKey(name: 'publication_year') final  int? publicationYear;
@override final  String? language;
@override@JsonKey(name: 'shelf_rack') final  String? shelfRack;
@override@JsonKey(name: 'institute_class') final  String? instituteClass;
@override@JsonKey(name: 'total_copies') final  int totalCopies;
@override@JsonKey(name: 'available_copies') final  int availableCopies;
@override@JsonKey(name: 'is_active') final  bool isActive;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryBook&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.accessionNo, accessionNo) || other.accessionNo == accessionNo)&&(identical(other.category, category) || other.category == category)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.edition, edition) || other.edition == edition)&&(identical(other.publicationYear, publicationYear) || other.publicationYear == publicationYear)&&(identical(other.language, language) || other.language == language)&&(identical(other.shelfRack, shelfRack) || other.shelfRack == shelfRack)&&(identical(other.instituteClass, instituteClass) || other.instituteClass == instituteClass)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.availableCopies, availableCopies) || other.availableCopies == availableCopies)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,bookId,title,author,accessionNo,category,publisher,edition,publicationYear,language,shelfRack,instituteClass,totalCopies,availableCopies,isActive);
}

@override
String toString() {
    return 'LibraryBook(bookId: $bookId, title: $title, author: $author, accessionNo: $accessionNo, category: $category, publisher: $publisher, edition: $edition, publicationYear: $publicationYear, language: $language, shelfRack: $shelfRack, instituteClass: $instituteClass, totalCopies: $totalCopies, availableCopies: $availableCopies, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$LibraryBookCopyWith<$Res> implements $LibraryBookCopyWith<$Res> {
  factory _$LibraryBookCopyWith(_LibraryBook value, $Res Function(_LibraryBook) _then) = __$LibraryBookCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'book_id') String bookId, String title, String? author,@JsonKey(name: 'accession_no') String? accessionNo, String? category, String? publisher, String? edition,@JsonKey(name: 'publication_year') int? publicationYear, String? language,@JsonKey(name: 'shelf_rack') String? shelfRack,@JsonKey(name: 'institute_class') String? instituteClass,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies,@JsonKey(name: 'is_active') bool isActive
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
@override @pragma('vm:prefer-inline') $Res call({Object? bookId = null,Object? title = null,Object? author = freezed,Object? accessionNo = freezed,Object? category = freezed,Object? publisher = freezed,Object? edition = freezed,Object? publicationYear = freezed,Object? language = freezed,Object? shelfRack = freezed,Object? instituteClass = freezed,Object? totalCopies = null,Object? availableCopies = null,Object? isActive = null,}) {
  return _then(_LibraryBook(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,edition: freezed == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String?,publicationYear: freezed == publicationYear ? _self.publicationYear : publicationYear // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,shelfRack: freezed == shelfRack ? _self.shelfRack : shelfRack // ignore: cast_nullable_to_non_nullable
as String?,instituteClass: freezed == instituteClass ? _self.instituteClass : instituteClass // ignore: cast_nullable_to_non_nullable
as String?,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$LibraryBookRef {

@JsonKey(name: 'book_id') String get bookId; String get title;@JsonKey(name: 'accession_no') String? get accessionNo;
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
@JsonKey(name: 'book_id') String bookId, String title,@JsonKey(name: 'accession_no') String? accessionNo
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
@pragma('vm:prefer-inline') @override $Res call({Object? bookId = null,Object? title = null,Object? accessionNo = freezed,}) {
  return _then(LibraryBookRef(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String bookId,  String title, @JsonKey(name: 'accession_no')  String? accessionNo)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'book_id')  String bookId,  String title, @JsonKey(name: 'accession_no')  String? accessionNo)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'book_id')  String bookId,  String title, @JsonKey(name: 'accession_no')  String? accessionNo)?  $default,) {final _that = this;
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
  const _LibraryBookRef({@JsonKey(name: 'book_id') required this.bookId, required this.title, @JsonKey(name: 'accession_no') this.accessionNo});
  factory _LibraryBookRef.fromJson(Map<String, dynamic> json) => _$LibraryBookRefFromJson(json);

@override@JsonKey(name: 'book_id') final  String bookId;
@override final  String title;
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
@JsonKey(name: 'book_id') String bookId, String title,@JsonKey(name: 'accession_no') String? accessionNo
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
@override @pragma('vm:prefer-inline') $Res call({Object? bookId = null,Object? title = null,Object? accessionNo = freezed,}) {
  return _then(_LibraryBookRef(
bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,accessionNo: freezed == accessionNo ? _self.accessionNo : accessionNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryApplicantRef {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;
/// Create a copy of LibraryApplicantRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryApplicantRefCopyWith<LibraryApplicantRef> get copyWith => _$LibraryApplicantRefCopyWithImpl<LibraryApplicantRef>(this as LibraryApplicantRef, _$identity);

  /// Serializes this LibraryApplicantRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryApplicantRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryApplicantRef&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryApplicantRef;
  return Object.hash(runtimeType,_this.firstName,_this.lastName);
}

@override
String toString() {
  final _this = this as LibraryApplicantRef;
  return 'LibraryApplicantRef(firstName: ${_this.firstName}, lastName: ${_this.lastName})';
}


}

/// @nodoc
abstract mixin class $LibraryApplicantRefCopyWith<$Res>  {
  factory $LibraryApplicantRefCopyWith(LibraryApplicantRef value, $Res Function(LibraryApplicantRef) _then) = _$LibraryApplicantRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class _$LibraryApplicantRefCopyWithImpl<$Res>
    implements $LibraryApplicantRefCopyWith<$Res> {
  _$LibraryApplicantRefCopyWithImpl(this._self, this._then);

  final LibraryApplicantRef _self;
  final $Res Function(LibraryApplicantRef) _then;

/// Create a copy of LibraryApplicantRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(LibraryApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryApplicantRef].
extension LibraryApplicantRefPatterns on LibraryApplicantRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryApplicantRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryApplicantRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryApplicantRef value)  $default,){
final _that = this;
switch (_that) {
case _LibraryApplicantRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryApplicantRef value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryApplicantRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryApplicantRef() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)  $default,) {final _that = this;
switch (_that) {
case _LibraryApplicantRef():
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,) {final _that = this;
switch (_that) {
case _LibraryApplicantRef() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryApplicantRef implements LibraryApplicantRef {
  const _LibraryApplicantRef({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName});
  factory _LibraryApplicantRef.fromJson(Map<String, dynamic> json) => _$LibraryApplicantRefFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;

/// Create a copy of LibraryApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryApplicantRefCopyWith<_LibraryApplicantRef> get copyWith => __$LibraryApplicantRefCopyWithImpl<_LibraryApplicantRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryApplicantRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryApplicantRef&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName);
}

@override
String toString() {
    return 'LibraryApplicantRef(firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$LibraryApplicantRefCopyWith<$Res> implements $LibraryApplicantRefCopyWith<$Res> {
  factory _$LibraryApplicantRefCopyWith(_LibraryApplicantRef value, $Res Function(_LibraryApplicantRef) _then) = __$LibraryApplicantRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class __$LibraryApplicantRefCopyWithImpl<$Res>
    implements _$LibraryApplicantRefCopyWith<$Res> {
  __$LibraryApplicantRefCopyWithImpl(this._self, this._then);

  final _LibraryApplicantRef _self;
  final $Res Function(_LibraryApplicantRef) _then;

/// Create a copy of LibraryApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(_LibraryApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryStudentRef {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo; LibraryApplicantRef? get applicants;
/// Create a copy of LibraryStudentRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<LibraryStudentRef> get copyWith => _$LibraryStudentRefCopyWithImpl<LibraryStudentRef>(this as LibraryStudentRef, _$identity);

  /// Serializes this LibraryStudentRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryStudentRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryStudentRef&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.applicants, _this.applicants) || other.applicants == _this.applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryStudentRef;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.applicants);
}

@override
String toString() {
  final _this = this as LibraryStudentRef;
  return 'LibraryStudentRef(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, applicants: ${_this.applicants})';
}


}

/// @nodoc
abstract mixin class $LibraryStudentRefCopyWith<$Res>  {
  factory $LibraryStudentRefCopyWith(LibraryStudentRef value, $Res Function(LibraryStudentRef) _then) = _$LibraryStudentRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo, LibraryApplicantRef? applicants
});


$LibraryApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class _$LibraryStudentRefCopyWithImpl<$Res>
    implements $LibraryStudentRefCopyWith<$Res> {
  _$LibraryStudentRefCopyWithImpl(this._self, this._then);

  final LibraryStudentRef _self;
  final $Res Function(LibraryStudentRef) _then;

/// Create a copy of LibraryStudentRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? applicants = freezed,}) {
  return _then(LibraryStudentRef(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as LibraryApplicantRef?,
  ));
}
/// Create a copy of LibraryStudentRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $LibraryApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// Adds pattern-matching-related methods to [LibraryStudentRef].
extension LibraryStudentRefPatterns on LibraryStudentRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryStudentRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryStudentRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryStudentRef value)  $default,){
final _that = this;
switch (_that) {
case _LibraryStudentRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryStudentRef value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryStudentRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  LibraryApplicantRef? applicants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryStudentRef() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.applicants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  LibraryApplicantRef? applicants)  $default,) {final _that = this;
switch (_that) {
case _LibraryStudentRef():
return $default(_that.studentId,_that.admissionNo,_that.applicants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  LibraryApplicantRef? applicants)?  $default,) {final _that = this;
switch (_that) {
case _LibraryStudentRef() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.applicants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryStudentRef implements LibraryStudentRef {
  const _LibraryStudentRef({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, this.applicants});
  factory _LibraryStudentRef.fromJson(Map<String, dynamic> json) => _$LibraryStudentRefFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override final  LibraryApplicantRef? applicants;

/// Create a copy of LibraryStudentRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryStudentRefCopyWith<_LibraryStudentRef> get copyWith => __$LibraryStudentRefCopyWithImpl<_LibraryStudentRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryStudentRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryStudentRef&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.applicants, applicants) || other.applicants == applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,applicants);
}

@override
String toString() {
    return 'LibraryStudentRef(studentId: $studentId, admissionNo: $admissionNo, applicants: $applicants)';
}


}

/// @nodoc
abstract mixin class _$LibraryStudentRefCopyWith<$Res> implements $LibraryStudentRefCopyWith<$Res> {
  factory _$LibraryStudentRefCopyWith(_LibraryStudentRef value, $Res Function(_LibraryStudentRef) _then) = __$LibraryStudentRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo, LibraryApplicantRef? applicants
});


@override $LibraryApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class __$LibraryStudentRefCopyWithImpl<$Res>
    implements _$LibraryStudentRefCopyWith<$Res> {
  __$LibraryStudentRefCopyWithImpl(this._self, this._then);

  final _LibraryStudentRef _self;
  final $Res Function(_LibraryStudentRef) _then;

/// Create a copy of LibraryStudentRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? applicants = freezed,}) {
  return _then(_LibraryStudentRef(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as LibraryApplicantRef?,
  ));
}

/// Create a copy of LibraryStudentRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $LibraryApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// @nodoc
mixin _$BookIssue {

@JsonKey(name: 'issue_id') String get issueId;@JsonKey(name: 'book_id') String? get bookId;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'returned_at') DateTime? get returnedAt; String get status; LibraryBookRef? get books; LibraryStudentRef? get students;@JsonKey(name: 'overdue_days') int get overdueDays;@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get fineAmount;@JsonKey(name: 'fine_id') String? get fineId;@JsonKey(name: 'fine_paid') bool get finePaid;@JsonKey(name: 'fine_paid_at') DateTime? get finePaidAt;
/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookIssueCopyWith<BookIssue> get copyWith => _$BookIssueCopyWithImpl<BookIssue>(this as BookIssue, _$identity);

  /// Serializes this BookIssue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BookIssue;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookIssue&&(identical(other.issueId, _this.issueId) || other.issueId == _this.issueId)&&(identical(other.bookId, _this.bookId) || other.bookId == _this.bookId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.returnedAt, _this.returnedAt) || other.returnedAt == _this.returnedAt)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.books, _this.books) || other.books == _this.books)&&(identical(other.students, _this.students) || other.students == _this.students)&&(identical(other.overdueDays, _this.overdueDays) || other.overdueDays == _this.overdueDays)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.fineId, _this.fineId) || other.fineId == _this.fineId)&&(identical(other.finePaid, _this.finePaid) || other.finePaid == _this.finePaid)&&(identical(other.finePaidAt, _this.finePaidAt) || other.finePaidAt == _this.finePaidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BookIssue;
  return Object.hash(runtimeType,_this.issueId,_this.bookId,_this.studentId,_this.issueDate,_this.dueDate,_this.returnedAt,_this.status,_this.books,_this.students,_this.overdueDays,_this.fineAmount,_this.fineId,_this.finePaid,_this.finePaidAt);
}

@override
String toString() {
  final _this = this as BookIssue;
  return 'BookIssue(issueId: ${_this.issueId}, bookId: ${_this.bookId}, studentId: ${_this.studentId}, issueDate: ${_this.issueDate}, dueDate: ${_this.dueDate}, returnedAt: ${_this.returnedAt}, status: ${_this.status}, books: ${_this.books}, students: ${_this.students}, overdueDays: ${_this.overdueDays}, fineAmount: ${_this.fineAmount}, fineId: ${_this.fineId}, finePaid: ${_this.finePaid}, finePaidAt: ${_this.finePaidAt})';
}


}

/// @nodoc
abstract mixin class $BookIssueCopyWith<$Res>  {
  factory $BookIssueCopyWith(BookIssue value, $Res Function(BookIssue) _then) = _$BookIssueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'book_id') String? bookId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, String status, LibraryBookRef? books, LibraryStudentRef? students,@JsonKey(name: 'overdue_days') int overdueDays,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'fine_id') String? fineId,@JsonKey(name: 'fine_paid') bool finePaid,@JsonKey(name: 'fine_paid_at') DateTime? finePaidAt
});


$LibraryBookRefCopyWith<$Res>? get books;$LibraryStudentRefCopyWith<$Res>? get students;

}
/// @nodoc
class _$BookIssueCopyWithImpl<$Res>
    implements $BookIssueCopyWith<$Res> {
  _$BookIssueCopyWithImpl(this._self, this._then);

  final BookIssue _self;
  final $Res Function(BookIssue) _then;

/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issueId = null,Object? bookId = freezed,Object? studentId = freezed,Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? status = null,Object? books = freezed,Object? students = freezed,Object? overdueDays = null,Object? fineAmount = null,Object? fineId = freezed,Object? finePaid = null,Object? finePaidAt = freezed,}) {
  return _then(BookIssue(
issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,bookId: freezed == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as LibraryStudentRef?,overdueDays: null == overdueDays ? _self.overdueDays : overdueDays // ignore: cast_nullable_to_non_nullable
as int,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,fineId: freezed == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String?,finePaid: null == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool,finePaidAt: freezed == finePaidAt ? _self.finePaidAt : finePaidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get books {
    if (_self.books == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.books!, (value) {
    return _then(_self.copyWith(books: value));
  });
}/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $LibraryStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookIssue].
extension BookIssuePatterns on BookIssue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookIssue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookIssue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookIssue value)  $default,){
final _that = this;
switch (_that) {
case _BookIssue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookIssue value)?  $default,){
final _that = this;
switch (_that) {
case _BookIssue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'book_id')  String? bookId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  String status,  LibraryBookRef? books,  LibraryStudentRef? students, @JsonKey(name: 'overdue_days')  int overdueDays, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'fine_id')  String? fineId, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookIssue() when $default != null:
return $default(_that.issueId,_that.bookId,_that.studentId,_that.issueDate,_that.dueDate,_that.returnedAt,_that.status,_that.books,_that.students,_that.overdueDays,_that.fineAmount,_that.fineId,_that.finePaid,_that.finePaidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'book_id')  String? bookId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  String status,  LibraryBookRef? books,  LibraryStudentRef? students, @JsonKey(name: 'overdue_days')  int overdueDays, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'fine_id')  String? fineId, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt)  $default,) {final _that = this;
switch (_that) {
case _BookIssue():
return $default(_that.issueId,_that.bookId,_that.studentId,_that.issueDate,_that.dueDate,_that.returnedAt,_that.status,_that.books,_that.students,_that.overdueDays,_that.fineAmount,_that.fineId,_that.finePaid,_that.finePaidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'book_id')  String? bookId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  String status,  LibraryBookRef? books,  LibraryStudentRef? students, @JsonKey(name: 'overdue_days')  int overdueDays, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'fine_id')  String? fineId, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt)?  $default,) {final _that = this;
switch (_that) {
case _BookIssue() when $default != null:
return $default(_that.issueId,_that.bookId,_that.studentId,_that.issueDate,_that.dueDate,_that.returnedAt,_that.status,_that.books,_that.students,_that.overdueDays,_that.fineAmount,_that.fineId,_that.finePaid,_that.finePaidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookIssue implements BookIssue {
  const _BookIssue({@JsonKey(name: 'issue_id') required this.issueId, @JsonKey(name: 'book_id') this.bookId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'returned_at') this.returnedAt, this.status = 'ISSUED', this.books, this.students, @JsonKey(name: 'overdue_days') this.overdueDays = 0, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.fineAmount, @JsonKey(name: 'fine_id') this.fineId, @JsonKey(name: 'fine_paid') this.finePaid = false, @JsonKey(name: 'fine_paid_at') this.finePaidAt});
  factory _BookIssue.fromJson(Map<String, dynamic> json) => _$BookIssueFromJson(json);

@override@JsonKey(name: 'issue_id') final  String issueId;
@override@JsonKey(name: 'book_id') final  String? bookId;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'returned_at') final  DateTime? returnedAt;
@override@JsonKey() final  String status;
@override final  LibraryBookRef? books;
@override final  LibraryStudentRef? students;
@override@JsonKey(name: 'overdue_days') final  int overdueDays;
@override@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal fineAmount;
@override@JsonKey(name: 'fine_id') final  String? fineId;
@override@JsonKey(name: 'fine_paid') final  bool finePaid;
@override@JsonKey(name: 'fine_paid_at') final  DateTime? finePaidAt;

/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookIssueCopyWith<_BookIssue> get copyWith => __$BookIssueCopyWithImpl<_BookIssue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookIssueToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookIssue&&(identical(other.issueId, issueId) || other.issueId == issueId)&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.books, books) || other.books == books)&&(identical(other.students, students) || other.students == students)&&(identical(other.overdueDays, overdueDays) || other.overdueDays == overdueDays)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.fineId, fineId) || other.fineId == fineId)&&(identical(other.finePaid, finePaid) || other.finePaid == finePaid)&&(identical(other.finePaidAt, finePaidAt) || other.finePaidAt == finePaidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,issueId,bookId,studentId,issueDate,dueDate,returnedAt,status,books,students,overdueDays,fineAmount,fineId,finePaid,finePaidAt);
}

@override
String toString() {
    return 'BookIssue(issueId: $issueId, bookId: $bookId, studentId: $studentId, issueDate: $issueDate, dueDate: $dueDate, returnedAt: $returnedAt, status: $status, books: $books, students: $students, overdueDays: $overdueDays, fineAmount: $fineAmount, fineId: $fineId, finePaid: $finePaid, finePaidAt: $finePaidAt)';
}


}

/// @nodoc
abstract mixin class _$BookIssueCopyWith<$Res> implements $BookIssueCopyWith<$Res> {
  factory _$BookIssueCopyWith(_BookIssue value, $Res Function(_BookIssue) _then) = __$BookIssueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'book_id') String? bookId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, String status, LibraryBookRef? books, LibraryStudentRef? students,@JsonKey(name: 'overdue_days') int overdueDays,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'fine_id') String? fineId,@JsonKey(name: 'fine_paid') bool finePaid,@JsonKey(name: 'fine_paid_at') DateTime? finePaidAt
});


@override $LibraryBookRefCopyWith<$Res>? get books;@override $LibraryStudentRefCopyWith<$Res>? get students;

}
/// @nodoc
class __$BookIssueCopyWithImpl<$Res>
    implements _$BookIssueCopyWith<$Res> {
  __$BookIssueCopyWithImpl(this._self, this._then);

  final _BookIssue _self;
  final $Res Function(_BookIssue) _then;

/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issueId = null,Object? bookId = freezed,Object? studentId = freezed,Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? status = null,Object? books = freezed,Object? students = freezed,Object? overdueDays = null,Object? fineAmount = null,Object? fineId = freezed,Object? finePaid = null,Object? finePaidAt = freezed,}) {
  return _then(_BookIssue(
issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,bookId: freezed == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as LibraryStudentRef?,overdueDays: null == overdueDays ? _self.overdueDays : overdueDays // ignore: cast_nullable_to_non_nullable
as int,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,fineId: freezed == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String?,finePaid: null == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool,finePaidAt: freezed == finePaidAt ? _self.finePaidAt : finePaidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get books {
    if (_self.books == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.books!, (value) {
    return _then(_self.copyWith(books: value));
  });
}/// Create a copy of BookIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $LibraryStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}
}


/// @nodoc
mixin _$PendingFine {

@JsonKey(name: 'fine_id') String get fineId;@JsonKey(name: 'issue_id') String get issueId;@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get fineAmount;@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'returned_at') DateTime? get returnedAt; LibraryBookRef? get books; LibraryStudentRef? get students;
/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingFineCopyWith<PendingFine> get copyWith => _$PendingFineCopyWithImpl<PendingFine>(this as PendingFine, _$identity);

  /// Serializes this PendingFine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingFine;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingFine&&(identical(other.fineId, _this.fineId) || other.fineId == _this.fineId)&&(identical(other.issueId, _this.issueId) || other.issueId == _this.issueId)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.returnedAt, _this.returnedAt) || other.returnedAt == _this.returnedAt)&&(identical(other.books, _this.books) || other.books == _this.books)&&(identical(other.students, _this.students) || other.students == _this.students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingFine;
  return Object.hash(runtimeType,_this.fineId,_this.issueId,_this.fineAmount,_this.issueDate,_this.dueDate,_this.returnedAt,_this.books,_this.students);
}

@override
String toString() {
  final _this = this as PendingFine;
  return 'PendingFine(fineId: ${_this.fineId}, issueId: ${_this.issueId}, fineAmount: ${_this.fineAmount}, issueDate: ${_this.issueDate}, dueDate: ${_this.dueDate}, returnedAt: ${_this.returnedAt}, books: ${_this.books}, students: ${_this.students})';
}


}

/// @nodoc
abstract mixin class $PendingFineCopyWith<$Res>  {
  factory $PendingFineCopyWith(PendingFine value, $Res Function(PendingFine) _then) = _$PendingFineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fine_id') String fineId,@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, LibraryBookRef? books, LibraryStudentRef? students
});


$LibraryBookRefCopyWith<$Res>? get books;$LibraryStudentRefCopyWith<$Res>? get students;

}
/// @nodoc
class _$PendingFineCopyWithImpl<$Res>
    implements $PendingFineCopyWith<$Res> {
  _$PendingFineCopyWithImpl(this._self, this._then);

  final PendingFine _self;
  final $Res Function(PendingFine) _then;

/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fineId = null,Object? issueId = null,Object? fineAmount = null,Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? books = freezed,Object? students = freezed,}) {
  return _then(PendingFine(
fineId: null == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String,issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as LibraryStudentRef?,
  ));
}
/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get books {
    if (_self.books == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.books!, (value) {
    return _then(_self.copyWith(books: value));
  });
}/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $LibraryStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}
}


/// Adds pattern-matching-related methods to [PendingFine].
extension PendingFinePatterns on PendingFine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingFine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingFine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingFine value)  $default,){
final _that = this;
switch (_that) {
case _PendingFine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingFine value)?  $default,){
final _that = this;
switch (_that) {
case _PendingFine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fine_id')  String fineId, @JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  LibraryBookRef? books,  LibraryStudentRef? students)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingFine() when $default != null:
return $default(_that.fineId,_that.issueId,_that.fineAmount,_that.issueDate,_that.dueDate,_that.returnedAt,_that.books,_that.students);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fine_id')  String fineId, @JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  LibraryBookRef? books,  LibraryStudentRef? students)  $default,) {final _that = this;
switch (_that) {
case _PendingFine():
return $default(_that.fineId,_that.issueId,_that.fineAmount,_that.issueDate,_that.dueDate,_that.returnedAt,_that.books,_that.students);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fine_id')  String fineId, @JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  LibraryBookRef? books,  LibraryStudentRef? students)?  $default,) {final _that = this;
switch (_that) {
case _PendingFine() when $default != null:
return $default(_that.fineId,_that.issueId,_that.fineAmount,_that.issueDate,_that.dueDate,_that.returnedAt,_that.books,_that.students);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingFine implements PendingFine {
  const _PendingFine({@JsonKey(name: 'fine_id') required this.fineId, @JsonKey(name: 'issue_id') required this.issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.fineAmount, @JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'returned_at') this.returnedAt, this.books, this.students});
  factory _PendingFine.fromJson(Map<String, dynamic> json) => _$PendingFineFromJson(json);

@override@JsonKey(name: 'fine_id') final  String fineId;
@override@JsonKey(name: 'issue_id') final  String issueId;
@override@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal fineAmount;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'returned_at') final  DateTime? returnedAt;
@override final  LibraryBookRef? books;
@override final  LibraryStudentRef? students;

/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingFineCopyWith<_PendingFine> get copyWith => __$PendingFineCopyWithImpl<_PendingFine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingFineToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingFine&&(identical(other.fineId, fineId) || other.fineId == fineId)&&(identical(other.issueId, issueId) || other.issueId == issueId)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt)&&(identical(other.books, books) || other.books == books)&&(identical(other.students, students) || other.students == students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fineId,issueId,fineAmount,issueDate,dueDate,returnedAt,books,students);
}

@override
String toString() {
    return 'PendingFine(fineId: $fineId, issueId: $issueId, fineAmount: $fineAmount, issueDate: $issueDate, dueDate: $dueDate, returnedAt: $returnedAt, books: $books, students: $students)';
}


}

/// @nodoc
abstract mixin class _$PendingFineCopyWith<$Res> implements $PendingFineCopyWith<$Res> {
  factory _$PendingFineCopyWith(_PendingFine value, $Res Function(_PendingFine) _then) = __$PendingFineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fine_id') String fineId,@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, LibraryBookRef? books, LibraryStudentRef? students
});


@override $LibraryBookRefCopyWith<$Res>? get books;@override $LibraryStudentRefCopyWith<$Res>? get students;

}
/// @nodoc
class __$PendingFineCopyWithImpl<$Res>
    implements _$PendingFineCopyWith<$Res> {
  __$PendingFineCopyWithImpl(this._self, this._then);

  final _PendingFine _self;
  final $Res Function(_PendingFine) _then;

/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fineId = null,Object? issueId = null,Object? fineAmount = null,Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? books = freezed,Object? students = freezed,}) {
  return _then(_PendingFine(
fineId: null == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String,issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as LibraryStudentRef?,
  ));
}

/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get books {
    if (_self.books == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.books!, (value) {
    return _then(_self.copyWith(books: value));
  });
}/// Create a copy of PendingFine
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $LibraryStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}
}


/// @nodoc
mixin _$PendingFines {

@JsonKey(name: 'returned_unpaid') List<PendingFine> get returnedUnpaid;@JsonKey(name: 'still_issued_overdue') List<BookIssue> get stillIssuedOverdue;
/// Create a copy of PendingFines
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingFinesCopyWith<PendingFines> get copyWith => _$PendingFinesCopyWithImpl<PendingFines>(this as PendingFines, _$identity);

  /// Serializes this PendingFines to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingFines;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingFines&&const DeepCollectionEquality().equals(other.returnedUnpaid, _this.returnedUnpaid)&&const DeepCollectionEquality().equals(other.stillIssuedOverdue, _this.stillIssuedOverdue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingFines;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.returnedUnpaid),const DeepCollectionEquality().hash(_this.stillIssuedOverdue));
}

@override
String toString() {
  final _this = this as PendingFines;
  return 'PendingFines(returnedUnpaid: ${_this.returnedUnpaid}, stillIssuedOverdue: ${_this.stillIssuedOverdue})';
}


}

/// @nodoc
abstract mixin class $PendingFinesCopyWith<$Res>  {
  factory $PendingFinesCopyWith(PendingFines value, $Res Function(PendingFines) _then) = _$PendingFinesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'returned_unpaid') List<PendingFine> returnedUnpaid,@JsonKey(name: 'still_issued_overdue') List<BookIssue> stillIssuedOverdue
});




}
/// @nodoc
class _$PendingFinesCopyWithImpl<$Res>
    implements $PendingFinesCopyWith<$Res> {
  _$PendingFinesCopyWithImpl(this._self, this._then);

  final PendingFines _self;
  final $Res Function(PendingFines) _then;

/// Create a copy of PendingFines
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? returnedUnpaid = null,Object? stillIssuedOverdue = null,}) {
  return _then(PendingFines(
returnedUnpaid: null == returnedUnpaid ? _self.returnedUnpaid : returnedUnpaid // ignore: cast_nullable_to_non_nullable
as List<PendingFine>,stillIssuedOverdue: null == stillIssuedOverdue ? _self.stillIssuedOverdue : stillIssuedOverdue // ignore: cast_nullable_to_non_nullable
as List<BookIssue>,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingFines].
extension PendingFinesPatterns on PendingFines {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingFines value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingFines() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingFines value)  $default,){
final _that = this;
switch (_that) {
case _PendingFines():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingFines value)?  $default,){
final _that = this;
switch (_that) {
case _PendingFines() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'returned_unpaid')  List<PendingFine> returnedUnpaid, @JsonKey(name: 'still_issued_overdue')  List<BookIssue> stillIssuedOverdue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingFines() when $default != null:
return $default(_that.returnedUnpaid,_that.stillIssuedOverdue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'returned_unpaid')  List<PendingFine> returnedUnpaid, @JsonKey(name: 'still_issued_overdue')  List<BookIssue> stillIssuedOverdue)  $default,) {final _that = this;
switch (_that) {
case _PendingFines():
return $default(_that.returnedUnpaid,_that.stillIssuedOverdue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'returned_unpaid')  List<PendingFine> returnedUnpaid, @JsonKey(name: 'still_issued_overdue')  List<BookIssue> stillIssuedOverdue)?  $default,) {final _that = this;
switch (_that) {
case _PendingFines() when $default != null:
return $default(_that.returnedUnpaid,_that.stillIssuedOverdue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingFines implements PendingFines {
  const _PendingFines({@JsonKey(name: 'returned_unpaid')  List<PendingFine> returnedUnpaid = const <PendingFine>[], @JsonKey(name: 'still_issued_overdue')  List<BookIssue> stillIssuedOverdue = const <BookIssue>[]}): _returnedUnpaid = returnedUnpaid,_stillIssuedOverdue = stillIssuedOverdue;
  factory _PendingFines.fromJson(Map<String, dynamic> json) => _$PendingFinesFromJson(json);

 final  List<PendingFine> _returnedUnpaid;
@override@JsonKey(name: 'returned_unpaid') List<PendingFine> get returnedUnpaid {
  if (_returnedUnpaid is EqualUnmodifiableListView) return _returnedUnpaid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_returnedUnpaid);
}

 final  List<BookIssue> _stillIssuedOverdue;
@override@JsonKey(name: 'still_issued_overdue') List<BookIssue> get stillIssuedOverdue {
  if (_stillIssuedOverdue is EqualUnmodifiableListView) return _stillIssuedOverdue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stillIssuedOverdue);
}


/// Create a copy of PendingFines
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingFinesCopyWith<_PendingFines> get copyWith => __$PendingFinesCopyWithImpl<_PendingFines>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingFinesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingFines&&const DeepCollectionEquality().equals(other.returnedUnpaid, _returnedUnpaid)&&const DeepCollectionEquality().equals(other.stillIssuedOverdue, _stillIssuedOverdue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_returnedUnpaid),const DeepCollectionEquality().hash(_stillIssuedOverdue));
}

@override
String toString() {
    return 'PendingFines(returnedUnpaid: $returnedUnpaid, stillIssuedOverdue: $stillIssuedOverdue)';
}


}

/// @nodoc
abstract mixin class _$PendingFinesCopyWith<$Res> implements $PendingFinesCopyWith<$Res> {
  factory _$PendingFinesCopyWith(_PendingFines value, $Res Function(_PendingFines) _then) = __$PendingFinesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'returned_unpaid') List<PendingFine> returnedUnpaid,@JsonKey(name: 'still_issued_overdue') List<BookIssue> stillIssuedOverdue
});




}
/// @nodoc
class __$PendingFinesCopyWithImpl<$Res>
    implements _$PendingFinesCopyWith<$Res> {
  __$PendingFinesCopyWithImpl(this._self, this._then);

  final _PendingFines _self;
  final $Res Function(_PendingFines) _then;

/// Create a copy of PendingFines
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? returnedUnpaid = null,Object? stillIssuedOverdue = null,}) {
  return _then(_PendingFines(
returnedUnpaid: null == returnedUnpaid ? _self._returnedUnpaid : returnedUnpaid // ignore: cast_nullable_to_non_nullable
as List<PendingFine>,stillIssuedOverdue: null == stillIssuedOverdue ? _self._stillIssuedOverdue : stillIssuedOverdue // ignore: cast_nullable_to_non_nullable
as List<BookIssue>,
  ));
}


}


/// @nodoc
mixin _$FineRecord {

@JsonKey(name: 'fine_id') String get fineId;@JsonKey(name: 'issue_id') String get issueId;@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get fineAmount;@JsonKey(name: 'fine_paid') bool get finePaid;@JsonKey(name: 'fine_paid_at') DateTime? get finePaidAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'book_issues') FineRecordIssue? get issue;
/// Create a copy of FineRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FineRecordCopyWith<FineRecord> get copyWith => _$FineRecordCopyWithImpl<FineRecord>(this as FineRecord, _$identity);

  /// Serializes this FineRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FineRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FineRecord&&(identical(other.fineId, _this.fineId) || other.fineId == _this.fineId)&&(identical(other.issueId, _this.issueId) || other.issueId == _this.issueId)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.finePaid, _this.finePaid) || other.finePaid == _this.finePaid)&&(identical(other.finePaidAt, _this.finePaidAt) || other.finePaidAt == _this.finePaidAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.issue, _this.issue) || other.issue == _this.issue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FineRecord;
  return Object.hash(runtimeType,_this.fineId,_this.issueId,_this.fineAmount,_this.finePaid,_this.finePaidAt,_this.createdAt,_this.issue);
}

@override
String toString() {
  final _this = this as FineRecord;
  return 'FineRecord(fineId: ${_this.fineId}, issueId: ${_this.issueId}, fineAmount: ${_this.fineAmount}, finePaid: ${_this.finePaid}, finePaidAt: ${_this.finePaidAt}, createdAt: ${_this.createdAt}, issue: ${_this.issue})';
}


}

/// @nodoc
abstract mixin class $FineRecordCopyWith<$Res>  {
  factory $FineRecordCopyWith(FineRecord value, $Res Function(FineRecord) _then) = _$FineRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fine_id') String fineId,@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'fine_paid') bool finePaid,@JsonKey(name: 'fine_paid_at') DateTime? finePaidAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'book_issues') FineRecordIssue? issue
});


$FineRecordIssueCopyWith<$Res>? get issue;

}
/// @nodoc
class _$FineRecordCopyWithImpl<$Res>
    implements $FineRecordCopyWith<$Res> {
  _$FineRecordCopyWithImpl(this._self, this._then);

  final FineRecord _self;
  final $Res Function(FineRecord) _then;

/// Create a copy of FineRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fineId = null,Object? issueId = null,Object? fineAmount = null,Object? finePaid = null,Object? finePaidAt = freezed,Object? createdAt = freezed,Object? issue = freezed,}) {
  return _then(FineRecord(
fineId: null == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String,issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,finePaid: null == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool,finePaidAt: freezed == finePaidAt ? _self.finePaidAt : finePaidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as FineRecordIssue?,
  ));
}
/// Create a copy of FineRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FineRecordIssueCopyWith<$Res>? get issue {
    if (_self.issue == null) {
    return null;
  }

  return $FineRecordIssueCopyWith<$Res>(_self.issue!, (value) {
    return _then(_self.copyWith(issue: value));
  });
}
}


/// Adds pattern-matching-related methods to [FineRecord].
extension FineRecordPatterns on FineRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FineRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FineRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FineRecord value)  $default,){
final _that = this;
switch (_that) {
case _FineRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FineRecord value)?  $default,){
final _that = this;
switch (_that) {
case _FineRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fine_id')  String fineId, @JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'book_issues')  FineRecordIssue? issue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FineRecord() when $default != null:
return $default(_that.fineId,_that.issueId,_that.fineAmount,_that.finePaid,_that.finePaidAt,_that.createdAt,_that.issue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fine_id')  String fineId, @JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'book_issues')  FineRecordIssue? issue)  $default,) {final _that = this;
switch (_that) {
case _FineRecord():
return $default(_that.fineId,_that.issueId,_that.fineAmount,_that.finePaid,_that.finePaidAt,_that.createdAt,_that.issue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fine_id')  String fineId, @JsonKey(name: 'issue_id')  String issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'fine_paid')  bool finePaid, @JsonKey(name: 'fine_paid_at')  DateTime? finePaidAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'book_issues')  FineRecordIssue? issue)?  $default,) {final _that = this;
switch (_that) {
case _FineRecord() when $default != null:
return $default(_that.fineId,_that.issueId,_that.fineAmount,_that.finePaid,_that.finePaidAt,_that.createdAt,_that.issue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FineRecord implements FineRecord {
  const _FineRecord({@JsonKey(name: 'fine_id') required this.fineId, @JsonKey(name: 'issue_id') required this.issueId, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.fineAmount, @JsonKey(name: 'fine_paid') this.finePaid = false, @JsonKey(name: 'fine_paid_at') this.finePaidAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'book_issues') this.issue});
  factory _FineRecord.fromJson(Map<String, dynamic> json) => _$FineRecordFromJson(json);

@override@JsonKey(name: 'fine_id') final  String fineId;
@override@JsonKey(name: 'issue_id') final  String issueId;
@override@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal fineAmount;
@override@JsonKey(name: 'fine_paid') final  bool finePaid;
@override@JsonKey(name: 'fine_paid_at') final  DateTime? finePaidAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'book_issues') final  FineRecordIssue? issue;

/// Create a copy of FineRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FineRecordCopyWith<_FineRecord> get copyWith => __$FineRecordCopyWithImpl<_FineRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FineRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FineRecord&&(identical(other.fineId, fineId) || other.fineId == fineId)&&(identical(other.issueId, issueId) || other.issueId == issueId)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.finePaid, finePaid) || other.finePaid == finePaid)&&(identical(other.finePaidAt, finePaidAt) || other.finePaidAt == finePaidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.issue, issue) || other.issue == issue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fineId,issueId,fineAmount,finePaid,finePaidAt,createdAt,issue);
}

@override
String toString() {
    return 'FineRecord(fineId: $fineId, issueId: $issueId, fineAmount: $fineAmount, finePaid: $finePaid, finePaidAt: $finePaidAt, createdAt: $createdAt, issue: $issue)';
}


}

/// @nodoc
abstract mixin class _$FineRecordCopyWith<$Res> implements $FineRecordCopyWith<$Res> {
  factory _$FineRecordCopyWith(_FineRecord value, $Res Function(_FineRecord) _then) = __$FineRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fine_id') String fineId,@JsonKey(name: 'issue_id') String issueId,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'fine_paid') bool finePaid,@JsonKey(name: 'fine_paid_at') DateTime? finePaidAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'book_issues') FineRecordIssue? issue
});


@override $FineRecordIssueCopyWith<$Res>? get issue;

}
/// @nodoc
class __$FineRecordCopyWithImpl<$Res>
    implements _$FineRecordCopyWith<$Res> {
  __$FineRecordCopyWithImpl(this._self, this._then);

  final _FineRecord _self;
  final $Res Function(_FineRecord) _then;

/// Create a copy of FineRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fineId = null,Object? issueId = null,Object? fineAmount = null,Object? finePaid = null,Object? finePaidAt = freezed,Object? createdAt = freezed,Object? issue = freezed,}) {
  return _then(_FineRecord(
fineId: null == fineId ? _self.fineId : fineId // ignore: cast_nullable_to_non_nullable
as String,issueId: null == issueId ? _self.issueId : issueId // ignore: cast_nullable_to_non_nullable
as String,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,finePaid: null == finePaid ? _self.finePaid : finePaid // ignore: cast_nullable_to_non_nullable
as bool,finePaidAt: freezed == finePaidAt ? _self.finePaidAt : finePaidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as FineRecordIssue?,
  ));
}

/// Create a copy of FineRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FineRecordIssueCopyWith<$Res>? get issue {
    if (_self.issue == null) {
    return null;
  }

  return $FineRecordIssueCopyWith<$Res>(_self.issue!, (value) {
    return _then(_self.copyWith(issue: value));
  });
}
}


/// @nodoc
mixin _$FineRecordIssue {

@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'returned_at') DateTime? get returnedAt; LibraryBookRef? get books; LibraryStudentRef? get students;
/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FineRecordIssueCopyWith<FineRecordIssue> get copyWith => _$FineRecordIssueCopyWithImpl<FineRecordIssue>(this as FineRecordIssue, _$identity);

  /// Serializes this FineRecordIssue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FineRecordIssue;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FineRecordIssue&&(identical(other.issueDate, _this.issueDate) || other.issueDate == _this.issueDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.returnedAt, _this.returnedAt) || other.returnedAt == _this.returnedAt)&&(identical(other.books, _this.books) || other.books == _this.books)&&(identical(other.students, _this.students) || other.students == _this.students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FineRecordIssue;
  return Object.hash(runtimeType,_this.issueDate,_this.dueDate,_this.returnedAt,_this.books,_this.students);
}

@override
String toString() {
  final _this = this as FineRecordIssue;
  return 'FineRecordIssue(issueDate: ${_this.issueDate}, dueDate: ${_this.dueDate}, returnedAt: ${_this.returnedAt}, books: ${_this.books}, students: ${_this.students})';
}


}

/// @nodoc
abstract mixin class $FineRecordIssueCopyWith<$Res>  {
  factory $FineRecordIssueCopyWith(FineRecordIssue value, $Res Function(FineRecordIssue) _then) = _$FineRecordIssueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, LibraryBookRef? books, LibraryStudentRef? students
});


$LibraryBookRefCopyWith<$Res>? get books;$LibraryStudentRefCopyWith<$Res>? get students;

}
/// @nodoc
class _$FineRecordIssueCopyWithImpl<$Res>
    implements $FineRecordIssueCopyWith<$Res> {
  _$FineRecordIssueCopyWithImpl(this._self, this._then);

  final FineRecordIssue _self;
  final $Res Function(FineRecordIssue) _then;

/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? books = freezed,Object? students = freezed,}) {
  return _then(FineRecordIssue(
issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as LibraryStudentRef?,
  ));
}
/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get books {
    if (_self.books == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.books!, (value) {
    return _then(_self.copyWith(books: value));
  });
}/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $LibraryStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}
}


/// Adds pattern-matching-related methods to [FineRecordIssue].
extension FineRecordIssuePatterns on FineRecordIssue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FineRecordIssue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FineRecordIssue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FineRecordIssue value)  $default,){
final _that = this;
switch (_that) {
case _FineRecordIssue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FineRecordIssue value)?  $default,){
final _that = this;
switch (_that) {
case _FineRecordIssue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  LibraryBookRef? books,  LibraryStudentRef? students)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FineRecordIssue() when $default != null:
return $default(_that.issueDate,_that.dueDate,_that.returnedAt,_that.books,_that.students);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  LibraryBookRef? books,  LibraryStudentRef? students)  $default,) {final _that = this;
switch (_that) {
case _FineRecordIssue():
return $default(_that.issueDate,_that.dueDate,_that.returnedAt,_that.books,_that.students);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'returned_at')  DateTime? returnedAt,  LibraryBookRef? books,  LibraryStudentRef? students)?  $default,) {final _that = this;
switch (_that) {
case _FineRecordIssue() when $default != null:
return $default(_that.issueDate,_that.dueDate,_that.returnedAt,_that.books,_that.students);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FineRecordIssue implements FineRecordIssue {
  const _FineRecordIssue({@JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'returned_at') this.returnedAt, this.books, this.students});
  factory _FineRecordIssue.fromJson(Map<String, dynamic> json) => _$FineRecordIssueFromJson(json);

@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'returned_at') final  DateTime? returnedAt;
@override final  LibraryBookRef? books;
@override final  LibraryStudentRef? students;

/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FineRecordIssueCopyWith<_FineRecordIssue> get copyWith => __$FineRecordIssueCopyWithImpl<_FineRecordIssue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FineRecordIssueToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FineRecordIssue&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt)&&(identical(other.books, books) || other.books == books)&&(identical(other.students, students) || other.students == students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,issueDate,dueDate,returnedAt,books,students);
}

@override
String toString() {
    return 'FineRecordIssue(issueDate: $issueDate, dueDate: $dueDate, returnedAt: $returnedAt, books: $books, students: $students)';
}


}

/// @nodoc
abstract mixin class _$FineRecordIssueCopyWith<$Res> implements $FineRecordIssueCopyWith<$Res> {
  factory _$FineRecordIssueCopyWith(_FineRecordIssue value, $Res Function(_FineRecordIssue) _then) = __$FineRecordIssueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'returned_at') DateTime? returnedAt, LibraryBookRef? books, LibraryStudentRef? students
});


@override $LibraryBookRefCopyWith<$Res>? get books;@override $LibraryStudentRefCopyWith<$Res>? get students;

}
/// @nodoc
class __$FineRecordIssueCopyWithImpl<$Res>
    implements _$FineRecordIssueCopyWith<$Res> {
  __$FineRecordIssueCopyWithImpl(this._self, this._then);

  final _FineRecordIssue _self;
  final $Res Function(_FineRecordIssue) _then;

/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issueDate = freezed,Object? dueDate = freezed,Object? returnedAt = freezed,Object? books = freezed,Object? students = freezed,}) {
  return _then(_FineRecordIssue(
issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as LibraryBookRef?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as LibraryStudentRef?,
  ));
}

/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryBookRefCopyWith<$Res>? get books {
    if (_self.books == null) {
    return null;
  }

  return $LibraryBookRefCopyWith<$Res>(_self.books!, (value) {
    return _then(_self.copyWith(books: value));
  });
}/// Create a copy of FineRecordIssue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $LibraryStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}
}


/// @nodoc
mixin _$LibrarianDashboard {

@JsonKey(name: 'total_books') int get totalBooks;@JsonKey(name: 'total_copies') int get totalCopies;@JsonKey(name: 'available_books') int get availableBooks;@JsonKey(name: 'issued_books') int get issuedBooks;@JsonKey(name: 'overdue_books') int get overdueBooks;@JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get pendingFines;@JsonKey(name: 'today_activity') LibraryTodayActivity get todayActivity;
/// Create a copy of LibrarianDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibrarianDashboardCopyWith<LibrarianDashboard> get copyWith => _$LibrarianDashboardCopyWithImpl<LibrarianDashboard>(this as LibrarianDashboard, _$identity);

  /// Serializes this LibrarianDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibrarianDashboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibrarianDashboard&&(identical(other.totalBooks, _this.totalBooks) || other.totalBooks == _this.totalBooks)&&(identical(other.totalCopies, _this.totalCopies) || other.totalCopies == _this.totalCopies)&&(identical(other.availableBooks, _this.availableBooks) || other.availableBooks == _this.availableBooks)&&(identical(other.issuedBooks, _this.issuedBooks) || other.issuedBooks == _this.issuedBooks)&&(identical(other.overdueBooks, _this.overdueBooks) || other.overdueBooks == _this.overdueBooks)&&(identical(other.pendingFines, _this.pendingFines) || other.pendingFines == _this.pendingFines)&&(identical(other.todayActivity, _this.todayActivity) || other.todayActivity == _this.todayActivity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibrarianDashboard;
  return Object.hash(runtimeType,_this.totalBooks,_this.totalCopies,_this.availableBooks,_this.issuedBooks,_this.overdueBooks,_this.pendingFines,_this.todayActivity);
}

@override
String toString() {
  final _this = this as LibrarianDashboard;
  return 'LibrarianDashboard(totalBooks: ${_this.totalBooks}, totalCopies: ${_this.totalCopies}, availableBooks: ${_this.availableBooks}, issuedBooks: ${_this.issuedBooks}, overdueBooks: ${_this.overdueBooks}, pendingFines: ${_this.pendingFines}, todayActivity: ${_this.todayActivity})';
}


}

/// @nodoc
abstract mixin class $LibrarianDashboardCopyWith<$Res>  {
  factory $LibrarianDashboardCopyWith(LibrarianDashboard value, $Res Function(LibrarianDashboard) _then) = _$LibrarianDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_books') int totalBooks,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_books') int availableBooks,@JsonKey(name: 'issued_books') int issuedBooks,@JsonKey(name: 'overdue_books') int overdueBooks,@JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson) Decimal pendingFines,@JsonKey(name: 'today_activity') LibraryTodayActivity todayActivity
});


$LibraryTodayActivityCopyWith<$Res> get todayActivity;

}
/// @nodoc
class _$LibrarianDashboardCopyWithImpl<$Res>
    implements $LibrarianDashboardCopyWith<$Res> {
  _$LibrarianDashboardCopyWithImpl(this._self, this._then);

  final LibrarianDashboard _self;
  final $Res Function(LibrarianDashboard) _then;

/// Create a copy of LibrarianDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalBooks = null,Object? totalCopies = null,Object? availableBooks = null,Object? issuedBooks = null,Object? overdueBooks = null,Object? pendingFines = null,Object? todayActivity = null,}) {
  return _then(LibrarianDashboard(
totalBooks: null == totalBooks ? _self.totalBooks : totalBooks // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableBooks: null == availableBooks ? _self.availableBooks : availableBooks // ignore: cast_nullable_to_non_nullable
as int,issuedBooks: null == issuedBooks ? _self.issuedBooks : issuedBooks // ignore: cast_nullable_to_non_nullable
as int,overdueBooks: null == overdueBooks ? _self.overdueBooks : overdueBooks // ignore: cast_nullable_to_non_nullable
as int,pendingFines: null == pendingFines ? _self.pendingFines : pendingFines // ignore: cast_nullable_to_non_nullable
as Decimal,todayActivity: null == todayActivity ? _self.todayActivity : todayActivity // ignore: cast_nullable_to_non_nullable
as LibraryTodayActivity,
  ));
}
/// Create a copy of LibrarianDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryTodayActivityCopyWith<$Res> get todayActivity {
  
  return $LibraryTodayActivityCopyWith<$Res>(_self.todayActivity, (value) {
    return _then(_self.copyWith(todayActivity: value));
  });
}
}


/// Adds pattern-matching-related methods to [LibrarianDashboard].
extension LibrarianDashboardPatterns on LibrarianDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibrarianDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibrarianDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibrarianDashboard value)  $default,){
final _that = this;
switch (_that) {
case _LibrarianDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibrarianDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _LibrarianDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_books')  int totalBooks, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_books')  int availableBooks, @JsonKey(name: 'issued_books')  int issuedBooks, @JsonKey(name: 'overdue_books')  int overdueBooks, @JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingFines, @JsonKey(name: 'today_activity')  LibraryTodayActivity todayActivity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibrarianDashboard() when $default != null:
return $default(_that.totalBooks,_that.totalCopies,_that.availableBooks,_that.issuedBooks,_that.overdueBooks,_that.pendingFines,_that.todayActivity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_books')  int totalBooks, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_books')  int availableBooks, @JsonKey(name: 'issued_books')  int issuedBooks, @JsonKey(name: 'overdue_books')  int overdueBooks, @JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingFines, @JsonKey(name: 'today_activity')  LibraryTodayActivity todayActivity)  $default,) {final _that = this;
switch (_that) {
case _LibrarianDashboard():
return $default(_that.totalBooks,_that.totalCopies,_that.availableBooks,_that.issuedBooks,_that.overdueBooks,_that.pendingFines,_that.todayActivity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_books')  int totalBooks, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_books')  int availableBooks, @JsonKey(name: 'issued_books')  int issuedBooks, @JsonKey(name: 'overdue_books')  int overdueBooks, @JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingFines, @JsonKey(name: 'today_activity')  LibraryTodayActivity todayActivity)?  $default,) {final _that = this;
switch (_that) {
case _LibrarianDashboard() when $default != null:
return $default(_that.totalBooks,_that.totalCopies,_that.availableBooks,_that.issuedBooks,_that.overdueBooks,_that.pendingFines,_that.todayActivity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibrarianDashboard implements LibrarianDashboard {
  const _LibrarianDashboard({@JsonKey(name: 'total_books') this.totalBooks = 0, @JsonKey(name: 'total_copies') this.totalCopies = 0, @JsonKey(name: 'available_books') this.availableBooks = 0, @JsonKey(name: 'issued_books') this.issuedBooks = 0, @JsonKey(name: 'overdue_books') this.overdueBooks = 0, @JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson) required this.pendingFines, @JsonKey(name: 'today_activity') this.todayActivity = const LibraryTodayActivity()});
  factory _LibrarianDashboard.fromJson(Map<String, dynamic> json) => _$LibrarianDashboardFromJson(json);

@override@JsonKey(name: 'total_books') final  int totalBooks;
@override@JsonKey(name: 'total_copies') final  int totalCopies;
@override@JsonKey(name: 'available_books') final  int availableBooks;
@override@JsonKey(name: 'issued_books') final  int issuedBooks;
@override@JsonKey(name: 'overdue_books') final  int overdueBooks;
@override@JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal pendingFines;
@override@JsonKey(name: 'today_activity') final  LibraryTodayActivity todayActivity;

/// Create a copy of LibrarianDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibrarianDashboardCopyWith<_LibrarianDashboard> get copyWith => __$LibrarianDashboardCopyWithImpl<_LibrarianDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibrarianDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibrarianDashboard&&(identical(other.totalBooks, totalBooks) || other.totalBooks == totalBooks)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.availableBooks, availableBooks) || other.availableBooks == availableBooks)&&(identical(other.issuedBooks, issuedBooks) || other.issuedBooks == issuedBooks)&&(identical(other.overdueBooks, overdueBooks) || other.overdueBooks == overdueBooks)&&(identical(other.pendingFines, pendingFines) || other.pendingFines == pendingFines)&&(identical(other.todayActivity, todayActivity) || other.todayActivity == todayActivity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalBooks,totalCopies,availableBooks,issuedBooks,overdueBooks,pendingFines,todayActivity);
}

@override
String toString() {
    return 'LibrarianDashboard(totalBooks: $totalBooks, totalCopies: $totalCopies, availableBooks: $availableBooks, issuedBooks: $issuedBooks, overdueBooks: $overdueBooks, pendingFines: $pendingFines, todayActivity: $todayActivity)';
}


}

/// @nodoc
abstract mixin class _$LibrarianDashboardCopyWith<$Res> implements $LibrarianDashboardCopyWith<$Res> {
  factory _$LibrarianDashboardCopyWith(_LibrarianDashboard value, $Res Function(_LibrarianDashboard) _then) = __$LibrarianDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_books') int totalBooks,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_books') int availableBooks,@JsonKey(name: 'issued_books') int issuedBooks,@JsonKey(name: 'overdue_books') int overdueBooks,@JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson) Decimal pendingFines,@JsonKey(name: 'today_activity') LibraryTodayActivity todayActivity
});


@override $LibraryTodayActivityCopyWith<$Res> get todayActivity;

}
/// @nodoc
class __$LibrarianDashboardCopyWithImpl<$Res>
    implements _$LibrarianDashboardCopyWith<$Res> {
  __$LibrarianDashboardCopyWithImpl(this._self, this._then);

  final _LibrarianDashboard _self;
  final $Res Function(_LibrarianDashboard) _then;

/// Create a copy of LibrarianDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalBooks = null,Object? totalCopies = null,Object? availableBooks = null,Object? issuedBooks = null,Object? overdueBooks = null,Object? pendingFines = null,Object? todayActivity = null,}) {
  return _then(_LibrarianDashboard(
totalBooks: null == totalBooks ? _self.totalBooks : totalBooks // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableBooks: null == availableBooks ? _self.availableBooks : availableBooks // ignore: cast_nullable_to_non_nullable
as int,issuedBooks: null == issuedBooks ? _self.issuedBooks : issuedBooks // ignore: cast_nullable_to_non_nullable
as int,overdueBooks: null == overdueBooks ? _self.overdueBooks : overdueBooks // ignore: cast_nullable_to_non_nullable
as int,pendingFines: null == pendingFines ? _self.pendingFines : pendingFines // ignore: cast_nullable_to_non_nullable
as Decimal,todayActivity: null == todayActivity ? _self.todayActivity : todayActivity // ignore: cast_nullable_to_non_nullable
as LibraryTodayActivity,
  ));
}

/// Create a copy of LibrarianDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryTodayActivityCopyWith<$Res> get todayActivity {
  
  return $LibraryTodayActivityCopyWith<$Res>(_self.todayActivity, (value) {
    return _then(_self.copyWith(todayActivity: value));
  });
}
}


/// @nodoc
mixin _$LibraryTodayActivity {

 int get issued; int get returned;
/// Create a copy of LibraryTodayActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryTodayActivityCopyWith<LibraryTodayActivity> get copyWith => _$LibraryTodayActivityCopyWithImpl<LibraryTodayActivity>(this as LibraryTodayActivity, _$identity);

  /// Serializes this LibraryTodayActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryTodayActivity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryTodayActivity&&(identical(other.issued, _this.issued) || other.issued == _this.issued)&&(identical(other.returned, _this.returned) || other.returned == _this.returned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryTodayActivity;
  return Object.hash(runtimeType,_this.issued,_this.returned);
}

@override
String toString() {
  final _this = this as LibraryTodayActivity;
  return 'LibraryTodayActivity(issued: ${_this.issued}, returned: ${_this.returned})';
}


}

/// @nodoc
abstract mixin class $LibraryTodayActivityCopyWith<$Res>  {
  factory $LibraryTodayActivityCopyWith(LibraryTodayActivity value, $Res Function(LibraryTodayActivity) _then) = _$LibraryTodayActivityCopyWithImpl;
@useResult
$Res call({
 int issued, int returned
});




}
/// @nodoc
class _$LibraryTodayActivityCopyWithImpl<$Res>
    implements $LibraryTodayActivityCopyWith<$Res> {
  _$LibraryTodayActivityCopyWithImpl(this._self, this._then);

  final LibraryTodayActivity _self;
  final $Res Function(LibraryTodayActivity) _then;

/// Create a copy of LibraryTodayActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issued = null,Object? returned = null,}) {
  return _then(LibraryTodayActivity(
issued: null == issued ? _self.issued : issued // ignore: cast_nullable_to_non_nullable
as int,returned: null == returned ? _self.returned : returned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryTodayActivity].
extension LibraryTodayActivityPatterns on LibraryTodayActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryTodayActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryTodayActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryTodayActivity value)  $default,){
final _that = this;
switch (_that) {
case _LibraryTodayActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryTodayActivity value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryTodayActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int issued,  int returned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryTodayActivity() when $default != null:
return $default(_that.issued,_that.returned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int issued,  int returned)  $default,) {final _that = this;
switch (_that) {
case _LibraryTodayActivity():
return $default(_that.issued,_that.returned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int issued,  int returned)?  $default,) {final _that = this;
switch (_that) {
case _LibraryTodayActivity() when $default != null:
return $default(_that.issued,_that.returned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryTodayActivity implements LibraryTodayActivity {
  const _LibraryTodayActivity({this.issued = 0, this.returned = 0});
  factory _LibraryTodayActivity.fromJson(Map<String, dynamic> json) => _$LibraryTodayActivityFromJson(json);

@override@JsonKey() final  int issued;
@override@JsonKey() final  int returned;

/// Create a copy of LibraryTodayActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryTodayActivityCopyWith<_LibraryTodayActivity> get copyWith => __$LibraryTodayActivityCopyWithImpl<_LibraryTodayActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryTodayActivityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryTodayActivity&&(identical(other.issued, issued) || other.issued == issued)&&(identical(other.returned, returned) || other.returned == returned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,issued,returned);
}

@override
String toString() {
    return 'LibraryTodayActivity(issued: $issued, returned: $returned)';
}


}

/// @nodoc
abstract mixin class _$LibraryTodayActivityCopyWith<$Res> implements $LibraryTodayActivityCopyWith<$Res> {
  factory _$LibraryTodayActivityCopyWith(_LibraryTodayActivity value, $Res Function(_LibraryTodayActivity) _then) = __$LibraryTodayActivityCopyWithImpl;
@override @useResult
$Res call({
 int issued, int returned
});




}
/// @nodoc
class __$LibraryTodayActivityCopyWithImpl<$Res>
    implements _$LibraryTodayActivityCopyWith<$Res> {
  __$LibraryTodayActivityCopyWithImpl(this._self, this._then);

  final _LibraryTodayActivity _self;
  final $Res Function(_LibraryTodayActivity) _then;

/// Create a copy of LibraryTodayActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issued = null,Object? returned = null,}) {
  return _then(_LibraryTodayActivity(
issued: null == issued ? _self.issued : issued // ignore: cast_nullable_to_non_nullable
as int,returned: null == returned ? _self.returned : returned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LibraryStudentHit {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no') String? get rollNo;@JsonKey(name: 'current_class') LibraryClassRef? get currentClass;@JsonKey(name: 'current_section') LibrarySectionRef? get currentSection; LibraryApplicantRef? get applicants;
/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryStudentHitCopyWith<LibraryStudentHit> get copyWith => _$LibraryStudentHitCopyWithImpl<LibraryStudentHit>(this as LibraryStudentHit, _$identity);

  /// Serializes this LibraryStudentHit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryStudentHit;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryStudentHit&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection)&&(identical(other.applicants, _this.applicants) || other.applicants == _this.applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryStudentHit;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.currentClass,_this.currentSection,_this.applicants);
}

@override
String toString() {
  final _this = this as LibraryStudentHit;
  return 'LibraryStudentHit(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection}, applicants: ${_this.applicants})';
}


}

/// @nodoc
abstract mixin class $LibraryStudentHitCopyWith<$Res>  {
  factory $LibraryStudentHitCopyWith(LibraryStudentHit value, $Res Function(LibraryStudentHit) _then) = _$LibraryStudentHitCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no') String? rollNo,@JsonKey(name: 'current_class') LibraryClassRef? currentClass,@JsonKey(name: 'current_section') LibrarySectionRef? currentSection, LibraryApplicantRef? applicants
});


$LibraryClassRefCopyWith<$Res>? get currentClass;$LibrarySectionRefCopyWith<$Res>? get currentSection;$LibraryApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class _$LibraryStudentHitCopyWithImpl<$Res>
    implements $LibraryStudentHitCopyWith<$Res> {
  _$LibraryStudentHitCopyWithImpl(this._self, this._then);

  final LibraryStudentHit _self;
  final $Res Function(LibraryStudentHit) _then;

/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicants = freezed,}) {
  return _then(LibraryStudentHit(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as LibraryClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as LibrarySectionRef?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as LibraryApplicantRef?,
  ));
}
/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryClassRefCopyWith<$Res>? get currentClass {
    if (_self.currentClass == null) {
    return null;
  }

  return $LibraryClassRefCopyWith<$Res>(_self.currentClass!, (value) {
    return _then(_self.copyWith(currentClass: value));
  });
}/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibrarySectionRefCopyWith<$Res>? get currentSection {
    if (_self.currentSection == null) {
    return null;
  }

  return $LibrarySectionRefCopyWith<$Res>(_self.currentSection!, (value) {
    return _then(_self.copyWith(currentSection: value));
  });
}/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $LibraryApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// Adds pattern-matching-related methods to [LibraryStudentHit].
extension LibraryStudentHitPatterns on LibraryStudentHit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryStudentHit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryStudentHit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryStudentHit value)  $default,){
final _that = this;
switch (_that) {
case _LibraryStudentHit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryStudentHit value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryStudentHit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'current_class')  LibraryClassRef? currentClass, @JsonKey(name: 'current_section')  LibrarySectionRef? currentSection,  LibraryApplicantRef? applicants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryStudentHit() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.currentClass,_that.currentSection,_that.applicants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'current_class')  LibraryClassRef? currentClass, @JsonKey(name: 'current_section')  LibrarySectionRef? currentSection,  LibraryApplicantRef? applicants)  $default,) {final _that = this;
switch (_that) {
case _LibraryStudentHit():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.currentClass,_that.currentSection,_that.applicants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'current_class')  LibraryClassRef? currentClass, @JsonKey(name: 'current_section')  LibrarySectionRef? currentSection,  LibraryApplicantRef? applicants)?  $default,) {final _that = this;
switch (_that) {
case _LibraryStudentHit() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.currentClass,_that.currentSection,_that.applicants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryStudentHit implements LibraryStudentHit {
  const _LibraryStudentHit({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no') this.rollNo, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection, this.applicants});
  factory _LibraryStudentHit.fromJson(Map<String, dynamic> json) => _$LibraryStudentHitFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no') final  String? rollNo;
@override@JsonKey(name: 'current_class') final  LibraryClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  LibrarySectionRef? currentSection;
@override final  LibraryApplicantRef? applicants;

/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryStudentHitCopyWith<_LibraryStudentHit> get copyWith => __$LibraryStudentHitCopyWithImpl<_LibraryStudentHit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryStudentHitToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryStudentHit&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection)&&(identical(other.applicants, applicants) || other.applicants == applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,currentClass,currentSection,applicants);
}

@override
String toString() {
    return 'LibraryStudentHit(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, currentClass: $currentClass, currentSection: $currentSection, applicants: $applicants)';
}


}

/// @nodoc
abstract mixin class _$LibraryStudentHitCopyWith<$Res> implements $LibraryStudentHitCopyWith<$Res> {
  factory _$LibraryStudentHitCopyWith(_LibraryStudentHit value, $Res Function(_LibraryStudentHit) _then) = __$LibraryStudentHitCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no') String? rollNo,@JsonKey(name: 'current_class') LibraryClassRef? currentClass,@JsonKey(name: 'current_section') LibrarySectionRef? currentSection, LibraryApplicantRef? applicants
});


@override $LibraryClassRefCopyWith<$Res>? get currentClass;@override $LibrarySectionRefCopyWith<$Res>? get currentSection;@override $LibraryApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class __$LibraryStudentHitCopyWithImpl<$Res>
    implements _$LibraryStudentHitCopyWith<$Res> {
  __$LibraryStudentHitCopyWithImpl(this._self, this._then);

  final _LibraryStudentHit _self;
  final $Res Function(_LibraryStudentHit) _then;

/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? applicants = freezed,}) {
  return _then(_LibraryStudentHit(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as LibraryClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as LibrarySectionRef?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as LibraryApplicantRef?,
  ));
}

/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryClassRefCopyWith<$Res>? get currentClass {
    if (_self.currentClass == null) {
    return null;
  }

  return $LibraryClassRefCopyWith<$Res>(_self.currentClass!, (value) {
    return _then(_self.copyWith(currentClass: value));
  });
}/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibrarySectionRefCopyWith<$Res>? get currentSection {
    if (_self.currentSection == null) {
    return null;
  }

  return $LibrarySectionRefCopyWith<$Res>(_self.currentSection!, (value) {
    return _then(_self.copyWith(currentSection: value));
  });
}/// Create a copy of LibraryStudentHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LibraryApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $LibraryApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// @nodoc
mixin _$LibraryClassRef {

@JsonKey(name: 'class_name') String? get className;
/// Create a copy of LibraryClassRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryClassRefCopyWith<LibraryClassRef> get copyWith => _$LibraryClassRefCopyWithImpl<LibraryClassRef>(this as LibraryClassRef, _$identity);

  /// Serializes this LibraryClassRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibraryClassRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryClassRef&&(identical(other.className, _this.className) || other.className == _this.className));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryClassRef;
  return Object.hash(runtimeType,_this.className);
}

@override
String toString() {
  final _this = this as LibraryClassRef;
  return 'LibraryClassRef(className: ${_this.className})';
}


}

/// @nodoc
abstract mixin class $LibraryClassRefCopyWith<$Res>  {
  factory $LibraryClassRefCopyWith(LibraryClassRef value, $Res Function(LibraryClassRef) _then) = _$LibraryClassRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_name') String? className
});




}
/// @nodoc
class _$LibraryClassRefCopyWithImpl<$Res>
    implements $LibraryClassRefCopyWith<$Res> {
  _$LibraryClassRefCopyWithImpl(this._self, this._then);

  final LibraryClassRef _self;
  final $Res Function(LibraryClassRef) _then;

/// Create a copy of LibraryClassRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? className = freezed,}) {
  return _then(LibraryClassRef(
className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryClassRef].
extension LibraryClassRefPatterns on LibraryClassRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryClassRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryClassRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryClassRef value)  $default,){
final _that = this;
switch (_that) {
case _LibraryClassRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryClassRef value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryClassRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_name')  String? className)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryClassRef() when $default != null:
return $default(_that.className);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_name')  String? className)  $default,) {final _that = this;
switch (_that) {
case _LibraryClassRef():
return $default(_that.className);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_name')  String? className)?  $default,) {final _that = this;
switch (_that) {
case _LibraryClassRef() when $default != null:
return $default(_that.className);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryClassRef implements LibraryClassRef {
  const _LibraryClassRef({@JsonKey(name: 'class_name') this.className});
  factory _LibraryClassRef.fromJson(Map<String, dynamic> json) => _$LibraryClassRefFromJson(json);

@override@JsonKey(name: 'class_name') final  String? className;

/// Create a copy of LibraryClassRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryClassRefCopyWith<_LibraryClassRef> get copyWith => __$LibraryClassRefCopyWithImpl<_LibraryClassRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryClassRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryClassRef&&(identical(other.className, className) || other.className == className));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,className);
}

@override
String toString() {
    return 'LibraryClassRef(className: $className)';
}


}

/// @nodoc
abstract mixin class _$LibraryClassRefCopyWith<$Res> implements $LibraryClassRefCopyWith<$Res> {
  factory _$LibraryClassRefCopyWith(_LibraryClassRef value, $Res Function(_LibraryClassRef) _then) = __$LibraryClassRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_name') String? className
});




}
/// @nodoc
class __$LibraryClassRefCopyWithImpl<$Res>
    implements _$LibraryClassRefCopyWith<$Res> {
  __$LibraryClassRefCopyWithImpl(this._self, this._then);

  final _LibraryClassRef _self;
  final $Res Function(_LibraryClassRef) _then;

/// Create a copy of LibraryClassRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? className = freezed,}) {
  return _then(_LibraryClassRef(
className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibrarySectionRef {

@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of LibrarySectionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibrarySectionRefCopyWith<LibrarySectionRef> get copyWith => _$LibrarySectionRefCopyWithImpl<LibrarySectionRef>(this as LibrarySectionRef, _$identity);

  /// Serializes this LibrarySectionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LibrarySectionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibrarySectionRef&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibrarySectionRef;
  return Object.hash(runtimeType,_this.sectionName);
}

@override
String toString() {
  final _this = this as LibrarySectionRef;
  return 'LibrarySectionRef(sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $LibrarySectionRefCopyWith<$Res>  {
  factory $LibrarySectionRefCopyWith(LibrarySectionRef value, $Res Function(LibrarySectionRef) _then) = _$LibrarySectionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$LibrarySectionRefCopyWithImpl<$Res>
    implements $LibrarySectionRefCopyWith<$Res> {
  _$LibrarySectionRefCopyWithImpl(this._self, this._then);

  final LibrarySectionRef _self;
  final $Res Function(LibrarySectionRef) _then;

/// Create a copy of LibrarySectionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sectionName = freezed,}) {
  return _then(LibrarySectionRef(
sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibrarySectionRef].
extension LibrarySectionRefPatterns on LibrarySectionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibrarySectionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibrarySectionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibrarySectionRef value)  $default,){
final _that = this;
switch (_that) {
case _LibrarySectionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibrarySectionRef value)?  $default,){
final _that = this;
switch (_that) {
case _LibrarySectionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibrarySectionRef() when $default != null:
return $default(_that.sectionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _LibrarySectionRef():
return $default(_that.sectionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _LibrarySectionRef() when $default != null:
return $default(_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibrarySectionRef implements LibrarySectionRef {
  const _LibrarySectionRef({@JsonKey(name: 'section_name') this.sectionName});
  factory _LibrarySectionRef.fromJson(Map<String, dynamic> json) => _$LibrarySectionRefFromJson(json);

@override@JsonKey(name: 'section_name') final  String? sectionName;

/// Create a copy of LibrarySectionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibrarySectionRefCopyWith<_LibrarySectionRef> get copyWith => __$LibrarySectionRefCopyWithImpl<_LibrarySectionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibrarySectionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibrarySectionRef&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sectionName);
}

@override
String toString() {
    return 'LibrarySectionRef(sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$LibrarySectionRefCopyWith<$Res> implements $LibrarySectionRefCopyWith<$Res> {
  factory _$LibrarySectionRefCopyWith(_LibrarySectionRef value, $Res Function(_LibrarySectionRef) _then) = __$LibrarySectionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$LibrarySectionRefCopyWithImpl<$Res>
    implements _$LibrarySectionRefCopyWith<$Res> {
  __$LibrarySectionRefCopyWithImpl(this._self, this._then);

  final _LibrarySectionRef _self;
  final $Res Function(_LibrarySectionRef) _then;

/// Create a copy of LibrarySectionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sectionName = freezed,}) {
  return _then(_LibrarySectionRef(
sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryFineSettings {

@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get ratePerDay;@JsonKey(name: 'grace_period_days') int get gracePeriodDays;@JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? get maxFinePerBook;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryFineSettings&&(identical(other.ratePerDay, _this.ratePerDay) || other.ratePerDay == _this.ratePerDay)&&(identical(other.gracePeriodDays, _this.gracePeriodDays) || other.gracePeriodDays == _this.gracePeriodDays)&&(identical(other.maxFinePerBook, _this.maxFinePerBook) || other.maxFinePerBook == _this.maxFinePerBook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LibraryFineSettings;
  return Object.hash(runtimeType,_this.ratePerDay,_this.gracePeriodDays,_this.maxFinePerBook);
}

@override
String toString() {
  final _this = this as LibraryFineSettings;
  return 'LibraryFineSettings(ratePerDay: ${_this.ratePerDay}, gracePeriodDays: ${_this.gracePeriodDays}, maxFinePerBook: ${_this.maxFinePerBook})';
}


}

/// @nodoc
abstract mixin class $LibraryFineSettingsCopyWith<$Res>  {
  factory $LibraryFineSettingsCopyWith(LibraryFineSettings value, $Res Function(LibraryFineSettings) _then) = _$LibraryFineSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) Decimal ratePerDay,@JsonKey(name: 'grace_period_days') int gracePeriodDays,@JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? maxFinePerBook
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
@pragma('vm:prefer-inline') @override $Res call({Object? ratePerDay = null,Object? gracePeriodDays = null,Object? maxFinePerBook = freezed,}) {
  return _then(LibraryFineSettings(
ratePerDay: null == ratePerDay ? _self.ratePerDay : ratePerDay // ignore: cast_nullable_to_non_nullable
as Decimal,gracePeriodDays: null == gracePeriodDays ? _self.gracePeriodDays : gracePeriodDays // ignore: cast_nullable_to_non_nullable
as int,maxFinePerBook: freezed == maxFinePerBook ? _self.maxFinePerBook : maxFinePerBook // ignore: cast_nullable_to_non_nullable
as Decimal?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? maxFinePerBook)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryFineSettings() when $default != null:
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerBook);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? maxFinePerBook)  $default,) {final _that = this;
switch (_that) {
case _LibraryFineSettings():
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerBook);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? maxFinePerBook)?  $default,) {final _that = this;
switch (_that) {
case _LibraryFineSettings() when $default != null:
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerBook);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryFineSettings implements LibraryFineSettings {
  const _LibraryFineSettings({@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) required this.ratePerDay, @JsonKey(name: 'grace_period_days') this.gracePeriodDays = 0, @JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) this.maxFinePerBook});
  factory _LibraryFineSettings.fromJson(Map<String, dynamic> json) => _$LibraryFineSettingsFromJson(json);

@override@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal ratePerDay;
@override@JsonKey(name: 'grace_period_days') final  int gracePeriodDays;
@override@JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) final  Decimal? maxFinePerBook;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryFineSettings&&(identical(other.ratePerDay, ratePerDay) || other.ratePerDay == ratePerDay)&&(identical(other.gracePeriodDays, gracePeriodDays) || other.gracePeriodDays == gracePeriodDays)&&(identical(other.maxFinePerBook, maxFinePerBook) || other.maxFinePerBook == maxFinePerBook));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ratePerDay,gracePeriodDays,maxFinePerBook);
}

@override
String toString() {
    return 'LibraryFineSettings(ratePerDay: $ratePerDay, gracePeriodDays: $gracePeriodDays, maxFinePerBook: $maxFinePerBook)';
}


}

/// @nodoc
abstract mixin class _$LibraryFineSettingsCopyWith<$Res> implements $LibraryFineSettingsCopyWith<$Res> {
  factory _$LibraryFineSettingsCopyWith(_LibraryFineSettings value, $Res Function(_LibraryFineSettings) _then) = __$LibraryFineSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) Decimal ratePerDay,@JsonKey(name: 'grace_period_days') int gracePeriodDays,@JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? maxFinePerBook
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
@override @pragma('vm:prefer-inline') $Res call({Object? ratePerDay = null,Object? gracePeriodDays = null,Object? maxFinePerBook = freezed,}) {
  return _then(_LibraryFineSettings(
ratePerDay: null == ratePerDay ? _self.ratePerDay : ratePerDay // ignore: cast_nullable_to_non_nullable
as Decimal,gracePeriodDays: null == gracePeriodDays ? _self.gracePeriodDays : gracePeriodDays // ignore: cast_nullable_to_non_nullable
as int,maxFinePerBook: freezed == maxFinePerBook ? _self.maxFinePerBook : maxFinePerBook // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}


}


/// @nodoc
mixin _$InventoryReport {

@JsonKey(name: 'total_titles') int get totalTitles;@JsonKey(name: 'total_copies') int get totalCopies;@JsonKey(name: 'available_copies') int get availableCopies;@JsonKey(name: 'by_category') List<InventoryCategoryRow> get byCategory;
/// Create a copy of InventoryReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryReportCopyWith<InventoryReport> get copyWith => _$InventoryReportCopyWithImpl<InventoryReport>(this as InventoryReport, _$identity);

  /// Serializes this InventoryReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InventoryReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryReport&&(identical(other.totalTitles, _this.totalTitles) || other.totalTitles == _this.totalTitles)&&(identical(other.totalCopies, _this.totalCopies) || other.totalCopies == _this.totalCopies)&&(identical(other.availableCopies, _this.availableCopies) || other.availableCopies == _this.availableCopies)&&const DeepCollectionEquality().equals(other.byCategory, _this.byCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InventoryReport;
  return Object.hash(runtimeType,_this.totalTitles,_this.totalCopies,_this.availableCopies,const DeepCollectionEquality().hash(_this.byCategory));
}

@override
String toString() {
  final _this = this as InventoryReport;
  return 'InventoryReport(totalTitles: ${_this.totalTitles}, totalCopies: ${_this.totalCopies}, availableCopies: ${_this.availableCopies}, byCategory: ${_this.byCategory})';
}


}

/// @nodoc
abstract mixin class $InventoryReportCopyWith<$Res>  {
  factory $InventoryReportCopyWith(InventoryReport value, $Res Function(InventoryReport) _then) = _$InventoryReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_titles') int totalTitles,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies,@JsonKey(name: 'by_category') List<InventoryCategoryRow> byCategory
});




}
/// @nodoc
class _$InventoryReportCopyWithImpl<$Res>
    implements $InventoryReportCopyWith<$Res> {
  _$InventoryReportCopyWithImpl(this._self, this._then);

  final InventoryReport _self;
  final $Res Function(InventoryReport) _then;

/// Create a copy of InventoryReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalTitles = null,Object? totalCopies = null,Object? availableCopies = null,Object? byCategory = null,}) {
  return _then(InventoryReport(
totalTitles: null == totalTitles ? _self.totalTitles : totalTitles // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,byCategory: null == byCategory ? _self.byCategory : byCategory // ignore: cast_nullable_to_non_nullable
as List<InventoryCategoryRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryReport].
extension InventoryReportPatterns on InventoryReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryReport value)  $default,){
final _that = this;
switch (_that) {
case _InventoryReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryReport value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_titles')  int totalTitles, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'by_category')  List<InventoryCategoryRow> byCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryReport() when $default != null:
return $default(_that.totalTitles,_that.totalCopies,_that.availableCopies,_that.byCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_titles')  int totalTitles, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'by_category')  List<InventoryCategoryRow> byCategory)  $default,) {final _that = this;
switch (_that) {
case _InventoryReport():
return $default(_that.totalTitles,_that.totalCopies,_that.availableCopies,_that.byCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_titles')  int totalTitles, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies, @JsonKey(name: 'by_category')  List<InventoryCategoryRow> byCategory)?  $default,) {final _that = this;
switch (_that) {
case _InventoryReport() when $default != null:
return $default(_that.totalTitles,_that.totalCopies,_that.availableCopies,_that.byCategory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryReport implements InventoryReport {
  const _InventoryReport({@JsonKey(name: 'total_titles') this.totalTitles = 0, @JsonKey(name: 'total_copies') this.totalCopies = 0, @JsonKey(name: 'available_copies') this.availableCopies = 0, @JsonKey(name: 'by_category')  List<InventoryCategoryRow> byCategory = const <InventoryCategoryRow>[]}): _byCategory = byCategory;
  factory _InventoryReport.fromJson(Map<String, dynamic> json) => _$InventoryReportFromJson(json);

@override@JsonKey(name: 'total_titles') final  int totalTitles;
@override@JsonKey(name: 'total_copies') final  int totalCopies;
@override@JsonKey(name: 'available_copies') final  int availableCopies;
 final  List<InventoryCategoryRow> _byCategory;
@override@JsonKey(name: 'by_category') List<InventoryCategoryRow> get byCategory {
  if (_byCategory is EqualUnmodifiableListView) return _byCategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byCategory);
}


/// Create a copy of InventoryReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryReportCopyWith<_InventoryReport> get copyWith => __$InventoryReportCopyWithImpl<_InventoryReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryReport&&(identical(other.totalTitles, totalTitles) || other.totalTitles == totalTitles)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.availableCopies, availableCopies) || other.availableCopies == availableCopies)&&const DeepCollectionEquality().equals(other.byCategory, _byCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalTitles,totalCopies,availableCopies,const DeepCollectionEquality().hash(_byCategory));
}

@override
String toString() {
    return 'InventoryReport(totalTitles: $totalTitles, totalCopies: $totalCopies, availableCopies: $availableCopies, byCategory: $byCategory)';
}


}

/// @nodoc
abstract mixin class _$InventoryReportCopyWith<$Res> implements $InventoryReportCopyWith<$Res> {
  factory _$InventoryReportCopyWith(_InventoryReport value, $Res Function(_InventoryReport) _then) = __$InventoryReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_titles') int totalTitles,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies,@JsonKey(name: 'by_category') List<InventoryCategoryRow> byCategory
});




}
/// @nodoc
class __$InventoryReportCopyWithImpl<$Res>
    implements _$InventoryReportCopyWith<$Res> {
  __$InventoryReportCopyWithImpl(this._self, this._then);

  final _InventoryReport _self;
  final $Res Function(_InventoryReport) _then;

/// Create a copy of InventoryReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalTitles = null,Object? totalCopies = null,Object? availableCopies = null,Object? byCategory = null,}) {
  return _then(_InventoryReport(
totalTitles: null == totalTitles ? _self.totalTitles : totalTitles // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,byCategory: null == byCategory ? _self._byCategory : byCategory // ignore: cast_nullable_to_non_nullable
as List<InventoryCategoryRow>,
  ));
}


}


/// @nodoc
mixin _$InventoryCategoryRow {

 String? get category; int get titles;@JsonKey(name: 'total_copies') int get totalCopies;@JsonKey(name: 'available_copies') int get availableCopies;
/// Create a copy of InventoryCategoryRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryCategoryRowCopyWith<InventoryCategoryRow> get copyWith => _$InventoryCategoryRowCopyWithImpl<InventoryCategoryRow>(this as InventoryCategoryRow, _$identity);

  /// Serializes this InventoryCategoryRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InventoryCategoryRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryCategoryRow&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.titles, _this.titles) || other.titles == _this.titles)&&(identical(other.totalCopies, _this.totalCopies) || other.totalCopies == _this.totalCopies)&&(identical(other.availableCopies, _this.availableCopies) || other.availableCopies == _this.availableCopies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InventoryCategoryRow;
  return Object.hash(runtimeType,_this.category,_this.titles,_this.totalCopies,_this.availableCopies);
}

@override
String toString() {
  final _this = this as InventoryCategoryRow;
  return 'InventoryCategoryRow(category: ${_this.category}, titles: ${_this.titles}, totalCopies: ${_this.totalCopies}, availableCopies: ${_this.availableCopies})';
}


}

/// @nodoc
abstract mixin class $InventoryCategoryRowCopyWith<$Res>  {
  factory $InventoryCategoryRowCopyWith(InventoryCategoryRow value, $Res Function(InventoryCategoryRow) _then) = _$InventoryCategoryRowCopyWithImpl;
@useResult
$Res call({
 String? category, int titles,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies
});




}
/// @nodoc
class _$InventoryCategoryRowCopyWithImpl<$Res>
    implements $InventoryCategoryRowCopyWith<$Res> {
  _$InventoryCategoryRowCopyWithImpl(this._self, this._then);

  final InventoryCategoryRow _self;
  final $Res Function(InventoryCategoryRow) _then;

/// Create a copy of InventoryCategoryRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? titles = null,Object? totalCopies = null,Object? availableCopies = null,}) {
  return _then(InventoryCategoryRow(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryCategoryRow].
extension InventoryCategoryRowPatterns on InventoryCategoryRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryCategoryRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryCategoryRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryCategoryRow value)  $default,){
final _that = this;
switch (_that) {
case _InventoryCategoryRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryCategoryRow value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryCategoryRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? category,  int titles, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryCategoryRow() when $default != null:
return $default(_that.category,_that.titles,_that.totalCopies,_that.availableCopies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? category,  int titles, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies)  $default,) {final _that = this;
switch (_that) {
case _InventoryCategoryRow():
return $default(_that.category,_that.titles,_that.totalCopies,_that.availableCopies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? category,  int titles, @JsonKey(name: 'total_copies')  int totalCopies, @JsonKey(name: 'available_copies')  int availableCopies)?  $default,) {final _that = this;
switch (_that) {
case _InventoryCategoryRow() when $default != null:
return $default(_that.category,_that.titles,_that.totalCopies,_that.availableCopies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryCategoryRow implements InventoryCategoryRow {
  const _InventoryCategoryRow({this.category, this.titles = 0, @JsonKey(name: 'total_copies') this.totalCopies = 0, @JsonKey(name: 'available_copies') this.availableCopies = 0});
  factory _InventoryCategoryRow.fromJson(Map<String, dynamic> json) => _$InventoryCategoryRowFromJson(json);

@override final  String? category;
@override@JsonKey() final  int titles;
@override@JsonKey(name: 'total_copies') final  int totalCopies;
@override@JsonKey(name: 'available_copies') final  int availableCopies;

/// Create a copy of InventoryCategoryRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryCategoryRowCopyWith<_InventoryCategoryRow> get copyWith => __$InventoryCategoryRowCopyWithImpl<_InventoryCategoryRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryCategoryRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryCategoryRow&&(identical(other.category, category) || other.category == category)&&(identical(other.titles, titles) || other.titles == titles)&&(identical(other.totalCopies, totalCopies) || other.totalCopies == totalCopies)&&(identical(other.availableCopies, availableCopies) || other.availableCopies == availableCopies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,category,titles,totalCopies,availableCopies);
}

@override
String toString() {
    return 'InventoryCategoryRow(category: $category, titles: $titles, totalCopies: $totalCopies, availableCopies: $availableCopies)';
}


}

/// @nodoc
abstract mixin class _$InventoryCategoryRowCopyWith<$Res> implements $InventoryCategoryRowCopyWith<$Res> {
  factory _$InventoryCategoryRowCopyWith(_InventoryCategoryRow value, $Res Function(_InventoryCategoryRow) _then) = __$InventoryCategoryRowCopyWithImpl;
@override @useResult
$Res call({
 String? category, int titles,@JsonKey(name: 'total_copies') int totalCopies,@JsonKey(name: 'available_copies') int availableCopies
});




}
/// @nodoc
class __$InventoryCategoryRowCopyWithImpl<$Res>
    implements _$InventoryCategoryRowCopyWith<$Res> {
  __$InventoryCategoryRowCopyWithImpl(this._self, this._then);

  final _InventoryCategoryRow _self;
  final $Res Function(_InventoryCategoryRow) _then;

/// Create a copy of InventoryCategoryRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? titles = null,Object? totalCopies = null,Object? availableCopies = null,}) {
  return _then(_InventoryCategoryRow(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as int,totalCopies: null == totalCopies ? _self.totalCopies : totalCopies // ignore: cast_nullable_to_non_nullable
as int,availableCopies: null == availableCopies ? _self.availableCopies : availableCopies // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OverdueReport {

 int get count;@JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalFine; List<BookIssue> get items;
/// Create a copy of OverdueReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverdueReportCopyWith<OverdueReport> get copyWith => _$OverdueReportCopyWithImpl<OverdueReport>(this as OverdueReport, _$identity);

  /// Serializes this OverdueReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OverdueReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverdueReport&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.totalFine, _this.totalFine) || other.totalFine == _this.totalFine)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OverdueReport;
  return Object.hash(runtimeType,_this.count,_this.totalFine,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as OverdueReport;
  return 'OverdueReport(count: ${_this.count}, totalFine: ${_this.totalFine}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $OverdueReportCopyWith<$Res>  {
  factory $OverdueReportCopyWith(OverdueReport value, $Res Function(OverdueReport) _then) = _$OverdueReportCopyWithImpl;
@useResult
$Res call({
 int count,@JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalFine, List<BookIssue> items
});




}
/// @nodoc
class _$OverdueReportCopyWithImpl<$Res>
    implements $OverdueReportCopyWith<$Res> {
  _$OverdueReportCopyWithImpl(this._self, this._then);

  final OverdueReport _self;
  final $Res Function(OverdueReport) _then;

/// Create a copy of OverdueReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? totalFine = null,Object? items = null,}) {
  return _then(OverdueReport(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalFine: null == totalFine ? _self.totalFine : totalFine // ignore: cast_nullable_to_non_nullable
as Decimal,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<BookIssue>,
  ));
}

}


/// Adds pattern-matching-related methods to [OverdueReport].
extension OverdueReportPatterns on OverdueReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverdueReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverdueReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverdueReport value)  $default,){
final _that = this;
switch (_that) {
case _OverdueReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverdueReport value)?  $default,){
final _that = this;
switch (_that) {
case _OverdueReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count, @JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalFine,  List<BookIssue> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverdueReport() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count, @JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalFine,  List<BookIssue> items)  $default,) {final _that = this;
switch (_that) {
case _OverdueReport():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count, @JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalFine,  List<BookIssue> items)?  $default,) {final _that = this;
switch (_that) {
case _OverdueReport() when $default != null:
return $default(_that.count,_that.totalFine,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverdueReport implements OverdueReport {
  const _OverdueReport({this.count = 0, @JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalFine,  List<BookIssue> items = const <BookIssue>[]}): _items = items;
  factory _OverdueReport.fromJson(Map<String, dynamic> json) => _$OverdueReportFromJson(json);

@override@JsonKey() final  int count;
@override@JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalFine;
 final  List<BookIssue> _items;
@override@JsonKey() List<BookIssue> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of OverdueReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverdueReportCopyWith<_OverdueReport> get copyWith => __$OverdueReportCopyWithImpl<_OverdueReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverdueReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverdueReport&&(identical(other.count, count) || other.count == count)&&(identical(other.totalFine, totalFine) || other.totalFine == totalFine)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,count,totalFine,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'OverdueReport(count: $count, totalFine: $totalFine, items: $items)';
}


}

/// @nodoc
abstract mixin class _$OverdueReportCopyWith<$Res> implements $OverdueReportCopyWith<$Res> {
  factory _$OverdueReportCopyWith(_OverdueReport value, $Res Function(_OverdueReport) _then) = __$OverdueReportCopyWithImpl;
@override @useResult
$Res call({
 int count,@JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalFine, List<BookIssue> items
});




}
/// @nodoc
class __$OverdueReportCopyWithImpl<$Res>
    implements _$OverdueReportCopyWith<$Res> {
  __$OverdueReportCopyWithImpl(this._self, this._then);

  final _OverdueReport _self;
  final $Res Function(_OverdueReport) _then;

/// Create a copy of OverdueReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? totalFine = null,Object? items = null,}) {
  return _then(_OverdueReport(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalFine: null == totalFine ? _self.totalFine : totalFine // ignore: cast_nullable_to_non_nullable
as Decimal,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<BookIssue>,
  ));
}


}


/// @nodoc
mixin _$FineCollectionReport {

 int get count;@JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCollected; List<FineRecord> get items;
/// Create a copy of FineCollectionReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FineCollectionReportCopyWith<FineCollectionReport> get copyWith => _$FineCollectionReportCopyWithImpl<FineCollectionReport>(this as FineCollectionReport, _$identity);

  /// Serializes this FineCollectionReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FineCollectionReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FineCollectionReport&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.totalCollected, _this.totalCollected) || other.totalCollected == _this.totalCollected)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FineCollectionReport;
  return Object.hash(runtimeType,_this.count,_this.totalCollected,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as FineCollectionReport;
  return 'FineCollectionReport(count: ${_this.count}, totalCollected: ${_this.totalCollected}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $FineCollectionReportCopyWith<$Res>  {
  factory $FineCollectionReportCopyWith(FineCollectionReport value, $Res Function(FineCollectionReport) _then) = _$FineCollectionReportCopyWithImpl;
@useResult
$Res call({
 int count,@JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCollected, List<FineRecord> items
});




}
/// @nodoc
class _$FineCollectionReportCopyWithImpl<$Res>
    implements $FineCollectionReportCopyWith<$Res> {
  _$FineCollectionReportCopyWithImpl(this._self, this._then);

  final FineCollectionReport _self;
  final $Res Function(FineCollectionReport) _then;

/// Create a copy of FineCollectionReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? totalCollected = null,Object? items = null,}) {
  return _then(FineCollectionReport(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalCollected: null == totalCollected ? _self.totalCollected : totalCollected // ignore: cast_nullable_to_non_nullable
as Decimal,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FineRecord>,
  ));
}

}


/// Adds pattern-matching-related methods to [FineCollectionReport].
extension FineCollectionReportPatterns on FineCollectionReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FineCollectionReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FineCollectionReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FineCollectionReport value)  $default,){
final _that = this;
switch (_that) {
case _FineCollectionReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FineCollectionReport value)?  $default,){
final _that = this;
switch (_that) {
case _FineCollectionReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count, @JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCollected,  List<FineRecord> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FineCollectionReport() when $default != null:
return $default(_that.count,_that.totalCollected,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count, @JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCollected,  List<FineRecord> items)  $default,) {final _that = this;
switch (_that) {
case _FineCollectionReport():
return $default(_that.count,_that.totalCollected,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count, @JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCollected,  List<FineRecord> items)?  $default,) {final _that = this;
switch (_that) {
case _FineCollectionReport() when $default != null:
return $default(_that.count,_that.totalCollected,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FineCollectionReport implements FineCollectionReport {
  const _FineCollectionReport({this.count = 0, @JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCollected,  List<FineRecord> items = const <FineRecord>[]}): _items = items;
  factory _FineCollectionReport.fromJson(Map<String, dynamic> json) => _$FineCollectionReportFromJson(json);

@override@JsonKey() final  int count;
@override@JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCollected;
 final  List<FineRecord> _items;
@override@JsonKey() List<FineRecord> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FineCollectionReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FineCollectionReportCopyWith<_FineCollectionReport> get copyWith => __$FineCollectionReportCopyWithImpl<_FineCollectionReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FineCollectionReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FineCollectionReport&&(identical(other.count, count) || other.count == count)&&(identical(other.totalCollected, totalCollected) || other.totalCollected == totalCollected)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,count,totalCollected,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'FineCollectionReport(count: $count, totalCollected: $totalCollected, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FineCollectionReportCopyWith<$Res> implements $FineCollectionReportCopyWith<$Res> {
  factory _$FineCollectionReportCopyWith(_FineCollectionReport value, $Res Function(_FineCollectionReport) _then) = __$FineCollectionReportCopyWithImpl;
@override @useResult
$Res call({
 int count,@JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCollected, List<FineRecord> items
});




}
/// @nodoc
class __$FineCollectionReportCopyWithImpl<$Res>
    implements _$FineCollectionReportCopyWith<$Res> {
  __$FineCollectionReportCopyWithImpl(this._self, this._then);

  final _FineCollectionReport _self;
  final $Res Function(_FineCollectionReport) _then;

/// Create a copy of FineCollectionReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? totalCollected = null,Object? items = null,}) {
  return _then(_FineCollectionReport(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalCollected: null == totalCollected ? _self.totalCollected : totalCollected // ignore: cast_nullable_to_non_nullable
as Decimal,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FineRecord>,
  ));
}


}

// dart format on
