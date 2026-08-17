// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExaminationDetail {

 String get recordDate; String get nextControlDate; String get complaint; String get subjective; String get objective; String get assessment; String get plan;
/// Create a copy of ExaminationDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExaminationDetailCopyWith<ExaminationDetail> get copyWith => _$ExaminationDetailCopyWithImpl<ExaminationDetail>(this as ExaminationDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExaminationDetail&&(identical(other.recordDate, recordDate) || other.recordDate == recordDate)&&(identical(other.nextControlDate, nextControlDate) || other.nextControlDate == nextControlDate)&&(identical(other.complaint, complaint) || other.complaint == complaint)&&(identical(other.subjective, subjective) || other.subjective == subjective)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.plan, plan) || other.plan == plan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recordDate,nextControlDate,complaint,subjective,objective,assessment,plan);

@override
String toString() {
  return 'ExaminationDetail(recordDate: $recordDate, nextControlDate: $nextControlDate, complaint: $complaint, subjective: $subjective, objective: $objective, assessment: $assessment, plan: $plan)';
}


}

/// @nodoc
abstract mixin class $ExaminationDetailCopyWith<$Res>  {
  factory $ExaminationDetailCopyWith(ExaminationDetail value, $Res Function(ExaminationDetail) _then) = _$ExaminationDetailCopyWithImpl;
@useResult
$Res call({
 String recordDate, String nextControlDate, String complaint, String subjective, String objective, String assessment, String plan
});




}
/// @nodoc
class _$ExaminationDetailCopyWithImpl<$Res>
    implements $ExaminationDetailCopyWith<$Res> {
  _$ExaminationDetailCopyWithImpl(this._self, this._then);

  final ExaminationDetail _self;
  final $Res Function(ExaminationDetail) _then;

/// Create a copy of ExaminationDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recordDate = null,Object? nextControlDate = null,Object? complaint = null,Object? subjective = null,Object? objective = null,Object? assessment = null,Object? plan = null,}) {
  return _then(_self.copyWith(
recordDate: null == recordDate ? _self.recordDate : recordDate // ignore: cast_nullable_to_non_nullable
as String,nextControlDate: null == nextControlDate ? _self.nextControlDate : nextControlDate // ignore: cast_nullable_to_non_nullable
as String,complaint: null == complaint ? _self.complaint : complaint // ignore: cast_nullable_to_non_nullable
as String,subjective: null == subjective ? _self.subjective : subjective // ignore: cast_nullable_to_non_nullable
as String,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String,assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as String,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExaminationDetail].
extension ExaminationDetailPatterns on ExaminationDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExaminationDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExaminationDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExaminationDetail value)  $default,){
final _that = this;
switch (_that) {
case _ExaminationDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExaminationDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ExaminationDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String recordDate,  String nextControlDate,  String complaint,  String subjective,  String objective,  String assessment,  String plan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExaminationDetail() when $default != null:
return $default(_that.recordDate,_that.nextControlDate,_that.complaint,_that.subjective,_that.objective,_that.assessment,_that.plan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String recordDate,  String nextControlDate,  String complaint,  String subjective,  String objective,  String assessment,  String plan)  $default,) {final _that = this;
switch (_that) {
case _ExaminationDetail():
return $default(_that.recordDate,_that.nextControlDate,_that.complaint,_that.subjective,_that.objective,_that.assessment,_that.plan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String recordDate,  String nextControlDate,  String complaint,  String subjective,  String objective,  String assessment,  String plan)?  $default,) {final _that = this;
switch (_that) {
case _ExaminationDetail() when $default != null:
return $default(_that.recordDate,_that.nextControlDate,_that.complaint,_that.subjective,_that.objective,_that.assessment,_that.plan);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _ExaminationDetail extends ExaminationDetail {
  const _ExaminationDetail({required this.recordDate, required this.nextControlDate, required this.complaint, required this.subjective, required this.objective, required this.assessment, required this.plan}): super._();
  factory _ExaminationDetail.fromJson(Map<String, dynamic> json) => _$ExaminationDetailFromJson(json);

@override final  String recordDate;
@override final  String nextControlDate;
@override final  String complaint;
@override final  String subjective;
@override final  String objective;
@override final  String assessment;
@override final  String plan;

/// Create a copy of ExaminationDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExaminationDetailCopyWith<_ExaminationDetail> get copyWith => __$ExaminationDetailCopyWithImpl<_ExaminationDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExaminationDetail&&(identical(other.recordDate, recordDate) || other.recordDate == recordDate)&&(identical(other.nextControlDate, nextControlDate) || other.nextControlDate == nextControlDate)&&(identical(other.complaint, complaint) || other.complaint == complaint)&&(identical(other.subjective, subjective) || other.subjective == subjective)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.plan, plan) || other.plan == plan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recordDate,nextControlDate,complaint,subjective,objective,assessment,plan);

@override
String toString() {
  return 'ExaminationDetail(recordDate: $recordDate, nextControlDate: $nextControlDate, complaint: $complaint, subjective: $subjective, objective: $objective, assessment: $assessment, plan: $plan)';
}


}

/// @nodoc
abstract mixin class _$ExaminationDetailCopyWith<$Res> implements $ExaminationDetailCopyWith<$Res> {
  factory _$ExaminationDetailCopyWith(_ExaminationDetail value, $Res Function(_ExaminationDetail) _then) = __$ExaminationDetailCopyWithImpl;
@override @useResult
$Res call({
 String recordDate, String nextControlDate, String complaint, String subjective, String objective, String assessment, String plan
});




}
/// @nodoc
class __$ExaminationDetailCopyWithImpl<$Res>
    implements _$ExaminationDetailCopyWith<$Res> {
  __$ExaminationDetailCopyWithImpl(this._self, this._then);

  final _ExaminationDetail _self;
  final $Res Function(_ExaminationDetail) _then;

/// Create a copy of ExaminationDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recordDate = null,Object? nextControlDate = null,Object? complaint = null,Object? subjective = null,Object? objective = null,Object? assessment = null,Object? plan = null,}) {
  return _then(_ExaminationDetail(
recordDate: null == recordDate ? _self.recordDate : recordDate // ignore: cast_nullable_to_non_nullable
as String,nextControlDate: null == nextControlDate ? _self.nextControlDate : nextControlDate // ignore: cast_nullable_to_non_nullable
as String,complaint: null == complaint ? _self.complaint : complaint // ignore: cast_nullable_to_non_nullable
as String,subjective: null == subjective ? _self.subjective : subjective // ignore: cast_nullable_to_non_nullable
as String,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String,assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as String,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AppointmentDetailResponse {

 String get appointmentID; String get clientID; String get clientDisplayedName; ExaminationDetail get examinationDetail; String get serviceProviderID; String get serviceProviderDisplayedName; Attachments get attachments;
/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentDetailResponseCopyWith<AppointmentDetailResponse> get copyWith => _$AppointmentDetailResponseCopyWithImpl<AppointmentDetailResponse>(this as AppointmentDetailResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentDetailResponse&&(identical(other.appointmentID, appointmentID) || other.appointmentID == appointmentID)&&(identical(other.clientID, clientID) || other.clientID == clientID)&&(identical(other.clientDisplayedName, clientDisplayedName) || other.clientDisplayedName == clientDisplayedName)&&(identical(other.examinationDetail, examinationDetail) || other.examinationDetail == examinationDetail)&&(identical(other.serviceProviderID, serviceProviderID) || other.serviceProviderID == serviceProviderID)&&(identical(other.serviceProviderDisplayedName, serviceProviderDisplayedName) || other.serviceProviderDisplayedName == serviceProviderDisplayedName)&&(identical(other.attachments, attachments) || other.attachments == attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appointmentID,clientID,clientDisplayedName,examinationDetail,serviceProviderID,serviceProviderDisplayedName,attachments);

@override
String toString() {
  return 'AppointmentDetailResponse(appointmentID: $appointmentID, clientID: $clientID, clientDisplayedName: $clientDisplayedName, examinationDetail: $examinationDetail, serviceProviderID: $serviceProviderID, serviceProviderDisplayedName: $serviceProviderDisplayedName, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $AppointmentDetailResponseCopyWith<$Res>  {
  factory $AppointmentDetailResponseCopyWith(AppointmentDetailResponse value, $Res Function(AppointmentDetailResponse) _then) = _$AppointmentDetailResponseCopyWithImpl;
@useResult
$Res call({
 String appointmentID, String clientID, String clientDisplayedName, ExaminationDetail examinationDetail, String serviceProviderID, String serviceProviderDisplayedName, Attachments attachments
});


$ExaminationDetailCopyWith<$Res> get examinationDetail;$AttachmentsCopyWith<$Res> get attachments;

}
/// @nodoc
class _$AppointmentDetailResponseCopyWithImpl<$Res>
    implements $AppointmentDetailResponseCopyWith<$Res> {
  _$AppointmentDetailResponseCopyWithImpl(this._self, this._then);

  final AppointmentDetailResponse _self;
  final $Res Function(AppointmentDetailResponse) _then;

/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appointmentID = null,Object? clientID = null,Object? clientDisplayedName = null,Object? examinationDetail = null,Object? serviceProviderID = null,Object? serviceProviderDisplayedName = null,Object? attachments = null,}) {
  return _then(_self.copyWith(
appointmentID: null == appointmentID ? _self.appointmentID : appointmentID // ignore: cast_nullable_to_non_nullable
as String,clientID: null == clientID ? _self.clientID : clientID // ignore: cast_nullable_to_non_nullable
as String,clientDisplayedName: null == clientDisplayedName ? _self.clientDisplayedName : clientDisplayedName // ignore: cast_nullable_to_non_nullable
as String,examinationDetail: null == examinationDetail ? _self.examinationDetail : examinationDetail // ignore: cast_nullable_to_non_nullable
as ExaminationDetail,serviceProviderID: null == serviceProviderID ? _self.serviceProviderID : serviceProviderID // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedName: null == serviceProviderDisplayedName ? _self.serviceProviderDisplayedName : serviceProviderDisplayedName // ignore: cast_nullable_to_non_nullable
as String,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as Attachments,
  ));
}
/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExaminationDetailCopyWith<$Res> get examinationDetail {
  
  return $ExaminationDetailCopyWith<$Res>(_self.examinationDetail, (value) {
    return _then(_self.copyWith(examinationDetail: value));
  });
}/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttachmentsCopyWith<$Res> get attachments {
  
  return $AttachmentsCopyWith<$Res>(_self.attachments, (value) {
    return _then(_self.copyWith(attachments: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppointmentDetailResponse].
extension AppointmentDetailResponsePatterns on AppointmentDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appointmentID,  String clientID,  String clientDisplayedName,  ExaminationDetail examinationDetail,  String serviceProviderID,  String serviceProviderDisplayedName,  Attachments attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentDetailResponse() when $default != null:
return $default(_that.appointmentID,_that.clientID,_that.clientDisplayedName,_that.examinationDetail,_that.serviceProviderID,_that.serviceProviderDisplayedName,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appointmentID,  String clientID,  String clientDisplayedName,  ExaminationDetail examinationDetail,  String serviceProviderID,  String serviceProviderDisplayedName,  Attachments attachments)  $default,) {final _that = this;
switch (_that) {
case _AppointmentDetailResponse():
return $default(_that.appointmentID,_that.clientID,_that.clientDisplayedName,_that.examinationDetail,_that.serviceProviderID,_that.serviceProviderDisplayedName,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appointmentID,  String clientID,  String clientDisplayedName,  ExaminationDetail examinationDetail,  String serviceProviderID,  String serviceProviderDisplayedName,  Attachments attachments)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentDetailResponse() when $default != null:
return $default(_that.appointmentID,_that.clientID,_that.clientDisplayedName,_that.examinationDetail,_that.serviceProviderID,_that.serviceProviderDisplayedName,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _AppointmentDetailResponse extends AppointmentDetailResponse {
  const _AppointmentDetailResponse({required this.appointmentID, required this.clientID, required this.clientDisplayedName, required this.examinationDetail, required this.serviceProviderID, required this.serviceProviderDisplayedName, required this.attachments}): super._();
  factory _AppointmentDetailResponse.fromJson(Map<String, dynamic> json) => _$AppointmentDetailResponseFromJson(json);

@override final  String appointmentID;
@override final  String clientID;
@override final  String clientDisplayedName;
@override final  ExaminationDetail examinationDetail;
@override final  String serviceProviderID;
@override final  String serviceProviderDisplayedName;
@override final  Attachments attachments;

/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentDetailResponseCopyWith<_AppointmentDetailResponse> get copyWith => __$AppointmentDetailResponseCopyWithImpl<_AppointmentDetailResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentDetailResponse&&(identical(other.appointmentID, appointmentID) || other.appointmentID == appointmentID)&&(identical(other.clientID, clientID) || other.clientID == clientID)&&(identical(other.clientDisplayedName, clientDisplayedName) || other.clientDisplayedName == clientDisplayedName)&&(identical(other.examinationDetail, examinationDetail) || other.examinationDetail == examinationDetail)&&(identical(other.serviceProviderID, serviceProviderID) || other.serviceProviderID == serviceProviderID)&&(identical(other.serviceProviderDisplayedName, serviceProviderDisplayedName) || other.serviceProviderDisplayedName == serviceProviderDisplayedName)&&(identical(other.attachments, attachments) || other.attachments == attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appointmentID,clientID,clientDisplayedName,examinationDetail,serviceProviderID,serviceProviderDisplayedName,attachments);

@override
String toString() {
  return 'AppointmentDetailResponse(appointmentID: $appointmentID, clientID: $clientID, clientDisplayedName: $clientDisplayedName, examinationDetail: $examinationDetail, serviceProviderID: $serviceProviderID, serviceProviderDisplayedName: $serviceProviderDisplayedName, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$AppointmentDetailResponseCopyWith<$Res> implements $AppointmentDetailResponseCopyWith<$Res> {
  factory _$AppointmentDetailResponseCopyWith(_AppointmentDetailResponse value, $Res Function(_AppointmentDetailResponse) _then) = __$AppointmentDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String appointmentID, String clientID, String clientDisplayedName, ExaminationDetail examinationDetail, String serviceProviderID, String serviceProviderDisplayedName, Attachments attachments
});


@override $ExaminationDetailCopyWith<$Res> get examinationDetail;@override $AttachmentsCopyWith<$Res> get attachments;

}
/// @nodoc
class __$AppointmentDetailResponseCopyWithImpl<$Res>
    implements _$AppointmentDetailResponseCopyWith<$Res> {
  __$AppointmentDetailResponseCopyWithImpl(this._self, this._then);

  final _AppointmentDetailResponse _self;
  final $Res Function(_AppointmentDetailResponse) _then;

/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appointmentID = null,Object? clientID = null,Object? clientDisplayedName = null,Object? examinationDetail = null,Object? serviceProviderID = null,Object? serviceProviderDisplayedName = null,Object? attachments = null,}) {
  return _then(_AppointmentDetailResponse(
appointmentID: null == appointmentID ? _self.appointmentID : appointmentID // ignore: cast_nullable_to_non_nullable
as String,clientID: null == clientID ? _self.clientID : clientID // ignore: cast_nullable_to_non_nullable
as String,clientDisplayedName: null == clientDisplayedName ? _self.clientDisplayedName : clientDisplayedName // ignore: cast_nullable_to_non_nullable
as String,examinationDetail: null == examinationDetail ? _self.examinationDetail : examinationDetail // ignore: cast_nullable_to_non_nullable
as ExaminationDetail,serviceProviderID: null == serviceProviderID ? _self.serviceProviderID : serviceProviderID // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedName: null == serviceProviderDisplayedName ? _self.serviceProviderDisplayedName : serviceProviderDisplayedName // ignore: cast_nullable_to_non_nullable
as String,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as Attachments,
  ));
}

/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExaminationDetailCopyWith<$Res> get examinationDetail {
  
  return $ExaminationDetailCopyWith<$Res>(_self.examinationDetail, (value) {
    return _then(_self.copyWith(examinationDetail: value));
  });
}/// Create a copy of AppointmentDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttachmentsCopyWith<$Res> get attachments {
  
  return $AttachmentsCopyWith<$Res>(_self.attachments, (value) {
    return _then(_self.copyWith(attachments: value));
  });
}
}

// dart format on
