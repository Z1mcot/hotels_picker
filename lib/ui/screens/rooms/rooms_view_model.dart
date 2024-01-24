import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hotels_picker/domain/enums/routes_names_enum.dart';
import 'package:hotels_picker/internal/dependencies/repository_module.dart';
import 'package:hotels_picker/ui/screens/rooms/rooms_state.dart';

class RoomsViewModel with ChangeNotifier {
  final BuildContext context;
  RoomsViewModel(this.context, {required int hotelId}) {
    _state = RoomsState(hotelId: hotelId);
    _asyncInit();
  }

  final _apiRepository = RepositoryModule.apiRepository();

  late RoomsState _state;
  RoomsState get state => _state;
  set state(RoomsState val) {
    _state = val;
    notifyListeners();
  }

  void onPageChanged(int value) {
    state = state.copyWith(currentPicIndex: value);
  }

  Future<void> _asyncInit() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    final hotel = await _apiRepository.getHotel();
    final rooms = await _apiRepository.getAvaliableRooms();

    state = state.copyWith(
      isLoading: false,
      hotelName: hotel.name,
      rooms: rooms,
    );
  }

  void toOrder(int roomId) {
    context.pushNamed<bool>(RoutesNamesEnum.orderScreen.name, queryParameters: {
      'hotelId': ['${state.hotelId}'],
      'roomId': ['$roomId'],
    }).then((goToRoot) {
      if (goToRoot ?? false) {
        context.pop(true);
      }
    });
  }
}
