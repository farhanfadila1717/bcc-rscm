// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientSummary {

 String get clientDisplayPictureUrl; String get clientName; String get clientId; String get clientAge; String get clientGender; String get clientPhoneNumber; String get clientEmail;
/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientSummaryCopyWith<PatientSummary> get copyWith => _$PatientSummaryCopyWithImpl<PatientSummary>(this as PatientSummary, _$identity);

  /// Serializes this PatientSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientSummary&&(identical(other.clientDisplayPictureUrl, clientDisplayPictureUrl) || other.clientDisplayPictureUrl == clientDisplayPictureUrl)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientAge, clientAge) || other.clientAge == clientAge)&&(identical(other.clientGender, clientGender) || other.clientGender == clientGender)&&(identical(other.clientPhoneNumber, clientPhoneNumber) || other.clientPhoneNumber == clientPhoneNumber)&&(identical(other.clientEmail, clientEmail) || other.clientEmail == clientEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientDisplayPictureUrl,clientName,clientId,clientAge,clientGender,clientPhoneNumber,clientEmail);

@override
String toString() {
  return 'PatientSummary(clientDisplayPictureUrl: $clientDisplayPictureUrl, clientName: $clientName, clientId: $clientId, clientAge: $clientAge, clientGender: $clientGender, clientPhoneNumber: $clientPhoneNumber, clientEmail: $clientEmail)';
}


}

/// @nodoc
abstract mixin class $PatientSummaryCopyWith<$Res>  {
  factory $PatientSummaryCopyWith(PatientSummary value, $Res Function(PatientSummary) _then) = _$PatientSummaryCopyWithImpl;
@useResult
$Res call({
 String clientDisplayPictureUrl, String clientName, String clientId, String clientAge, String clientGender, String clientPhoneNumber, String clientEmail
});




}
/// @nodoc
class _$PatientSummaryCopyWithImpl<$Res>
    implements $PatientSummaryCopyWith<$Res> {
  _$PatientSummaryCopyWithImpl(this._self, this._then);

  final PatientSummary _self;
  final $Res Function(PatientSummary) _then;

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientDisplayPictureUrl = null,Object? clientName = null,Object? clientId = null,Object? clientAge = null,Object? clientGender = null,Object? clientPhoneNumber = null,Object? clientEmail = null,}) {
  return _then(PatientSummary(
clientDisplayPictureUrl: null == clientDisplayPictureUrl ? _self.clientDisplayPictureUrl : clientDisplayPictureUrl // ignore: cast_nullable_to_non_nullable
as String,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,clientAge: null == clientAge ? _self.clientAge : clientAge // ignore: cast_nullable_to_non_nullable
as String,clientGender: null == clientGender ? _self.clientGender : clientGender // ignore: cast_nullable_to_non_nullable
as String,clientPhoneNumber: null == clientPhoneNumber ? _self.clientPhoneNumber : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,clientEmail: null == clientEmail ? _self.clientEmail : clientEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientSummary].
extension PatientSummaryPatterns on PatientSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientSummary value)  $default,){
final _that = this;
switch (_that) {
case _PatientSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientSummary value)?  $default,){
final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientDisplayPictureUrl,  String clientName,  String clientId,  String clientAge,  String clientGender,  String clientPhoneNumber,  String clientEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
return $default(_that.clientDisplayPictureUrl,_that.clientName,_that.clientId,_that.clientAge,_that.clientGender,_that.clientPhoneNumber,_that.clientEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientDisplayPictureUrl,  String clientName,  String clientId,  String clientAge,  String clientGender,  String clientPhoneNumber,  String clientEmail)  $default,) {final _that = this;
switch (_that) {
case _PatientSummary():
return $default(_that.clientDisplayPictureUrl,_that.clientName,_that.clientId,_that.clientAge,_that.clientGender,_that.clientPhoneNumber,_that.clientEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientDisplayPictureUrl,  String clientName,  String clientId,  String clientAge,  String clientGender,  String clientPhoneNumber,  String clientEmail)?  $default,) {final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
return $default(_that.clientDisplayPictureUrl,_that.clientName,_that.clientId,_that.clientAge,_that.clientGender,_that.clientPhoneNumber,_that.clientEmail);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal)
class _PatientSummary extends PatientSummary {
  const _PatientSummary({required this.clientDisplayPictureUrl, required this.clientName, required this.clientId, required this.clientAge, required this.clientGender, required this.clientPhoneNumber, required this.clientEmail}): super._();
  factory _PatientSummary.fromJson(Map<String, dynamic> json) => _$PatientSummaryFromJson(json);

@override final  String clientDisplayPictureUrl;
@override final  String clientName;
@override final  String clientId;
@override final  String clientAge;
@override final  String clientGender;
@override final  String clientPhoneNumber;
@override final  String clientEmail;

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientSummaryCopyWith<_PatientSummary> get copyWith => __$PatientSummaryCopyWithImpl<_PatientSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientSummary&&(identical(other.clientDisplayPictureUrl, clientDisplayPictureUrl) || other.clientDisplayPictureUrl == clientDisplayPictureUrl)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientAge, clientAge) || other.clientAge == clientAge)&&(identical(other.clientGender, clientGender) || other.clientGender == clientGender)&&(identical(other.clientPhoneNumber, clientPhoneNumber) || other.clientPhoneNumber == clientPhoneNumber)&&(identical(other.clientEmail, clientEmail) || other.clientEmail == clientEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientDisplayPictureUrl,clientName,clientId,clientAge,clientGender,clientPhoneNumber,clientEmail);

