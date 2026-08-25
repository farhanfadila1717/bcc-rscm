// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceSummary {

 String get serviceID; String get serviceDate; String get serviceName; String get serviceStartTime; String get serviceProviderDisplayedName; String get serviceProviderDisplayedTag;
/// Create a copy of ServiceSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceSummaryCopyWith<ServiceSummary> get copyWith => _$ServiceSummaryCopyWithImpl<ServiceSummary>(this as ServiceSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceSummary&&(identical(other.serviceID, serviceID) || other.serviceID == serviceID)&&(identical(other.serviceDate, serviceDate) || other.serviceDate == serviceDate)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.serviceStartTime, serviceStartTime) || other.serviceStartTime == serviceStartTime)&&(identical(other.serviceProviderDisplayedName, serviceProviderDisplayedName) || other.serviceProviderDisplayedName == serviceProviderDisplayedName)&&(identical(other.serviceProviderDisplayedTag, serviceProviderDisplayedTag) || other.serviceProviderDisplayedTag == serviceProviderDisplayedTag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceID,serviceDate,serviceName,serviceStartTime,serviceProviderDisplayedName,serviceProviderDisplayedTag);

@override
String toString() {
  return 'ServiceSummary(serviceID: $serviceID, serviceDate: $serviceDate, serviceName: $serviceName, serviceStartTime: $serviceStartTime, serviceProviderDisplayedName: $serviceProviderDisplayedName, serviceProviderDisplayedTag: $serviceProviderDisplayedTag)';
}


}

