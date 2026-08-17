// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisDetail {

 String get diagnosisName; String get diagnosisDescription; String get diagnosisDate;
/// Create a copy of DiagnosisDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisDetailCopyWith<DiagnosisDetail> get copyWith => _$DiagnosisDetailCopyWithImpl<DiagnosisDetail>(this as DiagnosisDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisDetail&&(identical(other.diagnosisName, diagnosisName) || other.diagnosisName == diagnosisName)&&(identical(other.diagnosisDescription, diagnosisDescription) || other.diagnosisDescription == diagnosisDescription)&&(identical(other.diagnosisDate, diagnosisDate) || other.diagnosisDate == diagnosisDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diagnosisName,diagnosisDescription,diagnosisDate);

@override
String toString() {
  return 'DiagnosisDetail(diagnosisName: $diagnosisName, diagnosisDescription: $diagnosisDescription, diagnosisDate: $diagnosisDate)';
}


}

/// @nodoc
abstract mixin class $DiagnosisDetailCopyWith<$Res>  {
  factory $DiagnosisDetailCopyWith(DiagnosisDetail value, $Res Function(DiagnosisDetail) _then) = _$DiagnosisDetailCopyWithImpl;
@useResult
$Res call({
 String diagnosisName, String diagnosisDescription, String diagnosisDate
});




}
/// @nodoc
class _$DiagnosisDetailCopyWithImpl<$Res>
    implements $DiagnosisDetailCopyWith<$Res> {
  _$DiagnosisDetailCopyWithImpl(this._self, this._then);

  final DiagnosisDetail _self;
  final $Res Function(DiagnosisDetail) _then;

/// Create a copy of DiagnosisDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? diagnosisName = null,Object? diagnosisDescription = null,Object? diagnosisDate = null,}) {
  return _then(_self.copyWith(
diagnosisName: null == diagnosisName ? _self.diagnosisName : diagnosisName // ignore: cast_nullable_to_non_nullable
as String,diagnosisDescription: null == diagnosisDescription ? _self.diagnosisDescription : diagnosisDescription // ignore: cast_nullable_to_non_nullable
as String,diagnosisDate: null == diagnosisDate ? _self.diagnosisDate : diagnosisDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisDetail].
extension DiagnosisDetailPatterns on DiagnosisDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisDetail value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisDetail value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String diagnosisName,  String diagnosisDescription,  String diagnosisDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisDetail() when $default != null:
return $default(_that.diagnosisName,_that.diagnosisDescription,_that.diagnosisDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String diagnosisName,  String diagnosisDescription,  String diagnosisDate)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisDetail():
return $default(_that.diagnosisName,_that.diagnosisDescription,_that.diagnosisDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String diagnosisName,  String diagnosisDescription,  String diagnosisDate)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisDetail() when $default != null:
return $default(_that.diagnosisName,_that.diagnosisDescription,_that.diagnosisDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _DiagnosisDetail extends DiagnosisDetail {
  const _DiagnosisDetail({required this.diagnosisName, required this.diagnosisDescription, required this.diagnosisDate}): super._();
  factory _DiagnosisDetail.fromJson(Map<String, dynamic> json) => _$DiagnosisDetailFromJson(json);

@override final  String diagnosisName;
@override final  String diagnosisDescription;
@override final  String diagnosisDate;

/// Create a copy of DiagnosisDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisDetailCopyWith<_DiagnosisDetail> get copyWith => __$DiagnosisDetailCopyWithImpl<_DiagnosisDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisDetail&&(identical(other.diagnosisName, diagnosisName) || other.diagnosisName == diagnosisName)&&(identical(other.diagnosisDescription, diagnosisDescription) || other.diagnosisDescription == diagnosisDescription)&&(identical(other.diagnosisDate, diagnosisDate) || other.diagnosisDate == diagnosisDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diagnosisName,diagnosisDescription,diagnosisDate);

@override
String toString() {
  return 'DiagnosisDetail(diagnosisName: $diagnosisName, diagnosisDescription: $diagnosisDescription, diagnosisDate: $diagnosisDate)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisDetailCopyWith<$Res> implements $DiagnosisDetailCopyWith<$Res> {
  factory _$DiagnosisDetailCopyWith(_DiagnosisDetail value, $Res Function(_DiagnosisDetail) _then) = __$DiagnosisDetailCopyWithImpl;
@override @useResult
$Res call({
 String diagnosisName, String diagnosisDescription, String diagnosisDate
});




}
/// @nodoc
class __$DiagnosisDetailCopyWithImpl<$Res>
    implements _$DiagnosisDetailCopyWith<$Res> {
  __$DiagnosisDetailCopyWithImpl(this._self, this._then);

  final _DiagnosisDetail _self;
  final $Res Function(_DiagnosisDetail) _then;

/// Create a copy of DiagnosisDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? diagnosisName = null,Object? diagnosisDescription = null,Object? diagnosisDate = null,}) {
  return _then(_DiagnosisDetail(
diagnosisName: null == diagnosisName ? _self.diagnosisName : diagnosisName // ignore: cast_nullable_to_non_nullable
as String,diagnosisDescription: null == diagnosisDescription ? _self.diagnosisDescription : diagnosisDescription // ignore: cast_nullable_to_non_nullable
as String,diagnosisDate: null == diagnosisDate ? _self.diagnosisDate : diagnosisDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$IntakeDetailResponse {

 String get preOperativeTreatment; String get primaryDiagnosis; String get secondaryDiagnosis; bool get clientHasPierreRobinSequence; bool get clientHasSyndrome; bool get clientHasOtherCongenitalDeformity; DiagnosisDetail get pierreRobinSequenceDetail; DiagnosisDetail get clientSyndromeDetail; List<DiagnosisDetail> get clientSyndromeDetailList;
/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntakeDetailResponseCopyWith<IntakeDetailResponse> get copyWith => _$IntakeDetailResponseCopyWithImpl<IntakeDetailResponse>(this as IntakeDetailResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntakeDetailResponse&&(identical(other.preOperativeTreatment, preOperativeTreatment) || other.preOperativeTreatment == preOperativeTreatment)&&(identical(other.primaryDiagnosis, primaryDiagnosis) || other.primaryDiagnosis == primaryDiagnosis)&&(identical(other.secondaryDiagnosis, secondaryDiagnosis) || other.secondaryDiagnosis == secondaryDiagnosis)&&(identical(other.clientHasPierreRobinSequence, clientHasPierreRobinSequence) || other.clientHasPierreRobinSequence == clientHasPierreRobinSequence)&&(identical(other.clientHasSyndrome, clientHasSyndrome) || other.clientHasSyndrome == clientHasSyndrome)&&(identical(other.clientHasOtherCongenitalDeformity, clientHasOtherCongenitalDeformity) || other.clientHasOtherCongenitalDeformity == clientHasOtherCongenitalDeformity)&&(identical(other.pierreRobinSequenceDetail, pierreRobinSequenceDetail) || other.pierreRobinSequenceDetail == pierreRobinSequenceDetail)&&(identical(other.clientSyndromeDetail, clientSyndromeDetail) || other.clientSyndromeDetail == clientSyndromeDetail)&&const DeepCollectionEquality().equals(other.clientSyndromeDetailList, clientSyndromeDetailList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,preOperativeTreatment,primaryDiagnosis,secondaryDiagnosis,clientHasPierreRobinSequence,clientHasSyndrome,clientHasOtherCongenitalDeformity,pierreRobinSequenceDetail,clientSyndromeDetail,const DeepCollectionEquality().hash(clientSyndromeDetailList));

@override
String toString() {
  return 'IntakeDetailResponse(preOperativeTreatment: $preOperativeTreatment, primaryDiagnosis: $primaryDiagnosis, secondaryDiagnosis: $secondaryDiagnosis, clientHasPierreRobinSequence: $clientHasPierreRobinSequence, clientHasSyndrome: $clientHasSyndrome, clientHasOtherCongenitalDeformity: $clientHasOtherCongenitalDeformity, pierreRobinSequenceDetail: $pierreRobinSequenceDetail, clientSyndromeDetail: $clientSyndromeDetail, clientSyndromeDetailList: $clientSyndromeDetailList)';
}


}

/// @nodoc
abstract mixin class $IntakeDetailResponseCopyWith<$Res>  {
  factory $IntakeDetailResponseCopyWith(IntakeDetailResponse value, $Res Function(IntakeDetailResponse) _then) = _$IntakeDetailResponseCopyWithImpl;
@useResult
$Res call({
 String preOperativeTreatment, String primaryDiagnosis, String secondaryDiagnosis, bool clientHasPierreRobinSequence, bool clientHasSyndrome, bool clientHasOtherCongenitalDeformity, DiagnosisDetail pierreRobinSequenceDetail, DiagnosisDetail clientSyndromeDetail, List<DiagnosisDetail> clientSyndromeDetailList
});


$DiagnosisDetailCopyWith<$Res> get pierreRobinSequenceDetail;$DiagnosisDetailCopyWith<$Res> get clientSyndromeDetail;

}
/// @nodoc
class _$IntakeDetailResponseCopyWithImpl<$Res>
    implements $IntakeDetailResponseCopyWith<$Res> {
  _$IntakeDetailResponseCopyWithImpl(this._self, this._then);

  final IntakeDetailResponse _self;
  final $Res Function(IntakeDetailResponse) _then;

/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preOperativeTreatment = null,Object? primaryDiagnosis = null,Object? secondaryDiagnosis = null,Object? clientHasPierreRobinSequence = null,Object? clientHasSyndrome = null,Object? clientHasOtherCongenitalDeformity = null,Object? pierreRobinSequenceDetail = null,Object? clientSyndromeDetail = null,Object? clientSyndromeDetailList = null,}) {
  return _then(_self.copyWith(
preOperativeTreatment: null == preOperativeTreatment ? _self.preOperativeTreatment : preOperativeTreatment // ignore: cast_nullable_to_non_nullable
as String,primaryDiagnosis: null == primaryDiagnosis ? _self.primaryDiagnosis : primaryDiagnosis // ignore: cast_nullable_to_non_nullable
as String,secondaryDiagnosis: null == secondaryDiagnosis ? _self.secondaryDiagnosis : secondaryDiagnosis // ignore: cast_nullable_to_non_nullable
as String,clientHasPierreRobinSequence: null == clientHasPierreRobinSequence ? _self.clientHasPierreRobinSequence : clientHasPierreRobinSequence // ignore: cast_nullable_to_non_nullable
as bool,clientHasSyndrome: null == clientHasSyndrome ? _self.clientHasSyndrome : clientHasSyndrome // ignore: cast_nullable_to_non_nullable
as bool,clientHasOtherCongenitalDeformity: null == clientHasOtherCongenitalDeformity ? _self.clientHasOtherCongenitalDeformity : clientHasOtherCongenitalDeformity // ignore: cast_nullable_to_non_nullable
as bool,pierreRobinSequenceDetail: null == pierreRobinSequenceDetail ? _self.pierreRobinSequenceDetail : pierreRobinSequenceDetail // ignore: cast_nullable_to_non_nullable
as DiagnosisDetail,clientSyndromeDetail: null == clientSyndromeDetail ? _self.clientSyndromeDetail : clientSyndromeDetail // ignore: cast_nullable_to_non_nullable
as DiagnosisDetail,clientSyndromeDetailList: null == clientSyndromeDetailList ? _self.clientSyndromeDetailList : clientSyndromeDetailList // ignore: cast_nullable_to_non_nullable
as List<DiagnosisDetail>,
  ));
}
/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisDetailCopyWith<$Res> get pierreRobinSequenceDetail {
  
  return $DiagnosisDetailCopyWith<$Res>(_self.pierreRobinSequenceDetail, (value) {
    return _then(_self.copyWith(pierreRobinSequenceDetail: value));
  });
}/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisDetailCopyWith<$Res> get clientSyndromeDetail {
  
  return $DiagnosisDetailCopyWith<$Res>(_self.clientSyndromeDetail, (value) {
    return _then(_self.copyWith(clientSyndromeDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntakeDetailResponse].
extension IntakeDetailResponsePatterns on IntakeDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntakeDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntakeDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntakeDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _IntakeDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntakeDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _IntakeDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String preOperativeTreatment,  String primaryDiagnosis,  String secondaryDiagnosis,  bool clientHasPierreRobinSequence,  bool clientHasSyndrome,  bool clientHasOtherCongenitalDeformity,  DiagnosisDetail pierreRobinSequenceDetail,  DiagnosisDetail clientSyndromeDetail,  List<DiagnosisDetail> clientSyndromeDetailList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntakeDetailResponse() when $default != null:
return $default(_that.preOperativeTreatment,_that.primaryDiagnosis,_that.secondaryDiagnosis,_that.clientHasPierreRobinSequence,_that.clientHasSyndrome,_that.clientHasOtherCongenitalDeformity,_that.pierreRobinSequenceDetail,_that.clientSyndromeDetail,_that.clientSyndromeDetailList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String preOperativeTreatment,  String primaryDiagnosis,  String secondaryDiagnosis,  bool clientHasPierreRobinSequence,  bool clientHasSyndrome,  bool clientHasOtherCongenitalDeformity,  DiagnosisDetail pierreRobinSequenceDetail,  DiagnosisDetail clientSyndromeDetail,  List<DiagnosisDetail> clientSyndromeDetailList)  $default,) {final _that = this;
switch (_that) {
case _IntakeDetailResponse():
return $default(_that.preOperativeTreatment,_that.primaryDiagnosis,_that.secondaryDiagnosis,_that.clientHasPierreRobinSequence,_that.clientHasSyndrome,_that.clientHasOtherCongenitalDeformity,_that.pierreRobinSequenceDetail,_that.clientSyndromeDetail,_that.clientSyndromeDetailList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String preOperativeTreatment,  String primaryDiagnosis,  String secondaryDiagnosis,  bool clientHasPierreRobinSequence,  bool clientHasSyndrome,  bool clientHasOtherCongenitalDeformity,  DiagnosisDetail pierreRobinSequenceDetail,  DiagnosisDetail clientSyndromeDetail,  List<DiagnosisDetail> clientSyndromeDetailList)?  $default,) {final _that = this;
switch (_that) {
case _IntakeDetailResponse() when $default != null:
return $default(_that.preOperativeTreatment,_that.primaryDiagnosis,_that.secondaryDiagnosis,_that.clientHasPierreRobinSequence,_that.clientHasSyndrome,_that.clientHasOtherCongenitalDeformity,_that.pierreRobinSequenceDetail,_that.clientSyndromeDetail,_that.clientSyndromeDetailList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _IntakeDetailResponse extends IntakeDetailResponse {
  const _IntakeDetailResponse({required this.preOperativeTreatment, required this.primaryDiagnosis, required this.secondaryDiagnosis, required this.clientHasPierreRobinSequence, required this.clientHasSyndrome, required this.clientHasOtherCongenitalDeformity, required this.pierreRobinSequenceDetail, required this.clientSyndromeDetail, required final  List<DiagnosisDetail> clientSyndromeDetailList}): _clientSyndromeDetailList = clientSyndromeDetailList,super._();
  factory _IntakeDetailResponse.fromJson(Map<String, dynamic> json) => _$IntakeDetailResponseFromJson(json);

@override final  String preOperativeTreatment;
@override final  String primaryDiagnosis;
@override final  String secondaryDiagnosis;
@override final  bool clientHasPierreRobinSequence;
@override final  bool clientHasSyndrome;
@override final  bool clientHasOtherCongenitalDeformity;
@override final  DiagnosisDetail pierreRobinSequenceDetail;
@override final  DiagnosisDetail clientSyndromeDetail;
 final  List<DiagnosisDetail> _clientSyndromeDetailList;
@override List<DiagnosisDetail> get clientSyndromeDetailList {
  if (_clientSyndromeDetailList is EqualUnmodifiableListView) return _clientSyndromeDetailList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clientSyndromeDetailList);
}


/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntakeDetailResponseCopyWith<_IntakeDetailResponse> get copyWith => __$IntakeDetailResponseCopyWithImpl<_IntakeDetailResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntakeDetailResponse&&(identical(other.preOperativeTreatment, preOperativeTreatment) || other.preOperativeTreatment == preOperativeTreatment)&&(identical(other.primaryDiagnosis, primaryDiagnosis) || other.primaryDiagnosis == primaryDiagnosis)&&(identical(other.secondaryDiagnosis, secondaryDiagnosis) || other.secondaryDiagnosis == secondaryDiagnosis)&&(identical(other.clientHasPierreRobinSequence, clientHasPierreRobinSequence) || other.clientHasPierreRobinSequence == clientHasPierreRobinSequence)&&(identical(other.clientHasSyndrome, clientHasSyndrome) || other.clientHasSyndrome == clientHasSyndrome)&&(identical(other.clientHasOtherCongenitalDeformity, clientHasOtherCongenitalDeformity) || other.clientHasOtherCongenitalDeformity == clientHasOtherCongenitalDeformity)&&(identical(other.pierreRobinSequenceDetail, pierreRobinSequenceDetail) || other.pierreRobinSequenceDetail == pierreRobinSequenceDetail)&&(identical(other.clientSyndromeDetail, clientSyndromeDetail) || other.clientSyndromeDetail == clientSyndromeDetail)&&const DeepCollectionEquality().equals(other._clientSyndromeDetailList, _clientSyndromeDetailList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,preOperativeTreatment,primaryDiagnosis,secondaryDiagnosis,clientHasPierreRobinSequence,clientHasSyndrome,clientHasOtherCongenitalDeformity,pierreRobinSequenceDetail,clientSyndromeDetail,const DeepCollectionEquality().hash(_clientSyndromeDetailList));

@override
String toString() {
  return 'IntakeDetailResponse(preOperativeTreatment: $preOperativeTreatment, primaryDiagnosis: $primaryDiagnosis, secondaryDiagnosis: $secondaryDiagnosis, clientHasPierreRobinSequence: $clientHasPierreRobinSequence, clientHasSyndrome: $clientHasSyndrome, clientHasOtherCongenitalDeformity: $clientHasOtherCongenitalDeformity, pierreRobinSequenceDetail: $pierreRobinSequenceDetail, clientSyndromeDetail: $clientSyndromeDetail, clientSyndromeDetailList: $clientSyndromeDetailList)';
}


}

/// @nodoc
abstract mixin class _$IntakeDetailResponseCopyWith<$Res> implements $IntakeDetailResponseCopyWith<$Res> {
  factory _$IntakeDetailResponseCopyWith(_IntakeDetailResponse value, $Res Function(_IntakeDetailResponse) _then) = __$IntakeDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String preOperativeTreatment, String primaryDiagnosis, String secondaryDiagnosis, bool clientHasPierreRobinSequence, bool clientHasSyndrome, bool clientHasOtherCongenitalDeformity, DiagnosisDetail pierreRobinSequenceDetail, DiagnosisDetail clientSyndromeDetail, List<DiagnosisDetail> clientSyndromeDetailList
});


@override $DiagnosisDetailCopyWith<$Res> get pierreRobinSequenceDetail;@override $DiagnosisDetailCopyWith<$Res> get clientSyndromeDetail;

}
/// @nodoc
class __$IntakeDetailResponseCopyWithImpl<$Res>
    implements _$IntakeDetailResponseCopyWith<$Res> {
  __$IntakeDetailResponseCopyWithImpl(this._self, this._then);

  final _IntakeDetailResponse _self;
  final $Res Function(_IntakeDetailResponse) _then;

/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preOperativeTreatment = null,Object? primaryDiagnosis = null,Object? secondaryDiagnosis = null,Object? clientHasPierreRobinSequence = null,Object? clientHasSyndrome = null,Object? clientHasOtherCongenitalDeformity = null,Object? pierreRobinSequenceDetail = null,Object? clientSyndromeDetail = null,Object? clientSyndromeDetailList = null,}) {
  return _then(_IntakeDetailResponse(
preOperativeTreatment: null == preOperativeTreatment ? _self.preOperativeTreatment : preOperativeTreatment // ignore: cast_nullable_to_non_nullable
as String,primaryDiagnosis: null == primaryDiagnosis ? _self.primaryDiagnosis : primaryDiagnosis // ignore: cast_nullable_to_non_nullable
as String,secondaryDiagnosis: null == secondaryDiagnosis ? _self.secondaryDiagnosis : secondaryDiagnosis // ignore: cast_nullable_to_non_nullable
as String,clientHasPierreRobinSequence: null == clientHasPierreRobinSequence ? _self.clientHasPierreRobinSequence : clientHasPierreRobinSequence // ignore: cast_nullable_to_non_nullable
as bool,clientHasSyndrome: null == clientHasSyndrome ? _self.clientHasSyndrome : clientHasSyndrome // ignore: cast_nullable_to_non_nullable
as bool,clientHasOtherCongenitalDeformity: null == clientHasOtherCongenitalDeformity ? _self.clientHasOtherCongenitalDeformity : clientHasOtherCongenitalDeformity // ignore: cast_nullable_to_non_nullable
as bool,pierreRobinSequenceDetail: null == pierreRobinSequenceDetail ? _self.pierreRobinSequenceDetail : pierreRobinSequenceDetail // ignore: cast_nullable_to_non_nullable
as DiagnosisDetail,clientSyndromeDetail: null == clientSyndromeDetail ? _self.clientSyndromeDetail : clientSyndromeDetail // ignore: cast_nullable_to_non_nullable
as DiagnosisDetail,clientSyndromeDetailList: null == clientSyndromeDetailList ? _self._clientSyndromeDetailList : clientSyndromeDetailList // ignore: cast_nullable_to_non_nullable
as List<DiagnosisDetail>,
  ));
}

/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisDetailCopyWith<$Res> get pierreRobinSequenceDetail {
  
  return $DiagnosisDetailCopyWith<$Res>(_self.pierreRobinSequenceDetail, (value) {
    return _then(_self.copyWith(pierreRobinSequenceDetail: value));
  });
}/// Create a copy of IntakeDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisDetailCopyWith<$Res> get clientSyndromeDetail {
  
  return $DiagnosisDetailCopyWith<$Res>(_self.clientSyndromeDetail, (value) {
    return _then(_self.copyWith(clientSyndromeDetail: value));
  });
}
}

// dart format on
