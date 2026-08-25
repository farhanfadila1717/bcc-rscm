// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selfcheck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelftcheckSummary {

 String get selfCheckID; String get selfCheckDate; int get selfCheckItemCount;
/// Create a copy of SelftcheckSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelftcheckSummaryCopyWith<SelftcheckSummary> get copyWith => _$SelftcheckSummaryCopyWithImpl<SelftcheckSummary>(this as SelftcheckSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelftcheckSummary&&(identical(other.selfCheckID, selfCheckID) || other.selfCheckID == selfCheckID)&&(identical(other.selfCheckDate, selfCheckDate) || other.selfCheckDate == selfCheckDate)&&(identical(other.selfCheckItemCount, selfCheckItemCount) || other.selfCheckItemCount == selfCheckItemCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selfCheckID,selfCheckDate,selfCheckItemCount);

@override
String toString() {
  return 'SelftcheckSummary(selfCheckID: $selfCheckID, selfCheckDate: $selfCheckDate, selfCheckItemCount: $selfCheckItemCount)';
}


}

/// @nodoc
abstract mixin class $SelftcheckSummaryCopyWith<$Res>  {
  factory $SelftcheckSummaryCopyWith(SelftcheckSummary value, $Res Function(SelftcheckSummary) _then) = _$SelftcheckSummaryCopyWithImpl;
@useResult
$Res call({
 String selfCheckID, String selfCheckDate, int selfCheckItemCount
});




}
/// @nodoc
class _$SelftcheckSummaryCopyWithImpl<$Res>
    implements $SelftcheckSummaryCopyWith<$Res> {
  _$SelftcheckSummaryCopyWithImpl(this._self, this._then);

  final SelftcheckSummary _self;
  final $Res Function(SelftcheckSummary) _then;

/// Create a copy of SelftcheckSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selfCheckID = null,Object? selfCheckDate = null,Object? selfCheckItemCount = null,}) {
  return _then(SelftcheckSummary(
selfCheckID: null == selfCheckID ? _self.selfCheckID : selfCheckID // ignore: cast_nullable_to_non_nullable
as String,selfCheckDate: null == selfCheckDate ? _self.selfCheckDate : selfCheckDate // ignore: cast_nullable_to_non_nullable
as String,selfCheckItemCount: null == selfCheckItemCount ? _self.selfCheckItemCount : selfCheckItemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SelftcheckSummary].
extension SelftcheckSummaryPatterns on SelftcheckSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelftcheckSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelftcheckSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelftcheckSummary value)  $default,){
final _that = this;
switch (_that) {
case _SelftcheckSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelftcheckSummary value)?  $default,){
final _that = this;
switch (_that) {
case _SelftcheckSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selfCheckID,  String selfCheckDate,  int selfCheckItemCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelftcheckSummary() when $default != null:
return $default(_that.selfCheckID,_that.selfCheckDate,_that.selfCheckItemCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selfCheckID,  String selfCheckDate,  int selfCheckItemCount)  $default,) {final _that = this;
switch (_that) {
case _SelftcheckSummary():
return $default(_that.selfCheckID,_that.selfCheckDate,_that.selfCheckItemCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selfCheckID,  String selfCheckDate,  int selfCheckItemCount)?  $default,) {final _that = this;
switch (_that) {
case _SelftcheckSummary() when $default != null:
return $default(_that.selfCheckID,_that.selfCheckDate,_that.selfCheckItemCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _SelftcheckSummary extends SelftcheckSummary {
  const _SelftcheckSummary({required this.selfCheckID, required this.selfCheckDate, required this.selfCheckItemCount}): super._();
  factory _SelftcheckSummary.fromJson(Map<String, dynamic> json) => _$SelftcheckSummaryFromJson(json);

@override final  String selfCheckID;
@override final  String selfCheckDate;
@override final  int selfCheckItemCount;

/// Create a copy of SelftcheckSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelftcheckSummaryCopyWith<_SelftcheckSummary> get copyWith => __$SelftcheckSummaryCopyWithImpl<_SelftcheckSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelftcheckSummary&&(identical(other.selfCheckID, selfCheckID) || other.selfCheckID == selfCheckID)&&(identical(other.selfCheckDate, selfCheckDate) || other.selfCheckDate == selfCheckDate)&&(identical(other.selfCheckItemCount, selfCheckItemCount) || other.selfCheckItemCount == selfCheckItemCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selfCheckID,selfCheckDate,selfCheckItemCount);

@override
String toString() {
  return 'SelftcheckSummary(selfCheckID: $selfCheckID, selfCheckDate: $selfCheckDate, selfCheckItemCount: $selfCheckItemCount)';
}


}

/// @nodoc
abstract mixin class _$SelftcheckSummaryCopyWith<$Res> implements $SelftcheckSummaryCopyWith<$Res> {
  factory _$SelftcheckSummaryCopyWith(_SelftcheckSummary value, $Res Function(_SelftcheckSummary) _then) = __$SelftcheckSummaryCopyWithImpl;
@override @useResult
$Res call({
 String selfCheckID, String selfCheckDate, int selfCheckItemCount
});




}
/// @nodoc
class __$SelftcheckSummaryCopyWithImpl<$Res>
    implements _$SelftcheckSummaryCopyWith<$Res> {
  __$SelftcheckSummaryCopyWithImpl(this._self, this._then);

  final _SelftcheckSummary _self;
  final $Res Function(_SelftcheckSummary) _then;

/// Create a copy of SelftcheckSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selfCheckID = null,Object? selfCheckDate = null,Object? selfCheckItemCount = null,}) {
  return _then(_SelftcheckSummary(
selfCheckID: null == selfCheckID ? _self.selfCheckID : selfCheckID // ignore: cast_nullable_to_non_nullable
as String,selfCheckDate: null == selfCheckDate ? _self.selfCheckDate : selfCheckDate // ignore: cast_nullable_to_non_nullable
as String,selfCheckItemCount: null == selfCheckItemCount ? _self.selfCheckItemCount : selfCheckItemCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SelftcheckSummaryList {

 List<SelftcheckSummary> get selfCheckSummaryList;
/// Create a copy of SelftcheckSummaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelftcheckSummaryListCopyWith<SelftcheckSummaryList> get copyWith => _$SelftcheckSummaryListCopyWithImpl<SelftcheckSummaryList>(this as SelftcheckSummaryList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelftcheckSummaryList&&const DeepCollectionEquality().equals(other.selfCheckSummaryList, selfCheckSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selfCheckSummaryList));

@override
String toString() {
  return 'SelftcheckSummaryList(selfCheckSummaryList: $selfCheckSummaryList)';
}


}

/// @nodoc
abstract mixin class $SelftcheckSummaryListCopyWith<$Res>  {
  factory $SelftcheckSummaryListCopyWith(SelftcheckSummaryList value, $Res Function(SelftcheckSummaryList) _then) = _$SelftcheckSummaryListCopyWithImpl;
@useResult
$Res call({
 List<SelftcheckSummary> selfCheckSummaryList
});




}
/// @nodoc
class _$SelftcheckSummaryListCopyWithImpl<$Res>
    implements $SelftcheckSummaryListCopyWith<$Res> {
  _$SelftcheckSummaryListCopyWithImpl(this._self, this._then);

  final SelftcheckSummaryList _self;
  final $Res Function(SelftcheckSummaryList) _then;

/// Create a copy of SelftcheckSummaryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selfCheckSummaryList = null,}) {
  return _then(SelftcheckSummaryList(
selfCheckSummaryList: null == selfCheckSummaryList ? _self.selfCheckSummaryList : selfCheckSummaryList // ignore: cast_nullable_to_non_nullable
as List<SelftcheckSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [SelftcheckSummaryList].
extension SelftcheckSummaryListPatterns on SelftcheckSummaryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelftcheckSummaryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelftcheckSummaryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelftcheckSummaryList value)  $default,){
final _that = this;
switch (_that) {
case _SelftcheckSummaryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelftcheckSummaryList value)?  $default,){
final _that = this;
switch (_that) {
case _SelftcheckSummaryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SelftcheckSummary> selfCheckSummaryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelftcheckSummaryList() when $default != null:
return $default(_that.selfCheckSummaryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SelftcheckSummary> selfCheckSummaryList)  $default,) {final _that = this;
switch (_that) {
case _SelftcheckSummaryList():
return $default(_that.selfCheckSummaryList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SelftcheckSummary> selfCheckSummaryList)?  $default,) {final _that = this;
switch (_that) {
case _SelftcheckSummaryList() when $default != null:
return $default(_that.selfCheckSummaryList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _SelftcheckSummaryList extends SelftcheckSummaryList {
  const _SelftcheckSummaryList({required  List<SelftcheckSummary> selfCheckSummaryList}): _selfCheckSummaryList = selfCheckSummaryList,super._();
  factory _SelftcheckSummaryList.fromJson(Map<String, dynamic> json) => _$SelftcheckSummaryListFromJson(json);

 final  List<SelftcheckSummary> _selfCheckSummaryList;
@override List<SelftcheckSummary> get selfCheckSummaryList {
  if (_selfCheckSummaryList is EqualUnmodifiableListView) return _selfCheckSummaryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selfCheckSummaryList);
}


/// Create a copy of SelftcheckSummaryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelftcheckSummaryListCopyWith<_SelftcheckSummaryList> get copyWith => __$SelftcheckSummaryListCopyWithImpl<_SelftcheckSummaryList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelftcheckSummaryList&&const DeepCollectionEquality().equals(other._selfCheckSummaryList, _selfCheckSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selfCheckSummaryList));

@override
String toString() {
  return 'SelftcheckSummaryList(selfCheckSummaryList: $selfCheckSummaryList)';
}


}

/// @nodoc
abstract mixin class _$SelftcheckSummaryListCopyWith<$Res> implements $SelftcheckSummaryListCopyWith<$Res> {
  factory _$SelftcheckSummaryListCopyWith(_SelftcheckSummaryList value, $Res Function(_SelftcheckSummaryList) _then) = __$SelftcheckSummaryListCopyWithImpl;
@override @useResult
$Res call({
 List<SelftcheckSummary> selfCheckSummaryList
});




}
/// @nodoc
class __$SelftcheckSummaryListCopyWithImpl<$Res>
    implements _$SelftcheckSummaryListCopyWith<$Res> {
  __$SelftcheckSummaryListCopyWithImpl(this._self, this._then);

  final _SelftcheckSummaryList _self;
  final $Res Function(_SelftcheckSummaryList) _then;

/// Create a copy of SelftcheckSummaryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selfCheckSummaryList = null,}) {
  return _then(_SelftcheckSummaryList(
selfCheckSummaryList: null == selfCheckSummaryList ? _self._selfCheckSummaryList : selfCheckSummaryList // ignore: cast_nullable_to_non_nullable
as List<SelftcheckSummary>,
  ));
}


}


/// @nodoc
mixin _$SelfcheckAsset {

 String get assetID; String get assetName; String get assetPhotoUrlPath;
/// Create a copy of SelfcheckAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelfcheckAssetCopyWith<SelfcheckAsset> get copyWith => _$SelfcheckAssetCopyWithImpl<SelfcheckAsset>(this as SelfcheckAsset, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelfcheckAsset&&(identical(other.assetID, assetID) || other.assetID == assetID)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetPhotoUrlPath, assetPhotoUrlPath) || other.assetPhotoUrlPath == assetPhotoUrlPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assetID,assetName,assetPhotoUrlPath);

@override
String toString() {
  return 'SelfcheckAsset(assetID: $assetID, assetName: $assetName, assetPhotoUrlPath: $assetPhotoUrlPath)';
}


}

/// @nodoc
abstract mixin class $SelfcheckAssetCopyWith<$Res>  {
  factory $SelfcheckAssetCopyWith(SelfcheckAsset value, $Res Function(SelfcheckAsset) _then) = _$SelfcheckAssetCopyWithImpl;
@useResult
$Res call({
 String assetID, String assetName, String assetPhotoUrlPath
});




}
/// @nodoc
class _$SelfcheckAssetCopyWithImpl<$Res>
    implements $SelfcheckAssetCopyWith<$Res> {
  _$SelfcheckAssetCopyWithImpl(this._self, this._then);

  final SelfcheckAsset _self;
  final $Res Function(SelfcheckAsset) _then;

/// Create a copy of SelfcheckAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetID = null,Object? assetName = null,Object? assetPhotoUrlPath = null,}) {
  return _then(SelfcheckAsset(
assetID: null == assetID ? _self.assetID : assetID // ignore: cast_nullable_to_non_nullable
as String,assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetPhotoUrlPath: null == assetPhotoUrlPath ? _self.assetPhotoUrlPath : assetPhotoUrlPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SelfcheckAsset].
extension SelfcheckAssetPatterns on SelfcheckAsset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelfcheckAsset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelfcheckAsset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelfcheckAsset value)  $default,){
final _that = this;
switch (_that) {
case _SelfcheckAsset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelfcheckAsset value)?  $default,){
final _that = this;
switch (_that) {
case _SelfcheckAsset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String assetID,  String assetName,  String assetPhotoUrlPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelfcheckAsset() when $default != null:
return $default(_that.assetID,_that.assetName,_that.assetPhotoUrlPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String assetID,  String assetName,  String assetPhotoUrlPath)  $default,) {final _that = this;
switch (_that) {
case _SelfcheckAsset():
return $default(_that.assetID,_that.assetName,_that.assetPhotoUrlPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String assetID,  String assetName,  String assetPhotoUrlPath)?  $default,) {final _that = this;
switch (_that) {
case _SelfcheckAsset() when $default != null:
return $default(_that.assetID,_that.assetName,_that.assetPhotoUrlPath);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _SelfcheckAsset extends SelfcheckAsset {
  const _SelfcheckAsset({required this.assetID, required this.assetName, required this.assetPhotoUrlPath}): super._();
  factory _SelfcheckAsset.fromJson(Map<String, dynamic> json) => _$SelfcheckAssetFromJson(json);

@override final  String assetID;
@override final  String assetName;
@override final  String assetPhotoUrlPath;

/// Create a copy of SelfcheckAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelfcheckAssetCopyWith<_SelfcheckAsset> get copyWith => __$SelfcheckAssetCopyWithImpl<_SelfcheckAsset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelfcheckAsset&&(identical(other.assetID, assetID) || other.assetID == assetID)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.assetPhotoUrlPath, assetPhotoUrlPath) || other.assetPhotoUrlPath == assetPhotoUrlPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assetID,assetName,assetPhotoUrlPath);

@override
String toString() {
  return 'SelfcheckAsset(assetID: $assetID, assetName: $assetName, assetPhotoUrlPath: $assetPhotoUrlPath)';
}


}

/// @nodoc
abstract mixin class _$SelfcheckAssetCopyWith<$Res> implements $SelfcheckAssetCopyWith<$Res> {
  factory _$SelfcheckAssetCopyWith(_SelfcheckAsset value, $Res Function(_SelfcheckAsset) _then) = __$SelfcheckAssetCopyWithImpl;
@override @useResult
$Res call({
 String assetID, String assetName, String assetPhotoUrlPath
});




}
/// @nodoc
class __$SelfcheckAssetCopyWithImpl<$Res>
    implements _$SelfcheckAssetCopyWith<$Res> {
  __$SelfcheckAssetCopyWithImpl(this._self, this._then);

  final _SelfcheckAsset _self;
  final $Res Function(_SelfcheckAsset) _then;

/// Create a copy of SelfcheckAsset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assetID = null,Object? assetName = null,Object? assetPhotoUrlPath = null,}) {
  return _then(_SelfcheckAsset(
assetID: null == assetID ? _self.assetID : assetID // ignore: cast_nullable_to_non_nullable
as String,assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String,assetPhotoUrlPath: null == assetPhotoUrlPath ? _self.assetPhotoUrlPath : assetPhotoUrlPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SelfcheckDetailResponse {

 List<SelfcheckAsset> get assetItemList;
/// Create a copy of SelfcheckDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelfcheckDetailResponseCopyWith<SelfcheckDetailResponse> get copyWith => _$SelfcheckDetailResponseCopyWithImpl<SelfcheckDetailResponse>(this as SelfcheckDetailResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelfcheckDetailResponse&&const DeepCollectionEquality().equals(other.assetItemList, assetItemList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(assetItemList));

@override
String toString() {
  return 'SelfcheckDetailResponse(assetItemList: $assetItemList)';
}


}

/// @nodoc
abstract mixin class $SelfcheckDetailResponseCopyWith<$Res>  {
  factory $SelfcheckDetailResponseCopyWith(SelfcheckDetailResponse value, $Res Function(SelfcheckDetailResponse) _then) = _$SelfcheckDetailResponseCopyWithImpl;
@useResult
$Res call({
 List<SelfcheckAsset> assetItemList
});




}
/// @nodoc
class _$SelfcheckDetailResponseCopyWithImpl<$Res>
    implements $SelfcheckDetailResponseCopyWith<$Res> {
  _$SelfcheckDetailResponseCopyWithImpl(this._self, this._then);

  final SelfcheckDetailResponse _self;
  final $Res Function(SelfcheckDetailResponse) _then;

/// Create a copy of SelfcheckDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetItemList = null,}) {
  return _then(SelfcheckDetailResponse(
assetItemList: null == assetItemList ? _self.assetItemList : assetItemList // ignore: cast_nullable_to_non_nullable
as List<SelfcheckAsset>,
  ));
}

}


/// Adds pattern-matching-related methods to [SelfcheckDetailResponse].
extension SelfcheckDetailResponsePatterns on SelfcheckDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelfcheckDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelfcheckDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelfcheckDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _SelfcheckDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelfcheckDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SelfcheckDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SelfcheckAsset> assetItemList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelfcheckDetailResponse() when $default != null:
return $default(_that.assetItemList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SelfcheckAsset> assetItemList)  $default,) {final _that = this;
switch (_that) {
case _SelfcheckDetailResponse():
return $default(_that.assetItemList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SelfcheckAsset> assetItemList)?  $default,) {final _that = this;
switch (_that) {
case _SelfcheckDetailResponse() when $default != null:
return $default(_that.assetItemList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _SelfcheckDetailResponse extends SelfcheckDetailResponse {
  const _SelfcheckDetailResponse({required  List<SelfcheckAsset> assetItemList}): _assetItemList = assetItemList,super._();
  factory _SelfcheckDetailResponse.fromJson(Map<String, dynamic> json) => _$SelfcheckDetailResponseFromJson(json);

 final  List<SelfcheckAsset> _assetItemList;
@override List<SelfcheckAsset> get assetItemList {
  if (_assetItemList is EqualUnmodifiableListView) return _assetItemList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assetItemList);
}


/// Create a copy of SelfcheckDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelfcheckDetailResponseCopyWith<_SelfcheckDetailResponse> get copyWith => __$SelfcheckDetailResponseCopyWithImpl<_SelfcheckDetailResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelfcheckDetailResponse&&const DeepCollectionEquality().equals(other._assetItemList, _assetItemList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assetItemList));

@override
String toString() {
  return 'SelfcheckDetailResponse(assetItemList: $assetItemList)';
}


}

/// @nodoc
abstract mixin class _$SelfcheckDetailResponseCopyWith<$Res> implements $SelfcheckDetailResponseCopyWith<$Res> {
  factory _$SelfcheckDetailResponseCopyWith(_SelfcheckDetailResponse value, $Res Function(_SelfcheckDetailResponse) _then) = __$SelfcheckDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 List<SelfcheckAsset> assetItemList
});




}
/// @nodoc
class __$SelfcheckDetailResponseCopyWithImpl<$Res>
    implements _$SelfcheckDetailResponseCopyWith<$Res> {
  __$SelfcheckDetailResponseCopyWithImpl(this._self, this._then);

  final _SelfcheckDetailResponse _self;
  final $Res Function(_SelfcheckDetailResponse) _then;

/// Create a copy of SelfcheckDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assetItemList = null,}) {
  return _then(_SelfcheckDetailResponse(
assetItemList: null == assetItemList ? _self._assetItemList : assetItemList // ignore: cast_nullable_to_non_nullable
as List<SelfcheckAsset>,
  ));
}


}

// dart format on
