// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String? get hotelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_adress')
  String? get hotelAdress => throw _privateConstructorUsedError;
  int? get horating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String? get ratingName => throw _privateConstructorUsedError;
  String? get departure => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_country')
  String? get arrivalCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_start')
  String? get tourDateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_stop')
  String? get tourDateStop => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_nights')
  int? get numberOfNights => throw _privateConstructorUsedError;
  String? get room => throw _privateConstructorUsedError;
  String? get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_price')
  int? get tourPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_charge')
  int? get fuelCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  int? get serviceCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String? hotelName,
      @JsonKey(name: 'hotel_adress') String? hotelAdress,
      int? horating,
      @JsonKey(name: 'rating_name') String? ratingName,
      String? departure,
      @JsonKey(name: 'arrival_country') String? arrivalCountry,
      @JsonKey(name: 'tour_date_start') String? tourDateStart,
      @JsonKey(name: 'tour_date_stop') String? tourDateStop,
      @JsonKey(name: 'number_of_nights') int? numberOfNights,
      String? room,
      String? nutrition,
      @JsonKey(name: 'tour_price') int? tourPrice,
      @JsonKey(name: 'fuel_charge') int? fuelCharge,
      @JsonKey(name: 'service_charge') int? serviceCharge});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotelName = freezed,
    Object? hotelAdress = freezed,
    Object? horating = freezed,
    Object? ratingName = freezed,
    Object? departure = freezed,
    Object? arrivalCountry = freezed,
    Object? tourDateStart = freezed,
    Object? tourDateStop = freezed,
    Object? numberOfNights = freezed,
    Object? room = freezed,
    Object? nutrition = freezed,
    Object? tourPrice = freezed,
    Object? fuelCharge = freezed,
    Object? serviceCharge = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelAdress: freezed == hotelAdress
          ? _value.hotelAdress
          : hotelAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      horating: freezed == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingName: freezed == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String?,
      departure: freezed == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalCountry: freezed == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      tourDateStart: freezed == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String?,
      tourDateStop: freezed == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfNights: freezed == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as int?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: freezed == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String?,
      tourPrice: freezed == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fuelCharge: freezed == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String? hotelName,
      @JsonKey(name: 'hotel_adress') String? hotelAdress,
      int? horating,
      @JsonKey(name: 'rating_name') String? ratingName,
      String? departure,
      @JsonKey(name: 'arrival_country') String? arrivalCountry,
      @JsonKey(name: 'tour_date_start') String? tourDateStart,
      @JsonKey(name: 'tour_date_stop') String? tourDateStop,
      @JsonKey(name: 'number_of_nights') int? numberOfNights,
      String? room,
      String? nutrition,
      @JsonKey(name: 'tour_price') int? tourPrice,
      @JsonKey(name: 'fuel_charge') int? fuelCharge,
      @JsonKey(name: 'service_charge') int? serviceCharge});
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotelName = freezed,
    Object? hotelAdress = freezed,
    Object? horating = freezed,
    Object? ratingName = freezed,
    Object? departure = freezed,
    Object? arrivalCountry = freezed,
    Object? tourDateStart = freezed,
    Object? tourDateStop = freezed,
    Object? numberOfNights = freezed,
    Object? room = freezed,
    Object? nutrition = freezed,
    Object? tourPrice = freezed,
    Object? fuelCharge = freezed,
    Object? serviceCharge = freezed,
  }) {
    return _then(_$BookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelAdress: freezed == hotelAdress
          ? _value.hotelAdress
          : hotelAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      horating: freezed == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingName: freezed == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String?,
      departure: freezed == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalCountry: freezed == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      tourDateStart: freezed == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String?,
      tourDateStop: freezed == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfNights: freezed == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as int?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: freezed == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String?,
      tourPrice: freezed == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fuelCharge: freezed == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  _$BookingImpl(
      {required this.id,
      @JsonKey(name: 'hotel_name') this.hotelName,
      @JsonKey(name: 'hotel_adress') this.hotelAdress,
      this.horating,
      @JsonKey(name: 'rating_name') this.ratingName,
      this.departure,
      @JsonKey(name: 'arrival_country') this.arrivalCountry,
      @JsonKey(name: 'tour_date_start') this.tourDateStart,
      @JsonKey(name: 'tour_date_stop') this.tourDateStop,
      @JsonKey(name: 'number_of_nights') this.numberOfNights,
      this.room,
      this.nutrition,
      @JsonKey(name: 'tour_price') this.tourPrice,
      @JsonKey(name: 'fuel_charge') this.fuelCharge,
      @JsonKey(name: 'service_charge') this.serviceCharge});

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'hotel_name')
  final String? hotelName;
  @override
  @JsonKey(name: 'hotel_adress')
  final String? hotelAdress;
  @override
  final int? horating;
  @override
  @JsonKey(name: 'rating_name')
  final String? ratingName;
  @override
  final String? departure;
  @override
  @JsonKey(name: 'arrival_country')
  final String? arrivalCountry;
  @override
  @JsonKey(name: 'tour_date_start')
  final String? tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  final String? tourDateStop;
  @override
  @JsonKey(name: 'number_of_nights')
  final int? numberOfNights;
  @override
  final String? room;
  @override
  final String? nutrition;
  @override
  @JsonKey(name: 'tour_price')
  final int? tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  final int? fuelCharge;
  @override
  @JsonKey(name: 'service_charge')
  final int? serviceCharge;

  @override
  String toString() {
    return 'Booking(id: $id, hotelName: $hotelName, hotelAdress: $hotelAdress, horating: $horating, ratingName: $ratingName, departure: $departure, arrivalCountry: $arrivalCountry, tourDateStart: $tourDateStart, tourDateStop: $tourDateStop, numberOfNights: $numberOfNights, room: $room, nutrition: $nutrition, tourPrice: $tourPrice, fuelCharge: $fuelCharge, serviceCharge: $serviceCharge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.hotelAdress, hotelAdress) ||
                other.hotelAdress == hotelAdress) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrivalCountry, arrivalCountry) ||
                other.arrivalCountry == arrivalCountry) &&
            (identical(other.tourDateStart, tourDateStart) ||
                other.tourDateStart == tourDateStart) &&
            (identical(other.tourDateStop, tourDateStop) ||
                other.tourDateStop == tourDateStop) &&
            (identical(other.numberOfNights, numberOfNights) ||
                other.numberOfNights == numberOfNights) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.tourPrice, tourPrice) ||
                other.tourPrice == tourPrice) &&
            (identical(other.fuelCharge, fuelCharge) ||
                other.fuelCharge == fuelCharge) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hotelName,
      hotelAdress,
      horating,
      ratingName,
      departure,
      arrivalCountry,
      tourDateStart,
      tourDateStop,
      numberOfNights,
      room,
      nutrition,
      tourPrice,
      fuelCharge,
      serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  factory _Booking(
          {required final int id,
          @JsonKey(name: 'hotel_name') final String? hotelName,
          @JsonKey(name: 'hotel_adress') final String? hotelAdress,
          final int? horating,
          @JsonKey(name: 'rating_name') final String? ratingName,
          final String? departure,
          @JsonKey(name: 'arrival_country') final String? arrivalCountry,
          @JsonKey(name: 'tour_date_start') final String? tourDateStart,
          @JsonKey(name: 'tour_date_stop') final String? tourDateStop,
          @JsonKey(name: 'number_of_nights') final int? numberOfNights,
          final String? room,
          final String? nutrition,
          @JsonKey(name: 'tour_price') final int? tourPrice,
          @JsonKey(name: 'fuel_charge') final int? fuelCharge,
          @JsonKey(name: 'service_charge') final int? serviceCharge}) =
      _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'hotel_name')
  String? get hotelName;
  @override
  @JsonKey(name: 'hotel_adress')
  String? get hotelAdress;
  @override
  int? get horating;
  @override
  @JsonKey(name: 'rating_name')
  String? get ratingName;
  @override
  String? get departure;
  @override
  @JsonKey(name: 'arrival_country')
  String? get arrivalCountry;
  @override
  @JsonKey(name: 'tour_date_start')
  String? get tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  String? get tourDateStop;
  @override
  @JsonKey(name: 'number_of_nights')
  int? get numberOfNights;
  @override
  String? get room;
  @override
  String? get nutrition;
  @override
  @JsonKey(name: 'tour_price')
  int? get tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  int? get fuelCharge;
  @override
  @JsonKey(name: 'service_charge')
  int? get serviceCharge;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
