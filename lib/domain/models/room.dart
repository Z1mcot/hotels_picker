import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required int id,
    String? name,
    int? price,
    String? pricePer,
    @Default([]) List<String> peculiarities,
    @JsonKey(name: 'image_urls') @Default([]) List<String> imageUrls,
  }) = _Room;

  factory Room.fromJson(Map<String, Object?> json) => _$RoomFromJson(json);
}
