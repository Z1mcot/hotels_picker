import 'package:hotels_picker/domain/models/hotel.dart';

class HotelScreenState {
  final Hotel? hotel;
  final int currentPicIndex;
  final bool isLoading;
  HotelScreenState({
    this.hotel,
    this.currentPicIndex = 0,
    this.isLoading = false,
  });

  HotelScreenState copyWith({
    Hotel? hotel,
    int? currentPicIndex,
    bool? isLoading,
  }) {
    return HotelScreenState(
      hotel: hotel ?? this.hotel,
      currentPicIndex: currentPicIndex ?? this.currentPicIndex,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
