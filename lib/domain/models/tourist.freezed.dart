// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tourist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tourist _$TouristFromJson(Map<String, dynamic> json) {
  return _Tourist.fromJson(json);
}

/// @nodoc
mixin _$Tourist {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;
  String get citizenship => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_number')
  String get passportNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_expiry_date')
  DateTime get passportExpiryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TouristCopyWith<Tourist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TouristCopyWith<$Res> {
  factory $TouristCopyWith(Tourist value, $Res Function(Tourist) then) =
      _$TouristCopyWithImpl<$Res, Tourist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      String surname,
      DateTime birthdate,
      String citizenship,
      @JsonKey(name: 'passport_number') String passportNumber,
      @JsonKey(name: 'passport_expiry_date') DateTime passportExpiryDate});
}

/// @nodoc
class _$TouristCopyWithImpl<$Res, $Val extends Tourist>
    implements $TouristCopyWith<$Res> {
  _$TouristCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? surname = null,
    Object? birthdate = null,
    Object? citizenship = null,
    Object? passportNumber = null,
    Object? passportExpiryDate = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportExpiryDate: null == passportExpiryDate
          ? _value.passportExpiryDate
          : passportExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TouristImplCopyWith<$Res> implements $TouristCopyWith<$Res> {
  factory _$$TouristImplCopyWith(
          _$TouristImpl value, $Res Function(_$TouristImpl) then) =
      __$$TouristImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      String surname,
      DateTime birthdate,
      String citizenship,
      @JsonKey(name: 'passport_number') String passportNumber,
      @JsonKey(name: 'passport_expiry_date') DateTime passportExpiryDate});
}

/// @nodoc
class __$$TouristImplCopyWithImpl<$Res>
    extends _$TouristCopyWithImpl<$Res, _$TouristImpl>
    implements _$$TouristImplCopyWith<$Res> {
  __$$TouristImplCopyWithImpl(
      _$TouristImpl _value, $Res Function(_$TouristImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? surname = null,
    Object? birthdate = null,
    Object? citizenship = null,
    Object? passportNumber = null,
    Object? passportExpiryDate = null,
  }) {
    return _then(_$TouristImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportExpiryDate: null == passportExpiryDate
          ? _value.passportExpiryDate
          : passportExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TouristImpl implements _Tourist {
  _$TouristImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      required this.surname,
      required this.birthdate,
      required this.citizenship,
      @JsonKey(name: 'passport_number') required this.passportNumber,
      @JsonKey(name: 'passport_expiry_date') required this.passportExpiryDate});

  factory _$TouristImpl.fromJson(Map<String, dynamic> json) =>
      _$$TouristImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  final String surname;
  @override
  final DateTime birthdate;
  @override
  final String citizenship;
  @override
  @JsonKey(name: 'passport_number')
  final String passportNumber;
  @override
  @JsonKey(name: 'passport_expiry_date')
  final DateTime passportExpiryDate;

  @override
  String toString() {
    return 'Tourist(firstName: $firstName, surname: $surname, birthdate: $birthdate, citizenship: $citizenship, passportNumber: $passportNumber, passportExpiryDate: $passportExpiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouristImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.citizenship, citizenship) ||
                other.citizenship == citizenship) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportExpiryDate, passportExpiryDate) ||
                other.passportExpiryDate == passportExpiryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, surname, birthdate,
      citizenship, passportNumber, passportExpiryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TouristImplCopyWith<_$TouristImpl> get copyWith =>
      __$$TouristImplCopyWithImpl<_$TouristImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TouristImplToJson(
      this,
    );
  }
}

abstract class _Tourist implements Tourist {
  factory _Tourist(
      {@JsonKey(name: 'first_name') required final String firstName,
      required final String surname,
      required final DateTime birthdate,
      required final String citizenship,
      @JsonKey(name: 'passport_number') required final String passportNumber,
      @JsonKey(name: 'passport_expiry_date')
      required final DateTime passportExpiryDate}) = _$TouristImpl;

  factory _Tourist.fromJson(Map<String, dynamic> json) = _$TouristImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  String get surname;
  @override
  DateTime get birthdate;
  @override
  String get citizenship;
  @override
  @JsonKey(name: 'passport_number')
  String get passportNumber;
  @override
  @JsonKey(name: 'passport_expiry_date')
  DateTime get passportExpiryDate;
  @override
  @JsonKey(ignore: true)
  _$$TouristImplCopyWith<_$TouristImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
