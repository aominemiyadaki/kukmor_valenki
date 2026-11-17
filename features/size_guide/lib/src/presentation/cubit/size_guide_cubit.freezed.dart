// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_guide_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SizeGuideState {

 SizeGuideStatus get status; double get currentFootLength; SizeRecommendation? get recommendation; String? get errorKey;
/// Create a copy of SizeGuideState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SizeGuideStateCopyWith<SizeGuideState> get copyWith => _$SizeGuideStateCopyWithImpl<SizeGuideState>(this as SizeGuideState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SizeGuideState&&(identical(other.status, status) || other.status == status)&&(identical(other.currentFootLength, currentFootLength) || other.currentFootLength == currentFootLength)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey));
}


@override
int get hashCode => Object.hash(runtimeType,status,currentFootLength,recommendation,errorKey);

@override
String toString() {
  return 'SizeGuideState(status: $status, currentFootLength: $currentFootLength, recommendation: $recommendation, errorKey: $errorKey)';
}


}

/// @nodoc
abstract mixin class $SizeGuideStateCopyWith<$Res>  {
  factory $SizeGuideStateCopyWith(SizeGuideState value, $Res Function(SizeGuideState) _then) = _$SizeGuideStateCopyWithImpl;
@useResult
$Res call({
 SizeGuideStatus status, double currentFootLength, SizeRecommendation? recommendation, String? errorKey
});




}
/// @nodoc
class _$SizeGuideStateCopyWithImpl<$Res>
    implements $SizeGuideStateCopyWith<$Res> {
  _$SizeGuideStateCopyWithImpl(this._self, this._then);

  final SizeGuideState _self;
  final $Res Function(SizeGuideState) _then;

/// Create a copy of SizeGuideState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? currentFootLength = null,Object? recommendation = freezed,Object? errorKey = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SizeGuideStatus,currentFootLength: null == currentFootLength ? _self.currentFootLength : currentFootLength // ignore: cast_nullable_to_non_nullable
as double,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as SizeRecommendation?,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SizeGuideState].
extension SizeGuideStatePatterns on SizeGuideState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SizeGuideState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SizeGuideState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SizeGuideState value)  $default,){
final _that = this;
switch (_that) {
case _SizeGuideState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SizeGuideState value)?  $default,){
final _that = this;
switch (_that) {
case _SizeGuideState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SizeGuideStatus status,  double currentFootLength,  SizeRecommendation? recommendation,  String? errorKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SizeGuideState() when $default != null:
return $default(_that.status,_that.currentFootLength,_that.recommendation,_that.errorKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SizeGuideStatus status,  double currentFootLength,  SizeRecommendation? recommendation,  String? errorKey)  $default,) {final _that = this;
switch (_that) {
case _SizeGuideState():
return $default(_that.status,_that.currentFootLength,_that.recommendation,_that.errorKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SizeGuideStatus status,  double currentFootLength,  SizeRecommendation? recommendation,  String? errorKey)?  $default,) {final _that = this;
switch (_that) {
case _SizeGuideState() when $default != null:
return $default(_that.status,_that.currentFootLength,_that.recommendation,_that.errorKey);case _:
  return null;

}
}

}

/// @nodoc


class _SizeGuideState extends SizeGuideState {
  const _SizeGuideState({this.status = SizeGuideStatus.init, this.currentFootLength = 26.5, this.recommendation, this.errorKey}): super._();
  

@override@JsonKey() final  SizeGuideStatus status;
@override@JsonKey() final  double currentFootLength;
@override final  SizeRecommendation? recommendation;
@override final  String? errorKey;

/// Create a copy of SizeGuideState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SizeGuideStateCopyWith<_SizeGuideState> get copyWith => __$SizeGuideStateCopyWithImpl<_SizeGuideState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SizeGuideState&&(identical(other.status, status) || other.status == status)&&(identical(other.currentFootLength, currentFootLength) || other.currentFootLength == currentFootLength)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey));
}


@override
int get hashCode => Object.hash(runtimeType,status,currentFootLength,recommendation,errorKey);

@override
String toString() {
  return 'SizeGuideState(status: $status, currentFootLength: $currentFootLength, recommendation: $recommendation, errorKey: $errorKey)';
}


}

/// @nodoc
abstract mixin class _$SizeGuideStateCopyWith<$Res> implements $SizeGuideStateCopyWith<$Res> {
  factory _$SizeGuideStateCopyWith(_SizeGuideState value, $Res Function(_SizeGuideState) _then) = __$SizeGuideStateCopyWithImpl;
@override @useResult
$Res call({
 SizeGuideStatus status, double currentFootLength, SizeRecommendation? recommendation, String? errorKey
});




}
/// @nodoc
class __$SizeGuideStateCopyWithImpl<$Res>
    implements _$SizeGuideStateCopyWith<$Res> {
  __$SizeGuideStateCopyWithImpl(this._self, this._then);

  final _SizeGuideState _self;
  final $Res Function(_SizeGuideState) _then;

/// Create a copy of SizeGuideState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? currentFootLength = null,Object? recommendation = freezed,Object? errorKey = freezed,}) {
  return _then(_SizeGuideState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SizeGuideStatus,currentFootLength: null == currentFootLength ? _self.currentFootLength : currentFootLength // ignore: cast_nullable_to_non_nullable
as double,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as SizeRecommendation?,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
