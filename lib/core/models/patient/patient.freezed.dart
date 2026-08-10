// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientDetail {

 String get clientId; String get clientFullName; String get clientIdentityNumber; String get clientGender; bool get clientIsAdopted; String get clientRegistrationDate; String get clientBirthPlace; String get clientBirthDate; String get clientBirthPlaceAndDate; num get clientBirthWeightKg; String get clientAddress;
/// Create a copy of PatientDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientDetailCopyWith<PatientDetail> get copyWith => _$PatientDetailCopyWithImpl<PatientDetail>(this as PatientDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientDetail&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientFullName, clientFullName) || other.clientFullName == clientFullName)&&(identical(other.clientIdentityNumber, clientIdentityNumber) || other.clientIdentityNumber == clientIdentityNumber)&&(identical(other.clientGender, clientGender) || other.clientGender == clientGender)&&(identical(other.clientIsAdopted, clientIsAdopted) || other.clientIsAdopted == clientIsAdopted)&&(identical(other.clientRegistrationDate, clientRegistrationDate) || other.clientRegistrationDate == clientRegistrationDate)&&(identical(other.clientBirthPlace, clientBirthPlace) || other.clientBirthPlace == clientBirthPlace)&&(identical(other.clientBirthDate, clientBirthDate) || other.clientBirthDate == clientBirthDate)&&(identical(other.clientBirthPlaceAndDate, clientBirthPlaceAndDate) || other.clientBirthPlaceAndDate == clientBirthPlaceAndDate)&&(identical(other.clientBirthWeightKg, clientBirthWeightKg) || other.clientBirthWeightKg == clientBirthWeightKg)&&(identical(other.clientAddress, clientAddress) || other.clientAddress == clientAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,clientFullName,clientIdentityNumber,clientGender,clientIsAdopted,clientRegistrationDate,clientBirthPlace,clientBirthDate,clientBirthPlaceAndDate,clientBirthWeightKg,clientAddress);

@override
String toString() {
  return 'PatientDetail(clientId: $clientId, clientFullName: $clientFullName, clientIdentityNumber: $clientIdentityNumber, clientGender: $clientGender, clientIsAdopted: $clientIsAdopted, clientRegistrationDate: $clientRegistrationDate, clientBirthPlace: $clientBirthPlace, clientBirthDate: $clientBirthDate, clientBirthPlaceAndDate: $clientBirthPlaceAndDate, clientBirthWeightKg: $clientBirthWeightKg, clientAddress: $clientAddress)';
}


}

