// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int? get minimalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_it')
  String? get priceForIt => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String? get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  HotelDetails? get aboutTheHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? adress,
      @JsonKey(name: 'minimal_price') int? minimalPrice,
      @JsonKey(name: 'price_for_it') String? priceForIt,
      int? rating,
      @JsonKey(name: 'rating_name') String? ratingName,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') HotelDetails? aboutTheHotel});

  $HotelDetailsCopyWith<$Res>? get aboutTheHotel;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? adress = freezed,
    Object? minimalPrice = freezed,
    Object? priceForIt = freezed,
    Object? rating = freezed,
    Object? ratingName = freezed,
    Object? imageUrls = null,
    Object? aboutTheHotel = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalPrice: freezed == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      priceForIt: freezed == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingName: freezed == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: freezed == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as HotelDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelDetailsCopyWith<$Res>? get aboutTheHotel {
    if (_value.aboutTheHotel == null) {
      return null;
    }

    return $HotelDetailsCopyWith<$Res>(_value.aboutTheHotel!, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? adress,
      @JsonKey(name: 'minimal_price') int? minimalPrice,
      @JsonKey(name: 'price_for_it') String? priceForIt,
      int? rating,
      @JsonKey(name: 'rating_name') String? ratingName,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') HotelDetails? aboutTheHotel});

  @override
  $HotelDetailsCopyWith<$Res>? get aboutTheHotel;
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$HotelCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? adress = freezed,
    Object? minimalPrice = freezed,
    Object? priceForIt = freezed,
    Object? rating = freezed,
    Object? ratingName = freezed,
    Object? imageUrls = null,
    Object? aboutTheHotel = freezed,
  }) {
    return _then(_$PersonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalPrice: freezed == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      priceForIt: freezed == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingName: freezed == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: freezed == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as HotelDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl implements _Person {
  const _$PersonImpl(
      {required this.id,
      this.name,
      this.adress,
      @JsonKey(name: 'minimal_price') this.minimalPrice,
      @JsonKey(name: 'price_for_it') this.priceForIt,
      this.rating,
      @JsonKey(name: 'rating_name') this.ratingName,
      @JsonKey(name: 'image_urls') final List<String> imageUrls = const [],
      @JsonKey(name: 'about_the_hotel') this.aboutTheHotel})
      : _imageUrls = imageUrls;

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? adress;
  @override
  @JsonKey(name: 'minimal_price')
  final int? minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  final String? priceForIt;
  @override
  final int? rating;
  @override
  @JsonKey(name: 'rating_name')
  final String? ratingName;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey(name: 'about_the_hotel')
  final HotelDetails? aboutTheHotel;

  @override
  String toString() {
    return 'Hotel(id: $id, name: $name, adress: $adress, minimalPrice: $minimalPrice, priceForIt: $priceForIt, rating: $rating, ratingName: $ratingName, imageUrls: $imageUrls, aboutTheHotel: $aboutTheHotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.aboutTheHotel, aboutTheHotel) ||
                other.aboutTheHotel == aboutTheHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adress,
      minimalPrice,
      priceForIt,
      rating,
      ratingName,
      const DeepCollectionEquality().hash(_imageUrls),
      aboutTheHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person implements Hotel {
  const factory _Person(
      {required final int id,
      final String? name,
      final String? adress,
      @JsonKey(name: 'minimal_price') final int? minimalPrice,
      @JsonKey(name: 'price_for_it') final String? priceForIt,
      final int? rating,
      @JsonKey(name: 'rating_name') final String? ratingName,
      @JsonKey(name: 'image_urls') final List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel')
      final HotelDetails? aboutTheHotel}) = _$PersonImpl;

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get adress;
  @override
  @JsonKey(name: 'minimal_price')
  int? get minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  String? get priceForIt;
  @override
  int? get rating;
  @override
  @JsonKey(name: 'rating_name')
  String? get ratingName;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(name: 'about_the_hotel')
  HotelDetails? get aboutTheHotel;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
