// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsResponce _$RoomsResponceFromJson(Map<String, dynamic> json) {
  return _Rooms.fromJson(json);
}

/// @nodoc
mixin _$RoomsResponce {
  List<Room> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsResponceCopyWith<RoomsResponce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsResponceCopyWith<$Res> {
  factory $RoomsResponceCopyWith(
          RoomsResponce value, $Res Function(RoomsResponce) then) =
      _$RoomsResponceCopyWithImpl<$Res, RoomsResponce>;
  @useResult
  $Res call({List<Room> rooms});
}

/// @nodoc
class _$RoomsResponceCopyWithImpl<$Res, $Val extends RoomsResponce>
    implements $RoomsResponceCopyWith<$Res> {
  _$RoomsResponceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomsImplCopyWith<$Res>
    implements $RoomsResponceCopyWith<$Res> {
  factory _$$RoomsImplCopyWith(
          _$RoomsImpl value, $Res Function(_$RoomsImpl) then) =
      __$$RoomsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Room> rooms});
}

/// @nodoc
class __$$RoomsImplCopyWithImpl<$Res>
    extends _$RoomsResponceCopyWithImpl<$Res, _$RoomsImpl>
    implements _$$RoomsImplCopyWith<$Res> {
  __$$RoomsImplCopyWithImpl(
      _$RoomsImpl _value, $Res Function(_$RoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$RoomsImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomsImpl implements _Rooms {
  const _$RoomsImpl({final List<Room> rooms = const []}) : _rooms = rooms;

  factory _$RoomsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsImplFromJson(json);

  final List<Room> _rooms;
  @override
  @JsonKey()
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsResponce(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      __$$RoomsImplCopyWithImpl<_$RoomsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsImplToJson(
      this,
    );
  }
}

abstract class _Rooms implements RoomsResponce {
  const factory _Rooms({final List<Room> rooms}) = _$RoomsImpl;

  factory _Rooms.fromJson(Map<String, dynamic> json) = _$RoomsImpl.fromJson;

  @override
  List<Room> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