/// @nodoc
abstract mixin class $PatientDetailCopyWith<$Res>  {
  factory $PatientDetailCopyWith(PatientDetail value, $Res Function(PatientDetail) _then) = _$PatientDetailCopyWithImpl;
@useResult
$Res call({
 String clientId, String clientFullName, String clientIdentityNumber, String clientGender, bool clientIsAdopted, String clientRegistrationDate, String clientBirthPlace, String clientBirthDate, String clientBirthPlaceAndDate, num clientBirthWeightKg, String clientAddress
});




}
/// @nodoc
class _$PatientDetailCopyWithImpl<$Res>
    implements $PatientDetailCopyWith<$Res> {
  _$PatientDetailCopyWithImpl(this._self, this._then);

  final PatientDetail _self;
  final $Res Function(PatientDetail) _then;

/// Create a copy of PatientDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientId = null,Object? clientFullName = null,Object? clientIdentityNumber = null,Object? clientGender = null,Object? clientIsAdopted = null,Object? clientRegistrationDate = null,Object? clientBirthPlace = null,Object? clientBirthDate = null,Object? clientBirthPlaceAndDate = null,Object? clientBirthWeightKg = null,Object? clientAddress = null,}) {
  return _then(_self.copyWith(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,clientFullName: null == clientFullName ? _self.clientFullName : clientFullName // ignore: cast_nullable_to_non_nullable
as String,clientIdentityNumber: null == clientIdentityNumber ? _self.clientIdentityNumber : clientIdentityNumber // ignore: cast_nullable_to_non_nullable
as String,clientGender: null == clientGender ? _self.clientGender : clientGender // ignore: cast_nullable_to_non_nullable
as String,clientIsAdopted: null == clientIsAdopted ? _self.clientIsAdopted : clientIsAdopted // ignore: cast_nullable_to_non_nullable
as bool,clientRegistrationDate: null == clientRegistrationDate ? _self.clientRegistrationDate : clientRegistrationDate // ignore: cast_nullable_to_non_nullable
as String,clientBirthPlace: null == clientBirthPlace ? _self.clientBirthPlace : clientBirthPlace // ignore: cast_nullable_to_non_nullable
as String,clientBirthDate: null == clientBirthDate ? _self.clientBirthDate : clientBirthDate // ignore: cast_nullable_to_non_nullable
as String,clientBirthPlaceAndDate: null == clientBirthPlaceAndDate ? _self.clientBirthPlaceAndDate : clientBirthPlaceAndDate // ignore: cast_nullable_to_non_nullable
as String,clientBirthWeightKg: null == clientBirthWeightKg ? _self.clientBirthWeightKg : clientBirthWeightKg // ignore: cast_nullable_to_non_nullable
as num,clientAddress: null == clientAddress ? _self.clientAddress : clientAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientDetail].
extension PatientDetailPatterns on PatientDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientDetail value)  $default,){
final _that = this;
switch (_that) {
case _PatientDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PatientDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientId,  String clientFullName,  String clientIdentityNumber,  String clientGender,  bool clientIsAdopted,  String clientRegistrationDate,  String clientBirthPlace,  String clientBirthDate,  String clientBirthPlaceAndDate,  num clientBirthWeightKg,  String clientAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientDetail() when $default != null:
return $default(_that.clientId,_that.clientFullName,_that.clientIdentityNumber,_that.clientGender,_that.clientIsAdopted,_that.clientRegistrationDate,_that.clientBirthPlace,_that.clientBirthDate,_that.clientBirthPlaceAndDate,_that.clientBirthWeightKg,_that.clientAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientId,  String clientFullName,  String clientIdentityNumber,  String clientGender,  bool clientIsAdopted,  String clientRegistrationDate,  String clientBirthPlace,  String clientBirthDate,  String clientBirthPlaceAndDate,  num clientBirthWeightKg,  String clientAddress)  $default,) {final _that = this;
switch (_that) {
case _PatientDetail():
return $default(_that.clientId,_that.clientFullName,_that.clientIdentityNumber,_that.clientGender,_that.clientIsAdopted,_that.clientRegistrationDate,_that.clientBirthPlace,_that.clientBirthDate,_that.clientBirthPlaceAndDate,_that.clientBirthWeightKg,_that.clientAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientId,  String clientFullName,  String clientIdentityNumber,  String clientGender,  bool clientIsAdopted,  String clientRegistrationDate,  String clientBirthPlace,  String clientBirthDate,  String clientBirthPlaceAndDate,  num clientBirthWeightKg,  String clientAddress)?  $default,) {final _that = this;
switch (_that) {
case _PatientDetail() when $default != null:
return $default(_that.clientId,_that.clientFullName,_that.clientIdentityNumber,_that.clientGender,_that.clientIsAdopted,_that.clientRegistrationDate,_that.clientBirthPlace,_that.clientBirthDate,_that.clientBirthPlaceAndDate,_that.clientBirthWeightKg,_that.clientAddress);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _PatientDetail extends PatientDetail {
  const _PatientDetail({required this.clientId, required this.clientFullName, required this.clientIdentityNumber, required this.clientGender, required this.clientIsAdopted, required this.clientRegistrationDate, required this.clientBirthPlace, required this.clientBirthDate, required this.clientBirthPlaceAndDate, required this.clientBirthWeightKg, required this.clientAddress}): super._();
  factory _PatientDetail.fromJson(Map<String, dynamic> json) => _$PatientDetailFromJson(json);

@override final  String clientId;
@override final  String clientFullName;
@override final  String clientIdentityNumber;
@override final  String clientGender;
@override final  bool clientIsAdopted;
@override final  String clientRegistrationDate;
@override final  String clientBirthPlace;
@override final  String clientBirthDate;
@override final  String clientBirthPlaceAndDate;
@override final  num clientBirthWeightKg;
@override final  String clientAddress;

/// Create a copy of PatientDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientDetailCopyWith<_PatientDetail> get copyWith => __$PatientDetailCopyWithImpl<_PatientDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientDetail&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientFullName, clientFullName) || other.clientFullName == clientFullName)&&(identical(other.clientIdentityNumber, clientIdentityNumber) || other.clientIdentityNumber == clientIdentityNumber)&&(identical(other.clientGender, clientGender) || other.clientGender == clientGender)&&(identical(other.clientIsAdopted, clientIsAdopted) || other.clientIsAdopted == clientIsAdopted)&&(identical(other.clientRegistrationDate, clientRegistrationDate) || other.clientRegistrationDate == clientRegistrationDate)&&(identical(other.clientBirthPlace, clientBirthPlace) || other.clientBirthPlace == clientBirthPlace)&&(identical(other.clientBirthDate, clientBirthDate) || other.clientBirthDate == clientBirthDate)&&(identical(other.clientBirthPlaceAndDate, clientBirthPlaceAndDate) || other.clientBirthPlaceAndDate == clientBirthPlaceAndDate)&&(identical(other.clientBirthWeightKg, clientBirthWeightKg) || other.clientBirthWeightKg == clientBirthWeightKg)&&(identical(other.clientAddress, clientAddress) || other.clientAddress == clientAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,clientFullName,clientIdentityNumber,clientGender,clientIsAdopted,clientRegistrationDate,clientBirthPlace,clientBirthDate,clientBirthPlaceAndDate,clientBirthWeightKg,clientAddress);

@override
String toString() {
  return 'PatientDetail(clientId: $clientId, clientFullName: $clientFullName, clientIdentityNumber: $clientIdentityNumber, clientGender: $clientGender, clientIsAdopted: $clientIsAdopted, clientRegistrationDate: $clientRegistrationDate, clientBirthPlace: $clientBirthPlace, clientBirthDate: $clientBirthDate, clientBirthPlaceAndDate: $clientBirthPlaceAndDate, clientBirthWeightKg: $clientBirthWeightKg, clientAddress: $clientAddress)';
}


}

/// @nodoc
abstract mixin class _$PatientDetailCopyWith<$Res> implements $PatientDetailCopyWith<$Res> {
  factory _$PatientDetailCopyWith(_PatientDetail value, $Res Function(_PatientDetail) _then) = __$PatientDetailCopyWithImpl;
@override @useResult
$Res call({
 String clientId, String clientFullName, String clientIdentityNumber, String clientGender, bool clientIsAdopted, String clientRegistrationDate, String clientBirthPlace, String clientBirthDate, String clientBirthPlaceAndDate, num clientBirthWeightKg, String clientAddress
});




}
/// @nodoc
class __$PatientDetailCopyWithImpl<$Res>
    implements _$PatientDetailCopyWith<$Res> {
  __$PatientDetailCopyWithImpl(this._self, this._then);

  final _PatientDetail _self;
  final $Res Function(_PatientDetail) _then;

/// Create a copy of PatientDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? clientFullName = null,Object? clientIdentityNumber = null,Object? clientGender = null,Object? clientIsAdopted = null,Object? clientRegistrationDate = null,Object? clientBirthPlace = null,Object? clientBirthDate = null,Object? clientBirthPlaceAndDate = null,Object? clientBirthWeightKg = null,Object? clientAddress = null,}) {
  return _then(_PatientDetail(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,clientFullName: null == clientFullName ? _self.clientFullName : clientFullName // ignore: cast_nullable_to_non_nullable
as String,clientIdentityNumber: null == clientIdentityNumber ? _self.clientIdentityNumber : clientIdentityNumber // ignore: cast_nullable_to_non_nullable
as String,clientGender: null == clientGender ? _self.clientGender : clientGender // ignore: cast_nullable_to_non_nullable
as String,clientIsAdopted: null == clientIsAdopted ? _self.clientIsAdopted : clientIsAdopted // ignore: cast_nullable_to_non_nullable
as bool,clientRegistrationDate: null == clientRegistrationDate ? _self.clientRegistrationDate : clientRegistrationDate // ignore: cast_nullable_to_non_nullable
as String,clientBirthPlace: null == clientBirthPlace ? _self.clientBirthPlace : clientBirthPlace // ignore: cast_nullable_to_non_nullable
as String,clientBirthDate: null == clientBirthDate ? _self.clientBirthDate : clientBirthDate // ignore: cast_nullable_to_non_nullable
as String,clientBirthPlaceAndDate: null == clientBirthPlaceAndDate ? _self.clientBirthPlaceAndDate : clientBirthPlaceAndDate // ignore: cast_nullable_to_non_nullable
as String,clientBirthWeightKg: null == clientBirthWeightKg ? _self.clientBirthWeightKg : clientBirthWeightKg // ignore: cast_nullable_to_non_nullable
as num,clientAddress: null == clientAddress ? _self.clientAddress : clientAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PatientDetailResponse {

 PatientDetail get clientDetail; GuardianDetail get guardianDetail; MedicalHistoryDetail get medicalHistoryDetail;
/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientDetailResponseCopyWith<PatientDetailResponse> get copyWith => _$PatientDetailResponseCopyWithImpl<PatientDetailResponse>(this as PatientDetailResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientDetailResponse&&(identical(other.clientDetail, clientDetail) || other.clientDetail == clientDetail)&&(identical(other.guardianDetail, guardianDetail) || other.guardianDetail == guardianDetail)&&(identical(other.medicalHistoryDetail, medicalHistoryDetail) || other.medicalHistoryDetail == medicalHistoryDetail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientDetail,guardianDetail,medicalHistoryDetail);

@override
String toString() {
  return 'PatientDetailResponse(clientDetail: $clientDetail, guardianDetail: $guardianDetail, medicalHistoryDetail: $medicalHistoryDetail)';
}


}

/// @nodoc
abstract mixin class $PatientDetailResponseCopyWith<$Res>  {
  factory $PatientDetailResponseCopyWith(PatientDetailResponse value, $Res Function(PatientDetailResponse) _then) = _$PatientDetailResponseCopyWithImpl;
@useResult
$Res call({
 PatientDetail clientDetail, GuardianDetail guardianDetail, MedicalHistoryDetail medicalHistoryDetail
});


$PatientDetailCopyWith<$Res> get clientDetail;$GuardianDetailCopyWith<$Res> get guardianDetail;$MedicalHistoryDetailCopyWith<$Res> get medicalHistoryDetail;

}
/// @nodoc
class _$PatientDetailResponseCopyWithImpl<$Res>
    implements $PatientDetailResponseCopyWith<$Res> {
  _$PatientDetailResponseCopyWithImpl(this._self, this._then);

  final PatientDetailResponse _self;
  final $Res Function(PatientDetailResponse) _then;

/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientDetail = null,Object? guardianDetail = null,Object? medicalHistoryDetail = null,}) {
  return _then(_self.copyWith(
clientDetail: null == clientDetail ? _self.clientDetail : clientDetail // ignore: cast_nullable_to_non_nullable
as PatientDetail,guardianDetail: null == guardianDetail ? _self.guardianDetail : guardianDetail // ignore: cast_nullable_to_non_nullable
as GuardianDetail,medicalHistoryDetail: null == medicalHistoryDetail ? _self.medicalHistoryDetail : medicalHistoryDetail // ignore: cast_nullable_to_non_nullable
as MedicalHistoryDetail,
  ));
}
/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientDetailCopyWith<$Res> get clientDetail {
  
  return $PatientDetailCopyWith<$Res>(_self.clientDetail, (value) {
    return _then(_self.copyWith(clientDetail: value));
  });
}/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianDetailCopyWith<$Res> get guardianDetail {
  
  return $GuardianDetailCopyWith<$Res>(_self.guardianDetail, (value) {
    return _then(_self.copyWith(guardianDetail: value));
  });
}/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicalHistoryDetailCopyWith<$Res> get medicalHistoryDetail {
  
  return $MedicalHistoryDetailCopyWith<$Res>(_self.medicalHistoryDetail, (value) {
    return _then(_self.copyWith(medicalHistoryDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatientDetailResponse].
extension PatientDetailResponsePatterns on PatientDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _PatientDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PatientDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatientDetail clientDetail,  GuardianDetail guardianDetail,  MedicalHistoryDetail medicalHistoryDetail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientDetailResponse() when $default != null:
return $default(_that.clientDetail,_that.guardianDetail,_that.medicalHistoryDetail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatientDetail clientDetail,  GuardianDetail guardianDetail,  MedicalHistoryDetail medicalHistoryDetail)  $default,) {final _that = this;
switch (_that) {
case _PatientDetailResponse():
return $default(_that.clientDetail,_that.guardianDetail,_that.medicalHistoryDetail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatientDetail clientDetail,  GuardianDetail guardianDetail,  MedicalHistoryDetail medicalHistoryDetail)?  $default,) {final _that = this;
switch (_that) {
case _PatientDetailResponse() when $default != null:
return $default(_that.clientDetail,_that.guardianDetail,_that.medicalHistoryDetail);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _PatientDetailResponse extends PatientDetailResponse {
  const _PatientDetailResponse({required this.clientDetail, required this.guardianDetail, required this.medicalHistoryDetail}): super._();
  factory _PatientDetailResponse.fromJson(Map<String, dynamic> json) => _$PatientDetailResponseFromJson(json);

@override final  PatientDetail clientDetail;
@override final  GuardianDetail guardianDetail;
@override final  MedicalHistoryDetail medicalHistoryDetail;

/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientDetailResponseCopyWith<_PatientDetailResponse> get copyWith => __$PatientDetailResponseCopyWithImpl<_PatientDetailResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientDetailResponse&&(identical(other.clientDetail, clientDetail) || other.clientDetail == clientDetail)&&(identical(other.guardianDetail, guardianDetail) || other.guardianDetail == guardianDetail)&&(identical(other.medicalHistoryDetail, medicalHistoryDetail) || other.medicalHistoryDetail == medicalHistoryDetail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientDetail,guardianDetail,medicalHistoryDetail);

@override
String toString() {
  return 'PatientDetailResponse(clientDetail: $clientDetail, guardianDetail: $guardianDetail, medicalHistoryDetail: $medicalHistoryDetail)';
}


}

/// @nodoc
abstract mixin class _$PatientDetailResponseCopyWith<$Res> implements $PatientDetailResponseCopyWith<$Res> {
  factory _$PatientDetailResponseCopyWith(_PatientDetailResponse value, $Res Function(_PatientDetailResponse) _then) = __$PatientDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 PatientDetail clientDetail, GuardianDetail guardianDetail, MedicalHistoryDetail medicalHistoryDetail
});


@override $PatientDetailCopyWith<$Res> get clientDetail;@override $GuardianDetailCopyWith<$Res> get guardianDetail;@override $MedicalHistoryDetailCopyWith<$Res> get medicalHistoryDetail;

}
/// @nodoc
class __$PatientDetailResponseCopyWithImpl<$Res>
    implements _$PatientDetailResponseCopyWith<$Res> {
  __$PatientDetailResponseCopyWithImpl(this._self, this._then);

  final _PatientDetailResponse _self;
  final $Res Function(_PatientDetailResponse) _then;

/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientDetail = null,Object? guardianDetail = null,Object? medicalHistoryDetail = null,}) {
  return _then(_PatientDetailResponse(
clientDetail: null == clientDetail ? _self.clientDetail : clientDetail // ignore: cast_nullable_to_non_nullable
as PatientDetail,guardianDetail: null == guardianDetail ? _self.guardianDetail : guardianDetail // ignore: cast_nullable_to_non_nullable
as GuardianDetail,medicalHistoryDetail: null == medicalHistoryDetail ? _self.medicalHistoryDetail : medicalHistoryDetail // ignore: cast_nullable_to_non_nullable
as MedicalHistoryDetail,
  ));
}

/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientDetailCopyWith<$Res> get clientDetail {
  
  return $PatientDetailCopyWith<$Res>(_self.clientDetail, (value) {
    return _then(_self.copyWith(clientDetail: value));
  });
}/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianDetailCopyWith<$Res> get guardianDetail {
  
  return $GuardianDetailCopyWith<$Res>(_self.guardianDetail, (value) {
    return _then(_self.copyWith(guardianDetail: value));
  });
}/// Create a copy of PatientDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicalHistoryDetailCopyWith<$Res> get medicalHistoryDetail {
  
  return $MedicalHistoryDetailCopyWith<$Res>(_self.medicalHistoryDetail, (value) {
    return _then(_self.copyWith(medicalHistoryDetail: value));
  });
}
}

// dart format on
