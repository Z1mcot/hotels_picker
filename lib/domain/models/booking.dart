import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  factory Booking({
    required int id,
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
    @JsonKey(name: 'service_charge') int? serviceCharge,
  }) = _Booking;

  factory Booking.fromJson(Map<String, Object?> json) =>
      _$BookingFromJson(json);
}
