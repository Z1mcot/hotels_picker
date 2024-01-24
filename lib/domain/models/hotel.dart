import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels_picker/domain/models/hotel_details.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required int id,
    String? name,
    String? adress,
    @JsonKey(name: 'minimal_price') int? minimalPrice,
    @JsonKey(name: 'price_for_it') String? priceForIt,
    int? rating,
    @JsonKey(name: 'rating_name') String? ratingName,
    @JsonKey(name: 'image_urls') @Default([]) List<String> imageUrls,
    @JsonKey(name: 'about_the_hotel') HotelDetails? aboutTheHotel,
  }) = _Person;

  factory Hotel.fromJson(Map<String, Object?> json) => _$HotelFromJson(json);
}
