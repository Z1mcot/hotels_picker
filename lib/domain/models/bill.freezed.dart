// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bill _$BillFromJson(Map<String, dynamic> json) {
  return _Bill.fromJson(json);
}

/// @nodoc
mixin _$Bill {
  int get tour => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_fee')
  int get fuelFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_fee')
  int get serviceFee => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillCopyWith<Bill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillCopyWith<$Res> {
  factory $BillCopyWith(Bill value, $Res Function(Bill) then) =
      _$BillCopyWithImpl<$Res, Bill>;
  @useResult
  $Res call(
      {int tour,
      @JsonKey(name: 'fuel_fee') int fuelFee,
      @JsonKey(name: 'service_fee') int serviceFee,
      int total});
}

/// @nodoc
class _$BillCopyWithImpl<$Res, $Val extends Bill>
    implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tour = null,
    Object? fuelFee = null,
    Object? serviceFee = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as int,
      fuelFee: null == fuelFee
          ? _value.fuelFee
          : fuelFee // ignore: cast_nullable_to_non_nullable
              as int,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillImplCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$$BillImplCopyWith(
          _$BillImpl value, $Res Function(_$BillImpl) then) =
      __$$BillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tour,
      @JsonKey(name: 'fuel_fee') int fuelFee,
      @JsonKey(name: 'service_fee') int serviceFee,
      int total});
}

/// @nodoc
class __$$BillImplCopyWithImpl<$Res>
    extends _$BillCopyWithImpl<$Res, _$BillImpl>
    implements _$$BillImplCopyWith<$Res> {
  __$$BillImplCopyWithImpl(_$BillImpl _value, $Res Function(_$BillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tour = null,
    Object? fuelFee = null,
    Object? serviceFee = null,
    Object? total = null,
  }) {
    return _then(_$BillImpl(
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as int,
      fuelFee: null == fuelFee
          ? _value.fuelFee
          : fuelFee // ignore: cast_nullable_to_non_nullable
              as int,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillImpl implements _Bill {
  const _$BillImpl(
      {required this.tour,
      @JsonKey(name: 'fuel_fee') required this.fuelFee,
      @JsonKey(name: 'service_fee') required this.serviceFee,
      required this.total});

  factory _$BillImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillImplFromJson(json);

  @override
  final int tour;
  @override
  @JsonKey(name: 'fuel_fee')
  final int fuelFee;
  @override
  @JsonKey(name: 'service_fee')
  final int serviceFee;
  @override
  final int total;

  @override
  String toString() {
    return 'Bill(tour: $tour, fuelFee: $fuelFee, serviceFee: $serviceFee, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillImpl &&
            (identical(other.tour, tour) || other.tour == tour) &&
            (identical(other.fuelFee, fuelFee) || other.fuelFee == fuelFee) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tour, fuelFee, serviceFee, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillImplCopyWith<_$BillImpl> get copyWith =>
      __$$BillImplCopyWithImpl<_$BillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillImplToJson(
      this,
    );
  }
}

abstract class _Bill implements Bill {
  const factory _Bill(
      {required final int tour,
      @JsonKey(name: 'fuel_fee') required final int fuelFee,
      @JsonKey(name: 'service_fee') required final int serviceFee,
      required final int total}) = _$BillImpl;

  factory _Bill.fromJson(Map<String, dynamic> json) = _$BillImpl.fromJson;

  @override
  int get tour;
  @override
  @JsonKey(name: 'fuel_fee')
  int get fuelFee;
  @override
  @JsonKey(name: 'service_fee')
  int get serviceFee;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$BillImplCopyWith<_$BillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
