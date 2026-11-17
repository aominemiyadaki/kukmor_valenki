// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_action_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderActionState {

 OrderActionStatus get status; String? get message; String? get errorMessage;
/// Create a copy of OrderActionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderActionStateCopyWith<OrderActionState> get copyWith => _$OrderActionStateCopyWithImpl<OrderActionState>(this as OrderActionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderActionState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,errorMessage);

@override
String toString() {
  return 'OrderActionState(status: $status, message: $message, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $OrderActionStateCopyWith<$Res>  {
  factory $OrderActionStateCopyWith(OrderActionState value, $Res Function(OrderActionState) _then) = _$OrderActionStateCopyWithImpl;
@useResult
$Res call({
 OrderActionStatus status, String? message, String? errorMessage
});




}
/// @nodoc
class _$OrderActionStateCopyWithImpl<$Res>
    implements $OrderActionStateCopyWith<$Res> {
  _$OrderActionStateCopyWithImpl(this._self, this._then);

  final OrderActionState _self;
  final $Res Function(OrderActionState) _then;

/// Create a copy of OrderActionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderActionStatus,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderActionState].
extension OrderActionStatePatterns on OrderActionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderActionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderActionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderActionState value)  $default,){
final _that = this;
switch (_that) {
case _OrderActionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderActionState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderActionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderActionStatus status,  String? message,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderActionState() when $default != null:
return $default(_that.status,_that.message,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderActionStatus status,  String? message,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _OrderActionState():
return $default(_that.status,_that.message,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderActionStatus status,  String? message,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _OrderActionState() when $default != null:
return $default(_that.status,_that.message,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _OrderActionState extends OrderActionState {
  const _OrderActionState({this.status = OrderActionStatus.init, this.message, this.errorMessage}): super._();
  

@override@JsonKey() final  OrderActionStatus status;
@override final  String? message;
@override final  String? errorMessage;

/// Create a copy of OrderActionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderActionStateCopyWith<_OrderActionState> get copyWith => __$OrderActionStateCopyWithImpl<_OrderActionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderActionState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,errorMessage);

@override
String toString() {
  return 'OrderActionState(status: $status, message: $message, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$OrderActionStateCopyWith<$Res> implements $OrderActionStateCopyWith<$Res> {
  factory _$OrderActionStateCopyWith(_OrderActionState value, $Res Function(_OrderActionState) _then) = __$OrderActionStateCopyWithImpl;
@override @useResult
$Res call({
 OrderActionStatus status, String? message, String? errorMessage
});




}
/// @nodoc
class __$OrderActionStateCopyWithImpl<$Res>
    implements _$OrderActionStateCopyWith<$Res> {
  __$OrderActionStateCopyWithImpl(this._self, this._then);

  final _OrderActionState _self;
  final $Res Function(_OrderActionState) _then;

/// Create a copy of OrderActionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? errorMessage = freezed,}) {
  return _then(_OrderActionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderActionStatus,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
