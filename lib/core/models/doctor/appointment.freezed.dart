// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentSummary {

 String get appointmentID; String get appointmentDate; String get appointmentName; String get appointmentStartTime; String get serviceProviderDisplayedName; String get serviceProviderDisplayedTag;
/// Create a copy of AppointmentSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentSummaryCopyWith<AppointmentSummary> get copyWith => _$AppointmentSummaryCopyWithImpl<AppointmentSummary>(this as AppointmentSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentSummary&&(identical(other.appointmentID, appointmentID) || other.appointmentID == appointmentID)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.appointmentName, appointmentName) || other.appointmentName == appointmentName)&&(identical(other.appointmentStartTime, appointmentStartTime) || other.appointmentStartTime == appointmentStartTime)&&(identical(other.serviceProviderDisplayedName, serviceProviderDisplayedName) || other.serviceProviderDisplayedName == serviceProviderDisplayedName)&&(identical(other.serviceProviderDisplayedTag, serviceProviderDisplayedTag) || other.serviceProviderDisplayedTag == serviceProviderDisplayedTag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appointmentID,appointmentDate,appointmentName,appointmentStartTime,serviceProviderDisplayedName,serviceProviderDisplayedTag);

@override
String toString() {
  return 'AppointmentSummary(appointmentID: $appointmentID, appointmentDate: $appointmentDate, appointmentName: $appointmentName, appointmentStartTime: $appointmentStartTime, serviceProviderDisplayedName: $serviceProviderDisplayedName, serviceProviderDisplayedTag: $serviceProviderDisplayedTag)';
}


}

