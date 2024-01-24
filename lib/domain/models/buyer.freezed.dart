// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buyer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Buyer _$BuyerFromJson(Map<String, dynamic> json) {
  return _Buyer.fromJson(json);
}

/// @nodoc
mixin _$Buyer {
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyerCopyWith<Buyer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyerCopyWith<$Res> {
  factory $BuyerCopyWith(Buyer value, $Res Function(Buyer) then) =
      _$BuyerCopyWithImpl<$Res, Buyer>;
  @useResult
  $Res call({@JsonKey(name: 'phone_number') String phoneNumber, String email});
}

/// @nodoc
class _$BuyerCopyWithImpl<$Res, $Val extends Buyer>
    implements $BuyerCopyWith<$Res> {
  _$BuyerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyerImplCopyWith<$Res> implements $BuyerCopyWith<$Res> {
  factory _$$BuyerImplCopyWith(
          _$BuyerImpl value, $Res Function(_$BuyerImpl) then) =
      __$$BuyerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'phone_number') String phoneNumber, String email});
}

/// @nodoc
class __$$BuyerImplCopyWithImpl<$Res>
    extends _$BuyerCopyWithImpl<$Res, _$BuyerImpl>
    implements _$$BuyerImplCopyWith<$Res> {
  __$$BuyerImplCopyWithImpl(
      _$BuyerImpl _value, $Res Function(_$BuyerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(_$BuyerImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyerImpl implements _Buyer {
  const _$BuyerImpl(
      {@JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.email});

  factory _$BuyerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyerImplFromJson(json);

  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  final String email;

  @override
  String toString() {
    return 'Buyer(phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyerImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyerImplCopyWith<_$BuyerImpl> get copyWith =>
      __$$BuyerImplCopyWithImpl<_$BuyerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyerImplToJson(
      this,
    );
  }
}

abstract class _Buyer implements Buyer {
  const factory _Buyer(
      {@JsonKey(name: 'phone_number') required final String phoneNumber,
      required final String email}) = _$BuyerImpl;

  factory _Buyer.fromJson(Map<String, dynamic> json) = _$BuyerImpl.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$BuyerImplCopyWith<_$BuyerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
