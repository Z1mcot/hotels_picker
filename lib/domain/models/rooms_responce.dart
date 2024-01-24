import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hotels_picker/domain/models/room.dart';

part 'rooms_responce.freezed.dart';
part 'rooms_responce.g.dart';

@freezed
class RoomsResponce with _$RoomsResponce {
  const factory RoomsResponce({
    @Default([]) List<Room> rooms,
  }) = _Rooms;

  factory RoomsResponce.fromJson(Map<String, Object?> json) =>
      _$RoomsResponceFromJson(json);
}
