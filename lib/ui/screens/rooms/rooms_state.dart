import 'package:hotels_picker/domain/models/room.dart';

class RoomsState {
  final int hotelId;
  final String? hotelName;
  final bool isLoading;
  final List<Room> rooms;
  final int currentPicIndex;

  RoomsState({
    required this.hotelId,
    this.hotelName,
    this.isLoading = false,
    this.rooms = const [],
    this.currentPicIndex = 0,
  });

  RoomsState copyWith({
    String? hotelName,
    bool? isLoading,
    List<Room>? rooms,
    int? currentPicIndex,
  }) {
    return RoomsState(
      hotelId: hotelId,
      hotelName: hotelName ?? this.hotelName,
      isLoading: isLoading ?? this.isLoading,
      rooms: rooms ?? this.rooms,
      currentPicIndex: currentPicIndex ?? this.currentPicIndex,
    );
  }
}
