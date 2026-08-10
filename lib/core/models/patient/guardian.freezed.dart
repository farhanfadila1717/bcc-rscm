// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guardian.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuardianDetail {

 String get guardianName; String get guardianPhone; String get guardianAddress; String get birthDate;
/// Create a copy of GuardianDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianDetailCopyWith<GuardianDetail> get copyWith => _$GuardianDetailCopyWithImpl<GuardianDetail>(this as GuardianDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianDetail&&(identical(other.guardianName, guardianName) || other.guardianName == guardianName)&&(identical(other.guardianPhone, guardianPhone) || other.guardianPhone == guardianPhone)&&(identical(other.guardianAddress, guardianAddress) || other.guardianAddress == guardianAddress)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guardianName,guardianPhone,guardianAddress,birthDate);

@override
String toString() {
  return 'GuardianDetail(guardianName: $guardianName, guardianPhone: $guardianPhone, guardianAddress: $guardianAddress, birthDate: $birthDate)';
}


}

/// @nodoc
abstract mixin class $GuardianDetailCopyWith<$Res>  {
  factory $GuardianDetailCopyWith(GuardianDetail value, $Res Function(GuardianDetail) _then) = _$GuardianDetailCopyWithImpl;
@useResult
$Res call({
 String guardianName, String guardianPhone, String guardianAddress, String birthDate
});




}
/// @nodoc
class _$GuardianDetailCopyWithImpl<$Res>
    implements $GuardianDetailCopyWith<$Res> {
  _$GuardianDetailCopyWithImpl(this._self, this._then);

  final GuardianDetail _self;
  final $Res Function(GuardianDetail) _then;

/// Create a copy of GuardianDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guardianName = null,Object? guardianPhone = null,Object? guardianAddress = null,Object? birthDate = null,}) {
  return _then(_self.copyWith(
guardianName: null == guardianName ? _self.guardianName : guardianName // ignore: cast_nullable_to_non_nullable
as String,guardianPhone: null == guardianPhone ? _self.guardianPhone : guardianPhone // ignore: cast_nullable_to_non_nullable
as String,guardianAddress: null == guardianAddress ? _self.guardianAddress : guardianAddress // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GuardianDetail].
extension GuardianDetailPatterns on GuardianDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuardianDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuardianDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuardianDetail value)  $default,){
final _that = this;
switch (_that) {
case _GuardianDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuardianDetail value)?  $default,){
final _that = this;
switch (_that) {
case _GuardianDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String guardianName,  String guardianPhone,  String guardianAddress,  String birthDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuardianDetail() when $default != null:
return $default(_that.guardianName,_that.guardianPhone,_that.guardianAddress,_that.birthDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String guardianName,  String guardianPhone,  String guardianAddress,  String birthDate)  $default,) {final _that = this;
switch (_that) {
case _GuardianDetail():
return $default(_that.guardianName,_that.guardianPhone,_that.guardianAddress,_that.birthDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String guardianName,  String guardianPhone,  String guardianAddress,  String birthDate)?  $default,) {final _that = this;
switch (_that) {
case _GuardianDetail() when $default != null:
return $default(_that.guardianName,_that.guardianPhone,_that.guardianAddress,_that.birthDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _GuardianDetail extends GuardianDetail {
  const _GuardianDetail({required this.guardianName, required this.guardianPhone, required this.guardianAddress, required this.birthDate}): super._();
  factory _GuardianDetail.fromJson(Map<String, dynamic> json) => _$GuardianDetailFromJson(json);

@override final  String guardianName;
@override final  String guardianPhone;
@override final  String guardianAddress;
@override final  String birthDate;

/// Create a copy of GuardianDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuardianDetailCopyWith<_GuardianDetail> get copyWith => __$GuardianDetailCopyWithImpl<_GuardianDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuardianDetail&&(identical(other.guardianName, guardianName) || other.guardianName == guardianName)&&(identical(other.guardianPhone, guardianPhone) || other.guardianPhone == guardianPhone)&&(identical(other.guardianAddress, guardianAddress) || other.guardianAddress == guardianAddress)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guardianName,guardianPhone,guardianAddress,birthDate);

@override
String toString() {
  return 'GuardianDetail(guardianName: $guardianName, guardianPhone: $guardianPhone, guardianAddress: $guardianAddress, birthDate: $birthDate)';
}


}

/// @nodoc
abstract mixin class _$GuardianDetailCopyWith<$Res> implements $GuardianDetailCopyWith<$Res> {
  factory _$GuardianDetailCopyWith(_GuardianDetail value, $Res Function(_GuardianDetail) _then) = __$GuardianDetailCopyWithImpl;
@override @useResult
$Res call({
 String guardianName, String guardianPhone, String guardianAddress, String birthDate
});




}
/// @nodoc
class __$GuardianDetailCopyWithImpl<$Res>
    implements _$GuardianDetailCopyWith<$Res> {
  __$GuardianDetailCopyWithImpl(this._self, this._then);

  final _GuardianDetail _self;
  final $Res Function(_GuardianDetail) _then;

/// Create a copy of GuardianDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guardianName = null,Object? guardianPhone = null,Object? guardianAddress = null,Object? birthDate = null,}) {
  return _then(_GuardianDetail(
guardianName: null == guardianName ? _self.guardianName : guardianName // ignore: cast_nullable_to_non_nullable
as String,guardianPhone: null == guardianPhone ? _self.guardianPhone : guardianPhone // ignore: cast_nullable_to_non_nullable
as String,guardianAddress: null == guardianAddress ? _self.guardianAddress : guardianAddress // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
