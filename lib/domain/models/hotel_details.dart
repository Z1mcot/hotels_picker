import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_details.freezed.dart';
part 'hotel_details.g.dart';

@freezed
class HotelDetails with _$HotelDetails {
  const factory HotelDetails({
    String? description,
    @Default([]) List<String> peculiarities,
  }) = _HotelDetails;

  factory HotelDetails.fromJson(Map<String, Object?> json) =>
      _$HotelDetailsFromJson(json);
}
