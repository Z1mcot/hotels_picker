import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels_picker/internal/dependencies/repository_module.dart';
import 'package:hotels_picker/ui/navigation/main_router.dart';
import 'package:hotels_picker/ui/screens/hotel/hotel_screen_state.dart';

class HotelScreenViewModel with ChangeNotifier {
  final _apiRepository = RepositoryModule.apiRepository();

  BuildContext context;
  HotelScreenViewModel(this.context) {
    _asyncInit();
  }

  HotelScreenState _state = HotelScreenState();
  HotelScreenState get state => _state;
  set state(HotelScreenState state) {
    _state = state;
    notifyListeners();
  }

  void onPageChanged(int value) {
    state = state.copyWith(currentPicIndex: value);
  }

  Future<void> _asyncInit() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    final hotel = await _apiRepository.getHotel();

    state = state.copyWith(
      hotel: hotel,
      isLoading: false,
    );
  }

  void toRooms() => context.go(MainNavigatorRoutes.roomWidget);
}
