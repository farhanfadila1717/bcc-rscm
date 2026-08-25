// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientPhoto {

 String get uRL; String get type; String? get allowedExtensions; int get maxSizeMb;
/// Create a copy of PatientPhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientPhotoCopyWith<PatientPhoto> get copyWith => _$PatientPhotoCopyWithImpl<PatientPhoto>(this as PatientPhoto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientPhoto&&(identical(other.uRL, uRL) || other.uRL == uRL)&&(identical(other.type, type) || other.type == type)&&(identical(other.allowedExtensions, allowedExtensions) || other.allowedExtensions == allowedExtensions)&&(identical(other.maxSizeMb, maxSizeMb) || other.maxSizeMb == maxSizeMb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uRL,type,allowedExtensions,maxSizeMb);

@override
String toString() {
  return 'PatientPhoto(uRL: $uRL, type: $type, allowedExtensions: $allowedExtensions, maxSizeMb: $maxSizeMb)';
}


}

/// @nodoc
abstract mixin class $PatientPhotoCopyWith<$Res>  {
  factory $PatientPhotoCopyWith(PatientPhoto value, $Res Function(PatientPhoto) _then) = _$PatientPhotoCopyWithImpl;
@useResult
$Res call({
 String uRL, String type, String? allowedExtensions, int maxSizeMb
});




}
/// @nodoc
class _$PatientPhotoCopyWithImpl<$Res>
    implements $PatientPhotoCopyWith<$Res> {
  _$PatientPhotoCopyWithImpl(this._self, this._then);

  final PatientPhoto _self;
  final $Res Function(PatientPhoto) _then;

/// Create a copy of PatientPhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uRL = null,Object? type = null,Object? allowedExtensions = freezed,Object? maxSizeMb = null,}) {
  return _then(PatientPhoto(
uRL: null == uRL ? _self.uRL : uRL // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,allowedExtensions: freezed == allowedExtensions ? _self.allowedExtensions : allowedExtensions // ignore: cast_nullable_to_non_nullable
as String?,maxSizeMb: null == maxSizeMb ? _self.maxSizeMb : maxSizeMb // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientPhoto].
extension PatientPhotoPatterns on PatientPhoto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientPhoto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientPhoto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientPhoto value)  $default,){
final _that = this;
switch (_that) {
case _PatientPhoto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientPhoto value)?  $default,){
final _that = this;
switch (_that) {
case _PatientPhoto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uRL,  String type,  String? allowedExtensions,  int maxSizeMb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientPhoto() when $default != null:
return $default(_that.uRL,_that.type,_that.allowedExtensions,_that.maxSizeMb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uRL,  String type,  String? allowedExtensions,  int maxSizeMb)  $default,) {final _that = this;
switch (_that) {
case _PatientPhoto():
return $default(_that.uRL,_that.type,_that.allowedExtensions,_that.maxSizeMb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uRL,  String type,  String? allowedExtensions,  int maxSizeMb)?  $default,) {final _that = this;
switch (_that) {
case _PatientPhoto() when $default != null:
return $default(_that.uRL,_that.type,_that.allowedExtensions,_that.maxSizeMb);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _PatientPhoto extends PatientPhoto {
  const _PatientPhoto({required this.uRL, required this.type, required this.allowedExtensions, required this.maxSizeMb}): super._();
  factory _PatientPhoto.fromJson(Map<String, dynamic> json) => _$PatientPhotoFromJson(json);

@override final  String uRL;
@override final  String type;
@override final  String? allowedExtensions;
@override final  int maxSizeMb;

/// Create a copy of PatientPhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientPhotoCopyWith<_PatientPhoto> get copyWith => __$PatientPhotoCopyWithImpl<_PatientPhoto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientPhoto&&(identical(other.uRL, uRL) || other.uRL == uRL)&&(identical(other.type, type) || other.type == type)&&(identical(other.allowedExtensions, allowedExtensions) || other.allowedExtensions == allowedExtensions)&&(identical(other.maxSizeMb, maxSizeMb) || other.maxSizeMb == maxSizeMb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uRL,type,allowedExtensions,maxSizeMb);

@override
String toString() {
  return 'PatientPhoto(uRL: $uRL, type: $type, allowedExtensions: $allowedExtensions, maxSizeMb: $maxSizeMb)';
}


}

/// @nodoc
abstract mixin class _$PatientPhotoCopyWith<$Res> implements $PatientPhotoCopyWith<$Res> {
  factory _$PatientPhotoCopyWith(_PatientPhoto value, $Res Function(_PatientPhoto) _then) = __$PatientPhotoCopyWithImpl;
@override @useResult
$Res call({
 String uRL, String type, String? allowedExtensions, int maxSizeMb
});




}
/// @nodoc
class __$PatientPhotoCopyWithImpl<$Res>
    implements _$PatientPhotoCopyWith<$Res> {
  __$PatientPhotoCopyWithImpl(this._self, this._then);

  final _PatientPhoto _self;
  final $Res Function(_PatientPhoto) _then;

/// Create a copy of PatientPhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uRL = null,Object? type = null,Object? allowedExtensions = freezed,Object? maxSizeMb = null,}) {
  return _then(_PatientPhoto(
uRL: null == uRL ? _self.uRL : uRL // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,allowedExtensions: freezed == allowedExtensions ? _self.allowedExtensions : allowedExtensions // ignore: cast_nullable_to_non_nullable
as String?,maxSizeMb: null == maxSizeMb ? _self.maxSizeMb : maxSizeMb // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Attachments {

 PatientPhoto get patientPhoto;
/// Create a copy of Attachments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentsCopyWith<Attachments> get copyWith => _$AttachmentsCopyWithImpl<Attachments>(this as Attachments, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attachments&&(identical(other.patientPhoto, patientPhoto) || other.patientPhoto == patientPhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,patientPhoto);

@override
String toString() {
  return 'Attachments(patientPhoto: $patientPhoto)';
}


}

/// @nodoc
abstract mixin class $AttachmentsCopyWith<$Res>  {
  factory $AttachmentsCopyWith(Attachments value, $Res Function(Attachments) _then) = _$AttachmentsCopyWithImpl;
@useResult
$Res call({
 PatientPhoto patientPhoto
});


$PatientPhotoCopyWith<$Res> get patientPhoto;

}
/// @nodoc
class _$AttachmentsCopyWithImpl<$Res>
    implements $AttachmentsCopyWith<$Res> {
  _$AttachmentsCopyWithImpl(this._self, this._then);

  final Attachments _self;
  final $Res Function(Attachments) _then;

/// Create a copy of Attachments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patientPhoto = null,}) {
  return _then(Attachments(
patientPhoto: null == patientPhoto ? _self.patientPhoto : patientPhoto // ignore: cast_nullable_to_non_nullable
as PatientPhoto,
  ));
}
/// Create a copy of Attachments
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientPhotoCopyWith<$Res> get patientPhoto {
  
  return $PatientPhotoCopyWith<$Res>(_self.patientPhoto, (value) {
    return _then(_self.copyWith(patientPhoto: value));
  });
}
}


/// Adds pattern-matching-related methods to [Attachments].
extension AttachmentsPatterns on Attachments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attachments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attachments() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attachments value)  $default,){
final _that = this;
switch (_that) {
case _Attachments():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attachments value)?  $default,){
final _that = this;
switch (_that) {
case _Attachments() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatientPhoto patientPhoto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attachments() when $default != null:
return $default(_that.patientPhoto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatientPhoto patientPhoto)  $default,) {final _that = this;
switch (_that) {
case _Attachments():
return $default(_that.patientPhoto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatientPhoto patientPhoto)?  $default,) {final _that = this;
switch (_that) {
case _Attachments() when $default != null:
return $default(_that.patientPhoto);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _Attachments extends Attachments {
  const _Attachments({required this.patientPhoto}): super._();
  factory _Attachments.fromJson(Map<String, dynamic> json) => _$AttachmentsFromJson(json);

@override final  PatientPhoto patientPhoto;

/// Create a copy of Attachments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentsCopyWith<_Attachments> get copyWith => __$AttachmentsCopyWithImpl<_Attachments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attachments&&(identical(other.patientPhoto, patientPhoto) || other.patientPhoto == patientPhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,patientPhoto);

@override
String toString() {
  return 'Attachments(patientPhoto: $patientPhoto)';
}


}

/// @nodoc
abstract mixin class _$AttachmentsCopyWith<$Res> implements $AttachmentsCopyWith<$Res> {
  factory _$AttachmentsCopyWith(_Attachments value, $Res Function(_Attachments) _then) = __$AttachmentsCopyWithImpl;
@override @useResult
$Res call({
 PatientPhoto patientPhoto
});


@override $PatientPhotoCopyWith<$Res> get patientPhoto;

}
/// @nodoc
class __$AttachmentsCopyWithImpl<$Res>
    implements _$AttachmentsCopyWith<$Res> {
  __$AttachmentsCopyWithImpl(this._self, this._then);

  final _Attachments _self;
  final $Res Function(_Attachments) _then;

/// Create a copy of Attachments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patientPhoto = null,}) {
  return _then(_Attachments(
patientPhoto: null == patientPhoto ? _self.patientPhoto : patientPhoto // ignore: cast_nullable_to_non_nullable
as PatientPhoto,
  ));
}

/// Create a copy of Attachments
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientPhotoCopyWith<$Res> get patientPhoto {
  
  return $PatientPhotoCopyWith<$Res>(_self.patientPhoto, (value) {
    return _then(_self.copyWith(patientPhoto: value));
  });
}
}

// dart format on