/// @nodoc
abstract mixin class $ServiceSummaryCopyWith<$Res>  {
  factory $ServiceSummaryCopyWith(ServiceSummary value, $Res Function(ServiceSummary) _then) = _$ServiceSummaryCopyWithImpl;
@useResult
$Res call({
 String serviceID, String serviceDate, String serviceName, String serviceStartTime, String serviceProviderDisplayedName, String serviceProviderDisplayedTag
});




}
/// @nodoc
class _$ServiceSummaryCopyWithImpl<$Res>
    implements $ServiceSummaryCopyWith<$Res> {
  _$ServiceSummaryCopyWithImpl(this._self, this._then);

  final ServiceSummary _self;
  final $Res Function(ServiceSummary) _then;

/// Create a copy of ServiceSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceID = null,Object? serviceDate = null,Object? serviceName = null,Object? serviceStartTime = null,Object? serviceProviderDisplayedName = null,Object? serviceProviderDisplayedTag = null,}) {
  return _then(ServiceSummary(
serviceID: null == serviceID ? _self.serviceID : serviceID // ignore: cast_nullable_to_non_nullable
as String,serviceDate: null == serviceDate ? _self.serviceDate : serviceDate // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,serviceStartTime: null == serviceStartTime ? _self.serviceStartTime : serviceStartTime // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedName: null == serviceProviderDisplayedName ? _self.serviceProviderDisplayedName : serviceProviderDisplayedName // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedTag: null == serviceProviderDisplayedTag ? _self.serviceProviderDisplayedTag : serviceProviderDisplayedTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceSummary].
extension ServiceSummaryPatterns on ServiceSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceSummary value)  $default,){
final _that = this;
switch (_that) {
case _ServiceSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serviceID,  String serviceDate,  String serviceName,  String serviceStartTime,  String serviceProviderDisplayedName,  String serviceProviderDisplayedTag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceSummary() when $default != null:
return $default(_that.serviceID,_that.serviceDate,_that.serviceName,_that.serviceStartTime,_that.serviceProviderDisplayedName,_that.serviceProviderDisplayedTag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serviceID,  String serviceDate,  String serviceName,  String serviceStartTime,  String serviceProviderDisplayedName,  String serviceProviderDisplayedTag)  $default,) {final _that = this;
switch (_that) {
case _ServiceSummary():
return $default(_that.serviceID,_that.serviceDate,_that.serviceName,_that.serviceStartTime,_that.serviceProviderDisplayedName,_that.serviceProviderDisplayedTag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serviceID,  String serviceDate,  String serviceName,  String serviceStartTime,  String serviceProviderDisplayedName,  String serviceProviderDisplayedTag)?  $default,) {final _that = this;
switch (_that) {
case _ServiceSummary() when $default != null:
return $default(_that.serviceID,_that.serviceDate,_that.serviceName,_that.serviceStartTime,_that.serviceProviderDisplayedName,_that.serviceProviderDisplayedTag);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _ServiceSummary extends ServiceSummary {
  const _ServiceSummary({required this.serviceID, required this.serviceDate, required this.serviceName, required this.serviceStartTime, required this.serviceProviderDisplayedName, required this.serviceProviderDisplayedTag}): super._();
  factory _ServiceSummary.fromJson(Map<String, dynamic> json) => _$ServiceSummaryFromJson(json);

@override final  String serviceID;
@override final  String serviceDate;
@override final  String serviceName;
@override final  String serviceStartTime;
@override final  String serviceProviderDisplayedName;
@override final  String serviceProviderDisplayedTag;

/// Create a copy of ServiceSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceSummaryCopyWith<_ServiceSummary> get copyWith => __$ServiceSummaryCopyWithImpl<_ServiceSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceSummary&&(identical(other.serviceID, serviceID) || other.serviceID == serviceID)&&(identical(other.serviceDate, serviceDate) || other.serviceDate == serviceDate)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.serviceStartTime, serviceStartTime) || other.serviceStartTime == serviceStartTime)&&(identical(other.serviceProviderDisplayedName, serviceProviderDisplayedName) || other.serviceProviderDisplayedName == serviceProviderDisplayedName)&&(identical(other.serviceProviderDisplayedTag, serviceProviderDisplayedTag) || other.serviceProviderDisplayedTag == serviceProviderDisplayedTag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceID,serviceDate,serviceName,serviceStartTime,serviceProviderDisplayedName,serviceProviderDisplayedTag);

@override
String toString() {
  return 'ServiceSummary(serviceID: $serviceID, serviceDate: $serviceDate, serviceName: $serviceName, serviceStartTime: $serviceStartTime, serviceProviderDisplayedName: $serviceProviderDisplayedName, serviceProviderDisplayedTag: $serviceProviderDisplayedTag)';
}


}

/// @nodoc
abstract mixin class _$ServiceSummaryCopyWith<$Res> implements $ServiceSummaryCopyWith<$Res> {
  factory _$ServiceSummaryCopyWith(_ServiceSummary value, $Res Function(_ServiceSummary) _then) = __$ServiceSummaryCopyWithImpl;
@override @useResult
$Res call({
 String serviceID, String serviceDate, String serviceName, String serviceStartTime, String serviceProviderDisplayedName, String serviceProviderDisplayedTag
});




}
/// @nodoc
class __$ServiceSummaryCopyWithImpl<$Res>
    implements _$ServiceSummaryCopyWith<$Res> {
  __$ServiceSummaryCopyWithImpl(this._self, this._then);

  final _ServiceSummary _self;
  final $Res Function(_ServiceSummary) _then;

/// Create a copy of ServiceSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceID = null,Object? serviceDate = null,Object? serviceName = null,Object? serviceStartTime = null,Object? serviceProviderDisplayedName = null,Object? serviceProviderDisplayedTag = null,}) {
  return _then(_ServiceSummary(
serviceID: null == serviceID ? _self.serviceID : serviceID // ignore: cast_nullable_to_non_nullable
as String,serviceDate: null == serviceDate ? _self.serviceDate : serviceDate // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,serviceStartTime: null == serviceStartTime ? _self.serviceStartTime : serviceStartTime // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedName: null == serviceProviderDisplayedName ? _self.serviceProviderDisplayedName : serviceProviderDisplayedName // ignore: cast_nullable_to_non_nullable
as String,serviceProviderDisplayedTag: null == serviceProviderDisplayedTag ? _self.serviceProviderDisplayedTag : serviceProviderDisplayedTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ServiceSummaryList {

 List<ServiceSummary> get serviceSummaryList;
/// Create a copy of ServiceSummaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceSummaryListCopyWith<ServiceSummaryList> get copyWith => _$ServiceSummaryListCopyWithImpl<ServiceSummaryList>(this as ServiceSummaryList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceSummaryList&&const DeepCollectionEquality().equals(other.serviceSummaryList, serviceSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(serviceSummaryList));

@override
String toString() {
  return 'ServiceSummaryList(serviceSummaryList: $serviceSummaryList)';
}


}

/// @nodoc
abstract mixin class $ServiceSummaryListCopyWith<$Res>  {
  factory $ServiceSummaryListCopyWith(ServiceSummaryList value, $Res Function(ServiceSummaryList) _then) = _$ServiceSummaryListCopyWithImpl;
@useResult
$Res call({
 List<ServiceSummary> serviceSummaryList
});




}
/// @nodoc
class _$ServiceSummaryListCopyWithImpl<$Res>
    implements $ServiceSummaryListCopyWith<$Res> {
  _$ServiceSummaryListCopyWithImpl(this._self, this._then);

  final ServiceSummaryList _self;
  final $Res Function(ServiceSummaryList) _then;

/// Create a copy of ServiceSummaryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceSummaryList = null,}) {
  return _then(ServiceSummaryList(
serviceSummaryList: null == serviceSummaryList ? _self.serviceSummaryList : serviceSummaryList // ignore: cast_nullable_to_non_nullable
as List<ServiceSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceSummaryList].
extension ServiceSummaryListPatterns on ServiceSummaryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceSummaryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceSummaryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceSummaryList value)  $default,){
final _that = this;
switch (_that) {
case _ServiceSummaryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceSummaryList value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceSummaryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ServiceSummary> serviceSummaryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceSummaryList() when $default != null:
return $default(_that.serviceSummaryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ServiceSummary> serviceSummaryList)  $default,) {final _that = this;
switch (_that) {
case _ServiceSummaryList():
return $default(_that.serviceSummaryList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ServiceSummary> serviceSummaryList)?  $default,) {final _that = this;
switch (_that) {
case _ServiceSummaryList() when $default != null:
return $default(_that.serviceSummaryList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal, createToJson: false)
class _ServiceSummaryList extends ServiceSummaryList {
  const _ServiceSummaryList({required  List<ServiceSummary> serviceSummaryList}): _serviceSummaryList = serviceSummaryList,super._();
  factory _ServiceSummaryList.fromJson(Map<String, dynamic> json) => _$ServiceSummaryListFromJson(json);

 final  List<ServiceSummary> _serviceSummaryList;
@override List<ServiceSummary> get serviceSummaryList {
  if (_serviceSummaryList is EqualUnmodifiableListView) return _serviceSummaryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_serviceSummaryList);
}


/// Create a copy of ServiceSummaryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceSummaryListCopyWith<_ServiceSummaryList> get copyWith => __$ServiceSummaryListCopyWithImpl<_ServiceSummaryList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceSummaryList&&const DeepCollectionEquality().equals(other._serviceSummaryList, _serviceSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_serviceSummaryList));

@override
String toString() {
  return 'ServiceSummaryList(serviceSummaryList: $serviceSummaryList)';
}


}

/// @nodoc
abstract mixin class _$ServiceSummaryListCopyWith<$Res> implements $ServiceSummaryListCopyWith<$Res> {
  factory _$ServiceSummaryListCopyWith(_ServiceSummaryList value, $Res Function(_ServiceSummaryList) _then) = __$ServiceSummaryListCopyWithImpl;
@override @useResult
$Res call({
 List<ServiceSummary> serviceSummaryList
});




}
/// @nodoc
class __$ServiceSummaryListCopyWithImpl<$Res>
    implements _$ServiceSummaryListCopyWith<$Res> {
  __$ServiceSummaryListCopyWithImpl(this._self, this._then);

  final _ServiceSummaryList _self;
  final $Res Function(_ServiceSummaryList) _then;

/// Create a copy of ServiceSummaryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceSummaryList = null,}) {
  return _then(_ServiceSummaryList(
serviceSummaryList: null == serviceSummaryList ? _self._serviceSummaryList : serviceSummaryList // ignore: cast_nullable_to_non_nullable
as List<ServiceSummary>,
  ));
}


}

// dart format on
