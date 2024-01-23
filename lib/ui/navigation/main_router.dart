import 'package:go_router/go_router.dart';
import 'package:hotels_picker/ui/screens/hotel/hotel_screen.dart';
import 'package:hotels_picker/ui/screens/order/order_screen.dart';
import 'package:hotels_picker/ui/screens/room/room_screen.dart';

class MainNavigatorRoutes {
  static const String hotelWidget = '/hotels/1';
  static const String roomWidget = '/hotels/:hotelId/rooms';
  static const String orderWidget = '/order';
}

class MainRouter {
  static GoRouter? _router;

  static GoRouter _init() {
    _router ??= GoRouter(
      initialLocation: MainNavigatorRoutes.hotelWidget,
      routes: [
        GoRoute(
          path: MainNavigatorRoutes.hotelWidget,
          builder: (_, state) => HotelScreen.create(),
        ),
        GoRoute(
          path: MainNavigatorRoutes.roomWidget,
          builder: (_, __) => const RoomScreen(),
        ),
        GoRoute(
          path: MainNavigatorRoutes.orderWidget,
          builder: (_, __) => const OrderScreen(),
        )
      ],
    );
    return _router!;
  }

  static get router => _init();
}
