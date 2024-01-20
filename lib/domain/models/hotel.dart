import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels_picker/domain/models/hotel_details.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required int id,
    required String name,
    required String adress,
    required int minimalPrice,
    required String priceForIt,
    required int rating,
    required String ratingName,
    required List<String> imageUrls,
    required HotelDetails aboutTheHotel,
  }) = _Person;

  factory Hotel.fromJson(Map<String, Object?> json) => _$HotelFromJson(json);
}