@override
String toString() {
  return 'PatientSummary(clientDisplayPictureUrl: $clientDisplayPictureUrl, clientName: $clientName, clientId: $clientId, clientAge: $clientAge, clientGender: $clientGender, clientPhoneNumber: $clientPhoneNumber, clientEmail: $clientEmail)';
}


}

/// @nodoc
abstract mixin class _$PatientSummaryCopyWith<$Res> implements $PatientSummaryCopyWith<$Res> {
  factory _$PatientSummaryCopyWith(_PatientSummary value, $Res Function(_PatientSummary) _then) = __$PatientSummaryCopyWithImpl;
@override @useResult
$Res call({
 String clientDisplayPictureUrl, String clientName, String clientId, String clientAge, String clientGender, String clientPhoneNumber, String clientEmail
});




}
/// @nodoc
class __$PatientSummaryCopyWithImpl<$Res>
    implements _$PatientSummaryCopyWith<$Res> {
  __$PatientSummaryCopyWithImpl(this._self, this._then);

  final _PatientSummary _self;
  final $Res Function(_PatientSummary) _then;

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientDisplayPictureUrl = null,Object? clientName = null,Object? clientId = null,Object? clientAge = null,Object? clientGender = null,Object? clientPhoneNumber = null,Object? clientEmail = null,}) {
  return _then(_PatientSummary(
clientDisplayPictureUrl: null == clientDisplayPictureUrl ? _self.clientDisplayPictureUrl : clientDisplayPictureUrl // ignore: cast_nullable_to_non_nullable
as String,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,clientAge: null == clientAge ? _self.clientAge : clientAge // ignore: cast_nullable_to_non_nullable
as String,clientGender: null == clientGender ? _self.clientGender : clientGender // ignore: cast_nullable_to_non_nullable
as String,clientPhoneNumber: null == clientPhoneNumber ? _self.clientPhoneNumber : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,clientEmail: null == clientEmail ? _self.clientEmail : clientEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PatientSummaryList {

 List<PatientSummary> get clientSummaryList;
/// Create a copy of PatientSummaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientSummaryListCopyWith<PatientSummaryList> get copyWith => _$PatientSummaryListCopyWithImpl<PatientSummaryList>(this as PatientSummaryList, _$identity);

  /// Serializes this PatientSummaryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientSummaryList&&const DeepCollectionEquality().equals(other.clientSummaryList, clientSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(clientSummaryList));

@override
String toString() {
  return 'PatientSummaryList(clientSummaryList: $clientSummaryList)';
}


}

/// @nodoc
abstract mixin class $PatientSummaryListCopyWith<$Res>  {
  factory $PatientSummaryListCopyWith(PatientSummaryList value, $Res Function(PatientSummaryList) _then) = _$PatientSummaryListCopyWithImpl;
@useResult
$Res call({
 List<PatientSummary> clientSummaryList
});




}
/// @nodoc
class _$PatientSummaryListCopyWithImpl<$Res>
    implements $PatientSummaryListCopyWith<$Res> {
  _$PatientSummaryListCopyWithImpl(this._self, this._then);

  final PatientSummaryList _self;
  final $Res Function(PatientSummaryList) _then;

/// Create a copy of PatientSummaryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientSummaryList = null,}) {
  return _then(PatientSummaryList(
clientSummaryList: null == clientSummaryList ? _self.clientSummaryList : clientSummaryList // ignore: cast_nullable_to_non_nullable
as List<PatientSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientSummaryList].
extension PatientSummaryListPatterns on PatientSummaryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientSummaryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientSummaryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientSummaryList value)  $default,){
final _that = this;
switch (_that) {
case _PatientSummaryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientSummaryList value)?  $default,){
final _that = this;
switch (_that) {
case _PatientSummaryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PatientSummary> clientSummaryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientSummaryList() when $default != null:
return $default(_that.clientSummaryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PatientSummary> clientSummaryList)  $default,) {final _that = this;
switch (_that) {
case _PatientSummaryList():
return $default(_that.clientSummaryList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PatientSummary> clientSummaryList)?  $default,) {final _that = this;
switch (_that) {
case _PatientSummaryList() when $default != null:
return $default(_that.clientSummaryList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .pascal)
class _PatientSummaryList extends PatientSummaryList {
  const _PatientSummaryList({required  List<PatientSummary> clientSummaryList}): _clientSummaryList = clientSummaryList,super._();
  factory _PatientSummaryList.fromJson(Map<String, dynamic> json) => _$PatientSummaryListFromJson(json);

 final  List<PatientSummary> _clientSummaryList;
@override List<PatientSummary> get clientSummaryList {
  if (_clientSummaryList is EqualUnmodifiableListView) return _clientSummaryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clientSummaryList);
}


/// Create a copy of PatientSummaryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientSummaryListCopyWith<_PatientSummaryList> get copyWith => __$PatientSummaryListCopyWithImpl<_PatientSummaryList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientSummaryListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientSummaryList&&const DeepCollectionEquality().equals(other._clientSummaryList, _clientSummaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_clientSummaryList));

@override
String toString() {
  return 'PatientSummaryList(clientSummaryList: $clientSummaryList)';
}


}

/// @nodoc
abstract mixin class _$PatientSummaryListCopyWith<$Res> implements $PatientSummaryListCopyWith<$Res> {
  factory _$PatientSummaryListCopyWith(_PatientSummaryList value, $Res Function(_PatientSummaryList) _then) = __$PatientSummaryListCopyWithImpl;
@override @useResult
$Res call({
 List<PatientSummary> clientSummaryList
});




}
/// @nodoc
class __$PatientSummaryListCopyWithImpl<$Res>
    implements _$PatientSummaryListCopyWith<$Res> {
  __$PatientSummaryListCopyWithImpl(this._self, this._then);

  final _PatientSummaryList _self;
  final $Res Function(_PatientSummaryList) _then;

/// Create a copy of PatientSummaryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientSummaryList = null,}) {
  return _then(_PatientSummaryList(
clientSummaryList: null == clientSummaryList ? _self._clientSummaryList : clientSummaryList // ignore: cast_nullable_to_non_nullable
as List<PatientSummary>,
  ));
}


}

// dart format on
