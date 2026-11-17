// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showcase_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShowcaseState {

 ShowcaseStatus get status; List<ValenkiProduct> get products; ValenkiCategory get selectedCategory; ValenkiProduct? get selectedProductForOrder; int? get selectedSize; String? get errorKey;
/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowcaseStateCopyWith<ShowcaseState> get copyWith => _$ShowcaseStateCopyWithImpl<ShowcaseState>(this as ShowcaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.selectedProductForOrder, selectedProductForOrder) || other.selectedProductForOrder == selectedProductForOrder)&&(identical(other.selectedSize, selectedSize) || other.selectedSize == selectedSize)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(products),selectedCategory,selectedProductForOrder,selectedSize,errorKey);

@override
String toString() {
  return 'ShowcaseState(status: $status, products: $products, selectedCategory: $selectedCategory, selectedProductForOrder: $selectedProductForOrder, selectedSize: $selectedSize, errorKey: $errorKey)';
}


}

/// @nodoc
abstract mixin class $ShowcaseStateCopyWith<$Res>  {
  factory $ShowcaseStateCopyWith(ShowcaseState value, $Res Function(ShowcaseState) _then) = _$ShowcaseStateCopyWithImpl;
@useResult
$Res call({
 ShowcaseStatus status, List<ValenkiProduct> products, ValenkiCategory selectedCategory, ValenkiProduct? selectedProductForOrder, int? selectedSize, String? errorKey
});




}
/// @nodoc
class _$ShowcaseStateCopyWithImpl<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  _$ShowcaseStateCopyWithImpl(this._self, this._then);

  final ShowcaseState _self;
  final $Res Function(ShowcaseState) _then;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? products = null,Object? selectedCategory = null,Object? selectedProductForOrder = freezed,Object? selectedSize = freezed,Object? errorKey = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShowcaseStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ValenkiProduct>,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ValenkiCategory,selectedProductForOrder: freezed == selectedProductForOrder ? _self.selectedProductForOrder : selectedProductForOrder // ignore: cast_nullable_to_non_nullable
as ValenkiProduct?,selectedSize: freezed == selectedSize ? _self.selectedSize : selectedSize // ignore: cast_nullable_to_non_nullable
as int?,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShowcaseState].
extension ShowcaseStatePatterns on ShowcaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShowcaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShowcaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShowcaseState value)  $default,){
final _that = this;
switch (_that) {
case _ShowcaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShowcaseState value)?  $default,){
final _that = this;
switch (_that) {
case _ShowcaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ShowcaseStatus status,  List<ValenkiProduct> products,  ValenkiCategory selectedCategory,  ValenkiProduct? selectedProductForOrder,  int? selectedSize,  String? errorKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShowcaseState() when $default != null:
return $default(_that.status,_that.products,_that.selectedCategory,_that.selectedProductForOrder,_that.selectedSize,_that.errorKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ShowcaseStatus status,  List<ValenkiProduct> products,  ValenkiCategory selectedCategory,  ValenkiProduct? selectedProductForOrder,  int? selectedSize,  String? errorKey)  $default,) {final _that = this;
switch (_that) {
case _ShowcaseState():
return $default(_that.status,_that.products,_that.selectedCategory,_that.selectedProductForOrder,_that.selectedSize,_that.errorKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ShowcaseStatus status,  List<ValenkiProduct> products,  ValenkiCategory selectedCategory,  ValenkiProduct? selectedProductForOrder,  int? selectedSize,  String? errorKey)?  $default,) {final _that = this;
switch (_that) {
case _ShowcaseState() when $default != null:
return $default(_that.status,_that.products,_that.selectedCategory,_that.selectedProductForOrder,_that.selectedSize,_that.errorKey);case _:
  return null;

}
}

}

/// @nodoc


class _ShowcaseState extends ShowcaseState {
  const _ShowcaseState({this.status = ShowcaseStatus.init, this.products = const [], this.selectedCategory = ValenkiCategory.all, this.selectedProductForOrder, this.selectedSize, this.errorKey}): super._();
  

@override@JsonKey() final  ShowcaseStatus status;
@override@JsonKey() final  List<ValenkiProduct> products;
@override@JsonKey() final  ValenkiCategory selectedCategory;
@override final  ValenkiProduct? selectedProductForOrder;
@override final  int? selectedSize;
@override final  String? errorKey;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowcaseStateCopyWith<_ShowcaseState> get copyWith => __$ShowcaseStateCopyWithImpl<_ShowcaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowcaseState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.selectedProductForOrder, selectedProductForOrder) || other.selectedProductForOrder == selectedProductForOrder)&&(identical(other.selectedSize, selectedSize) || other.selectedSize == selectedSize)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(products),selectedCategory,selectedProductForOrder,selectedSize,errorKey);

@override
String toString() {
  return 'ShowcaseState(status: $status, products: $products, selectedCategory: $selectedCategory, selectedProductForOrder: $selectedProductForOrder, selectedSize: $selectedSize, errorKey: $errorKey)';
}


}

/// @nodoc
abstract mixin class _$ShowcaseStateCopyWith<$Res> implements $ShowcaseStateCopyWith<$Res> {
  factory _$ShowcaseStateCopyWith(_ShowcaseState value, $Res Function(_ShowcaseState) _then) = __$ShowcaseStateCopyWithImpl;
@override @useResult
$Res call({
 ShowcaseStatus status, List<ValenkiProduct> products, ValenkiCategory selectedCategory, ValenkiProduct? selectedProductForOrder, int? selectedSize, String? errorKey
});




}
/// @nodoc
class __$ShowcaseStateCopyWithImpl<$Res>
    implements _$ShowcaseStateCopyWith<$Res> {
  __$ShowcaseStateCopyWithImpl(this._self, this._then);

  final _ShowcaseState _self;
  final $Res Function(_ShowcaseState) _then;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? products = null,Object? selectedCategory = null,Object? selectedProductForOrder = freezed,Object? selectedSize = freezed,Object? errorKey = freezed,}) {
  return _then(_ShowcaseState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShowcaseStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ValenkiProduct>,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ValenkiCategory,selectedProductForOrder: freezed == selectedProductForOrder ? _self.selectedProductForOrder : selectedProductForOrder // ignore: cast_nullable_to_non_nullable
as ValenkiProduct?,selectedSize: freezed == selectedSize ? _self.selectedSize : selectedSize // ignore: cast_nullable_to_non_nullable
as int?,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
