// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicalHistoryDetail {

 String get medicalHistoryInsurance; String get medicalHistoryCleftClassification; String get medicalHistoryPhotoURL; bool get medicalHistoryIsDeceased; String get medicalHistoryDeathDate;
/// Create a copy of MedicalHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalHistoryDetailCopyWith<MedicalHistoryDetail> get copyWith => _$MedicalHistoryDetailCopyWithImpl<MedicalHistoryDetail>(this as MedicalHistoryDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalHistoryDetail&&(identical(other.medicalHistoryInsurance, medicalHistoryInsurance) || other.medicalHistoryInsurance == medicalHistoryInsurance)&&(identical(other.medicalHistoryCleftClassification, medicalHistoryCleftClassification) || other.medicalHistoryCleftClassification == medicalHistoryCleftClassification)&&(identical(other.medicalHistoryPhotoURL, medicalHistoryPhotoURL) || other.medicalHistoryPhotoURL == medicalHistoryPhotoURL)&&(identical(other.medicalHistoryIsDeceased, medicalHistoryIsDeceased) || other.medicalHistoryIsDeceased == medicalHistoryIsDeceased)&&(identical(other.medicalHistoryDeathDate, medicalHistoryDeathDate) || other.medicalHistoryDeathDate == medicalHistoryDeathDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,medicalHistoryInsurance,medicalHistoryCleftClassification,medicalHistoryPhotoURL,medicalHistoryIsDeceased,medicalHistoryDeathDate);

@override
String toString() {
  return 'MedicalHistoryDetail(medicalHistoryInsurance: $medicalHistoryInsurance, medicalHistoryCleftClassification: $medicalHistoryCleftClassification, medicalHistoryPhotoURL: $medicalHistoryPhotoURL, medicalHistoryIsDeceased: $medicalHistoryIsDeceased, medicalHistoryDeathDate: $medicalHistoryDeathDate)';
}


}