/// @nodoc
abstract mixin class $AppointmentSummaryCopyWith<$Res>  {
  factory $AppointmentSummaryCopyWith(AppointmentSummary value, $Res Function(AppointmentSummary) _then) = _$AppointmentSummaryCopyWithImpl;
@useResult
$Res call({
 String appointmentID, String appointmentDate, String appointmentName, String appointmentStartTime, String serviceProviderDisplayedName, String serviceProviderDisplayedTag
});




}
/// @nodoc
class _$AppointmentSummaryCopyWithImpl<$Res>
    implements $AppointmentSummaryCopyWith<$Res> {
  _$AppointmentSummaryCopyWithImpl(this._self, this._then);

  final AppointmentSummary _self;
  final $Res Function(AppointmentSummary) _then;

/// Create a copy of AppointmentSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appointmentID = null,Object? appointmentDate = null,Object? appointmentName = null,Object? appointmentStartTime = null,Object? serviceProviderDisplayedName = null,Object? serviceProviderDisplayedTag = null,}) {
  return _then(_self.copyWith(
appointmentID: null == appointmentID ? _self.appointmentID : appointmentID // ignore: cast_nullable_to_non_nullable
as String,appointmentDate: null == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as String,appointmentName: null == appointmentName ? _self.appointmentName : appointmentName // ignore: cast_nullable_to_non_nullable
as String,appointmentStartTime: null == appointmentStartTime ? _self.appointmentStartTime : appointmentStartTime // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedName: null == serviceProviderDisplayedName ? _self.serviceProviderDisplayedName : serviceProviderDisplayedName // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedTag: null == serviceProviderDisplayedTag ? _self.serviceProviderDisplayedTag : serviceProviderDisplayedTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentSummary].
extension AppointmentSummaryPatterns on AppointmentSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentSummary value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appointmentID,  String appointmentDate,  String appointmentName,  String appointmentStartTime,  String serviceProviderDisplayedName,  String serviceProviderDisplayedTag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentSummary() when $default != null:
return $default(_that.appointmentID,_that.appointmentDate,_that.appointmentName,_that.appointmentStartTime,_that.serviceProviderDisplayedName,_that.serviceProviderDisplayedTag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appointmentID,  String appointmentDate,  String appointmentName,  String appointmentStartTime,  String serviceProviderDisplayedName,  String serviceProviderDisplayedTag)  $default,) {final _that = this;
switch (_that) {
case _AppointmentSummary():
return $default(_that.appointmentID,_that.appointmentDate,_that.appointmentName,_that.appointmentStartTime,_that.serviceProviderDisplayedName,_that.serviceProviderDisplayedTag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appointmentID,  String appointmentDate,  String appointmentName,  String appointmentStartTime,  String serviceProviderDisplayedName,  String serviceProviderDisplayedTag)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentSummary() when $default != null:
return $default(_that.appointmentID,_that.appointmentDate,_that.appointmentName,_that.appointmentStartTime,_that.serviceProviderDisplayedName,_that.serviceProviderDisplayedTag);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _AppointmentSummary extends AppointmentSummary {
  const _AppointmentSummary({required this.appointmentID, required this.appointmentDate, required this.appointmentName, required this.appointmentStartTime, required this.serviceProviderDisplayedName, required this.serviceProviderDisplayedTag}): super._();
  factory _AppointmentSummary.fromJson(Map<String, dynamic> json) => _$AppointmentSummaryFromJson(json);

@override final  String appointmentID;
@override final  String appointmentDate;
@override final  String appointmentName;
@override final  String appointmentStartTime;
@override final  String serviceProviderDisplayedName;
@override final  String serviceProviderDisplayedTag;

/// Create a copy of AppointmentSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentSummaryCopyWith<_AppointmentSummary> get copyWith => __$AppointmentSummaryCopyWithImpl<_AppointmentSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentSummary&&(identical(other.appointmentID, appointmentID) || other.appointmentID == appointmentID)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.appointmentName, appointmentName) || other.appointmentName == appointmentName)&&(identical(other.appointmentStartTime, appointmentStartTime) || other.appointmentStartTime == appointmentStartTime)&&(identical(other.serviceProviderDisplayedName, serviceProviderDisplayedName) || other.serviceProviderDisplayedName == serviceProviderDisplayedName)&&(identical(other.serviceProviderDisplayedTag, serviceProviderDisplayedTag) || other.serviceProviderDisplayedTag == serviceProviderDisplayedTag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appointmentID,appointmentDate,appointmentName,appointmentStartTime,serviceProviderDisplayedName,serviceProviderDisplayedTag);

@override
String toString() {
  return 'AppointmentSummary(appointmentID: $appointmentID, appointmentDate: $appointmentDate, appointmentName: $appointmentName, appointmentStartTime: $appointmentStartTime, serviceProviderDisplayedName: $serviceProviderDisplayedName, serviceProviderDisplayedTag: $serviceProviderDisplayedTag)';
}


}

/// @nodoc
abstract mixin class _$AppointmentSummaryCopyWith<$Res> implements $AppointmentSummaryCopyWith<$Res> {
  factory _$AppointmentSummaryCopyWith(_AppointmentSummary value, $Res Function(_AppointmentSummary) _then) = __$AppointmentSummaryCopyWithImpl;
@override @useResult
$Res call({
 String appointmentID, String appointmentDate, String appointmentName, String appointmentStartTime, String serviceProviderDisplayedName, String serviceProviderDisplayedTag
});




}
/// @nodoc
class __$AppointmentSummaryCopyWithImpl<$Res>
    implements _$AppointmentSummaryCopyWith<$Res> {
  __$AppointmentSummaryCopyWithImpl(this._self, this._then);

  final _AppointmentSummary _self;
  final $Res Function(_AppointmentSummary) _then;

/// Create a copy of AppointmentSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appointmentID = null,Object? appointmentDate = null,Object? appointmentName = null,Object? appointmentStartTime = null,Object? serviceProviderDisplayedName = null,Object? serviceProviderDisplayedTag = null,}) {
  return _then(_AppointmentSummary(
appointmentID: null == appointmentID ? _self.appointmentID : appointmentID // ignore: cast_nullable_to_non_nullable
as String,appointmentDate: null == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as String,appointmentName: null == appointmentName ? _self.appointmentName : appointmentName // ignore: cast_nullable_to_non_nullable
as String,appointmentStartTime: null == appointmentStartTime ? _self.appointmentStartTime : appointmentStartTime // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedName: null == serviceProviderDisplayedName ? _self.serviceProviderDisplayedName : serviceProviderDisplayedName // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedTag: null == serviceProviderDisplayedTag ? _self.serviceProviderDisplayedTag : serviceProviderDisplayedTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AppointmentListResponse {

 List<AppointmentSummary> get appointmentSummaryList;
/// Create a copy of AppointmentListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentListResponseCopyWith<AppointmentListResponse> get copyWith => _$AppointmentListResponseCopyWithImpl<AppointmentListResponse>(this as AppointmentListResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentListResponse&&const DeepCollectionEquality().equals(other.appointmentSummaryList, appointmentSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(appointmentSummaryList));

@override
String toString() {
  return 'AppointmentListResponse(appointmentSummaryList: $appointmentSummaryList)';
}


}

/// @nodoc
abstract mixin class $AppointmentListResponseCopyWith<$Res>  {
  factory $AppointmentListResponseCopyWith(AppointmentListResponse value, $Res Function(AppointmentListResponse) _then) = _$AppointmentListResponseCopyWithImpl;
@useResult
$Res call({
 List<AppointmentSummary> appointmentSummaryList
});




}
/// @nodoc
class _$AppointmentListResponseCopyWithImpl<$Res>
    implements $AppointmentListResponseCopyWith<$Res> {
  _$AppointmentListResponseCopyWithImpl(this._self, this._then);

  final AppointmentListResponse _self;
  final $Res Function(AppointmentListResponse) _then;

/// Create a copy of AppointmentListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appointmentSummaryList = null,}) {
  return _then(_self.copyWith(
appointmentSummaryList: null == appointmentSummaryList ? _self.appointmentSummaryList : appointmentSummaryList // ignore: cast_nullable_to_non_nullable
as List<AppointmentSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentListResponse].
extension AppointmentListResponsePatterns on AppointmentListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentListResponse value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AppointmentSummary> appointmentSummaryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentListResponse() when $default != null:
return $default(_that.appointmentSummaryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AppointmentSummary> appointmentSummaryList)  $default,) {final _that = this;
switch (_that) {
case _AppointmentListResponse():
return $default(_that.appointmentSummaryList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AppointmentSummary> appointmentSummaryList)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentListResponse() when $default != null:
return $default(_that.appointmentSummaryList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _AppointmentListResponse extends AppointmentListResponse {
  const _AppointmentListResponse({required final  List<AppointmentSummary> appointmentSummaryList}): _appointmentSummaryList = appointmentSummaryList,super._();
  factory _AppointmentListResponse.fromJson(Map<String, dynamic> json) => _$AppointmentListResponseFromJson(json);

 final  List<AppointmentSummary> _appointmentSummaryList;
@override List<AppointmentSummary> get appointmentSummaryList {
  if (_appointmentSummaryList is EqualUnmodifiableListView) return _appointmentSummaryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointmentSummaryList);
}


/// Create a copy of AppointmentListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentListResponseCopyWith<_AppointmentListResponse> get copyWith => __$AppointmentListResponseCopyWithImpl<_AppointmentListResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentListResponse&&const DeepCollectionEquality().equals(other._appointmentSummaryList, _appointmentSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_appointmentSummaryList));

@override
String toString() {
  return 'AppointmentListResponse(appointmentSummaryList: $appointmentSummaryList)';
}


}

/// @nodoc
abstract mixin class _$AppointmentListResponseCopyWith<$Res> implements $AppointmentListResponseCopyWith<$Res> {
  factory _$AppointmentListResponseCopyWith(_AppointmentListResponse value, $Res Function(_AppointmentListResponse) _then) = __$AppointmentListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<AppointmentSummary> appointmentSummaryList
});




}
/// @nodoc
class __$AppointmentListResponseCopyWithImpl<$Res>
    implements _$AppointmentListResponseCopyWith<$Res> {
  __$AppointmentListResponseCopyWithImpl(this._self, this._then);

  final _AppointmentListResponse _self;
  final $Res Function(_AppointmentListResponse) _then;

/// Create a copy of AppointmentListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appointmentSummaryList = null,}) {
  return _then(_AppointmentListResponse(
appointmentSummaryList: null == appointmentSummaryList ? _self._appointmentSummaryList : appointmentSummaryList // ignore: cast_nullable_to_non_nullable
as List<AppointmentSummary>,
  ));
}


}

// dart format on
