import 'package:hotels_picker/domain/models/hotel.dart';

class HotelState {
  final int hotelId;
  final Hotel? hotel;
  final int currentPicIndex;
  final bool isLoading;
  HotelState({
    required this.hotelId,
    this.hotel,
    this.currentPicIndex = 0,
    this.isLoading = false,
  });

  HotelState copyWith({
    Hotel? hotel,
    int? currentPicIndex,
    bool? isLoading,
  }) {
    return HotelState(
      hotelId: hotelId,
      hotel: hotel ?? this.hotel,
      currentPicIndex: currentPicIndex ?? this.currentPicIndex,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