/// @nodoc
abstract mixin class $MedicalHistoryDetailCopyWith<$Res>  {
  factory $MedicalHistoryDetailCopyWith(MedicalHistoryDetail value, $Res Function(MedicalHistoryDetail) _then) = _$MedicalHistoryDetailCopyWithImpl;
@useResult
$Res call({
 String medicalHistoryInsurance, String medicalHistoryCleftClassification, String medicalHistoryPhotoURL, bool medicalHistoryIsDeceased, String medicalHistoryDeathDate
});




}
/// @nodoc
class _$MedicalHistoryDetailCopyWithImpl<$Res>
    implements $MedicalHistoryDetailCopyWith<$Res> {
  _$MedicalHistoryDetailCopyWithImpl(this._self, this._then);

  final MedicalHistoryDetail _self;
  final $Res Function(MedicalHistoryDetail) _then;

/// Create a copy of MedicalHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? medicalHistoryInsurance = null,Object? medicalHistoryCleftClassification = null,Object? medicalHistoryPhotoURL = null,Object? medicalHistoryIsDeceased = null,Object? medicalHistoryDeathDate = null,}) {
  return _then(MedicalHistoryDetail(
medicalHistoryInsurance: null == medicalHistoryInsurance ? _self.medicalHistoryInsurance : medicalHistoryInsurance // ignore: cast_nullable_to_non_nullable
as String,medicalHistoryCleftClassification: null == medicalHistoryCleftClassification ? _self.medicalHistoryCleftClassification : medicalHistoryCleftClassification // ignore: cast_nullable_to_non_nullable
as String,medicalHistoryPhotoURL: null == medicalHistoryPhotoURL ? _self.medicalHistoryPhotoURL : medicalHistoryPhotoURL // ignore: cast_nullable_to_non_nullable
as String,medicalHistoryIsDeceased: null == medicalHistoryIsDeceased ? _self.medicalHistoryIsDeceased : medicalHistoryIsDeceased // ignore: cast_nullable_to_non_nullable
as bool,medicalHistoryDeathDate: null == medicalHistoryDeathDate ? _self.medicalHistoryDeathDate : medicalHistoryDeathDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicalHistoryDetail].
extension MedicalHistoryDetailPatterns on MedicalHistoryDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicalHistoryDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicalHistoryDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicalHistoryDetail value)  $default,){
final _that = this;
switch (_that) {
case _MedicalHistoryDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicalHistoryDetail value)?  $default,){
final _that = this;
switch (_that) {
case _MedicalHistoryDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String medicalHistoryInsurance,  String medicalHistoryCleftClassification,  String medicalHistoryPhotoURL,  bool medicalHistoryIsDeceased,  String medicalHistoryDeathDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicalHistoryDetail() when $default != null:
return $default(_that.medicalHistoryInsurance,_that.medicalHistoryCleftClassification,_that.medicalHistoryPhotoURL,_that.medicalHistoryIsDeceased,_that.medicalHistoryDeathDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String medicalHistoryInsurance,  String medicalHistoryCleftClassification,  String medicalHistoryPhotoURL,  bool medicalHistoryIsDeceased,  String medicalHistoryDeathDate)  $default,) {final _that = this;
switch (_that) {
case _MedicalHistoryDetail():
return $default(_that.medicalHistoryInsurance,_that.medicalHistoryCleftClassification,_that.medicalHistoryPhotoURL,_that.medicalHistoryIsDeceased,_that.medicalHistoryDeathDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String medicalHistoryInsurance,  String medicalHistoryCleftClassification,  String medicalHistoryPhotoURL,  bool medicalHistoryIsDeceased,  String medicalHistoryDeathDate)?  $default,) {final _that = this;
switch (_that) {
case _MedicalHistoryDetail() when $default != null:
return $default(_that.medicalHistoryInsurance,_that.medicalHistoryCleftClassification,_that.medicalHistoryPhotoURL,_that.medicalHistoryIsDeceased,_that.medicalHistoryDeathDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _MedicalHistoryDetail extends MedicalHistoryDetail {
  const _MedicalHistoryDetail({required this.medicalHistoryInsurance, required this.medicalHistoryCleftClassification, required this.medicalHistoryPhotoURL, required this.medicalHistoryIsDeceased, required this.medicalHistoryDeathDate}): super._();
  factory _MedicalHistoryDetail.fromJson(Map<String, dynamic> json) => _$MedicalHistoryDetailFromJson(json);

@override final  String medicalHistoryInsurance;
@override final  String medicalHistoryCleftClassification;
@override final  String medicalHistoryPhotoURL;
@override final  bool medicalHistoryIsDeceased;
@override final  String medicalHistoryDeathDate;

/// Create a copy of MedicalHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalHistoryDetailCopyWith<_MedicalHistoryDetail> get copyWith => __$MedicalHistoryDetailCopyWithImpl<_MedicalHistoryDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalHistoryDetail&&(identical(other.medicalHistoryInsurance, medicalHistoryInsurance) || other.medicalHistoryInsurance == medicalHistoryInsurance)&&(identical(other.medicalHistoryCleftClassification, medicalHistoryCleftClassification) || other.medicalHistoryCleftClassification == medicalHistoryCleftClassification)&&(identical(other.medicalHistoryPhotoURL, medicalHistoryPhotoURL) || other.medicalHistoryPhotoURL == medicalHistoryPhotoURL)&&(identical(other.medicalHistoryIsDeceased, medicalHistoryIsDeceased) || other.medicalHistoryIsDeceased == medicalHistoryIsDeceased)&&(identical(other.medicalHistoryDeathDate, medicalHistoryDeathDate) || other.medicalHistoryDeathDate == medicalHistoryDeathDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,medicalHistoryInsurance,medicalHistoryCleftClassification,medicalHistoryPhotoURL,medicalHistoryIsDeceased,medicalHistoryDeathDate);

@override
String toString() {
  return 'MedicalHistoryDetail(medicalHistoryInsurance: $medicalHistoryInsurance, medicalHistoryCleftClassification: $medicalHistoryCleftClassification, medicalHistoryPhotoURL: $medicalHistoryPhotoURL, medicalHistoryIsDeceased: $medicalHistoryIsDeceased, medicalHistoryDeathDate: $medicalHistoryDeathDate)';
}


}

/// @nodoc
abstract mixin class _$MedicalHistoryDetailCopyWith<$Res> implements $MedicalHistoryDetailCopyWith<$Res> {
  factory _$MedicalHistoryDetailCopyWith(_MedicalHistoryDetail value, $Res Function(_MedicalHistoryDetail) _then) = __$MedicalHistoryDetailCopyWithImpl;
@override @useResult
$Res call({
 String medicalHistoryInsurance, String medicalHistoryCleftClassification, String medicalHistoryPhotoURL, bool medicalHistoryIsDeceased, String medicalHistoryDeathDate
});




}
/// @nodoc
class __$MedicalHistoryDetailCopyWithImpl<$Res>
    implements _$MedicalHistoryDetailCopyWith<$Res> {
  __$MedicalHistoryDetailCopyWithImpl(this._self, this._then);

  final _MedicalHistoryDetail _self;
  final $Res Function(_MedicalHistoryDetail) _then;

/// Create a copy of MedicalHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? medicalHistoryInsurance = null,Object? medicalHistoryCleftClassification = null,Object? medicalHistoryPhotoURL = null,Object? medicalHistoryIsDeceased = null,Object? medicalHistoryDeathDate = null,}) {
  return _then(_MedicalHistoryDetail(
medicalHistoryInsurance: null == medicalHistoryInsurance ? _self.medicalHistoryInsurance : medicalHistoryInsurance // ignore: cast_nullable_to_non_nullable
as String,medicalHistoryCleftClassification: null == medicalHistoryCleftClassification ? _self.medicalHistoryCleftClassification : medicalHistoryCleftClassification // ignore: cast_nullable_to_non_nullable
as String,medicalHistoryPhotoURL: null == medicalHistoryPhotoURL ? _self.medicalHistoryPhotoURL : medicalHistoryPhotoURL // ignore: cast_nullable_to_non_nullable
as String,medicalHistoryIsDeceased: null == medicalHistoryIsDeceased ? _self.medicalHistoryIsDeceased : medicalHistoryIsDeceased // ignore: cast_nullable_to_non_nullable
as bool,medicalHistoryDeathDate: null == medicalHistoryDeathDate ? _self.medicalHistoryDeathDate : medicalHistoryDeathDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
