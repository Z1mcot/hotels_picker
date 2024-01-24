import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hotels_picker/ui/screens/hotel/hotel_state.dart';
import 'package:hotels_picker/domain/enums/routes_names_enum.dart';
import 'package:hotels_picker/internal/dependencies/repository_module.dart';

class HotelViewModel with ChangeNotifier {
  final _apiRepository = RepositoryModule.apiRepository();

  BuildContext context;
  HotelViewModel(this.context, {required int hotelId}) {
    _state = HotelState(hotelId: hotelId);
    _asyncInit();
  }

  late HotelState _state;
  HotelState get state => _state;
  set state(HotelState state) {
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

  void toRooms() => context.pushNamed(
        RoutesNamesEnum.roomsList.name,
        pathParameters: {
          'hotelId': '${state.hotelId}',
        },
      );
}
