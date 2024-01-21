// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelDetails _$HotelDetailsFromJson(Map<String, dynamic> json) {
  return _HotelDetails.fromJson(json);
}

/// @nodoc
mixin _$HotelDetails {
  String? get description => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelDetailsCopyWith<HotelDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDetailsCopyWith<$Res> {
  factory $HotelDetailsCopyWith(
          HotelDetails value, $Res Function(HotelDetails) then) =
      _$HotelDetailsCopyWithImpl<$Res, HotelDetails>;
  @useResult
  $Res call({String? description, List<String> peculiarities});
}

/// @nodoc
class _$HotelDetailsCopyWithImpl<$Res, $Val extends HotelDetails>
    implements $HotelDetailsCopyWith<$Res> {
  _$HotelDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelDetailsImplCopyWith<$Res>
    implements $HotelDetailsCopyWith<$Res> {
  factory _$$HotelDetailsImplCopyWith(
          _$HotelDetailsImpl value, $Res Function(_$HotelDetailsImpl) then) =
      __$$HotelDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, List<String> peculiarities});
}

/// @nodoc
class __$$HotelDetailsImplCopyWithImpl<$Res>
    extends _$HotelDetailsCopyWithImpl<$Res, _$HotelDetailsImpl>
    implements _$$HotelDetailsImplCopyWith<$Res> {
  __$$HotelDetailsImplCopyWithImpl(
      _$HotelDetailsImpl _value, $Res Function(_$HotelDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? peculiarities = null,
  }) {
    return _then(_$HotelDetailsImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelDetailsImpl implements _HotelDetails {
  const _$HotelDetailsImpl(
      {this.description, final List<String> peculiarities = const []})
      : _peculiarities = peculiarities;

  factory _$HotelDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelDetailsImplFromJson(json);

  @override
  final String? description;
  final List<String> _peculiarities;
  @override
  @JsonKey()
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'HotelDetails(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDetailsImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDetailsImplCopyWith<_$HotelDetailsImpl> get copyWith =>
      __$$HotelDetailsImplCopyWithImpl<_$HotelDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelDetailsImplToJson(
      this,
    );
  }
}

abstract class _HotelDetails implements HotelDetails {
  const factory _HotelDetails(
      {final String? description,
      final List<String> peculiarities}) = _$HotelDetailsImpl;

  factory _HotelDetails.fromJson(Map<String, dynamic> json) =
      _$HotelDetailsImpl.fromJson;

  @override
  String? get description;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$HotelDetailsImplCopyWith<_$HotelDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
