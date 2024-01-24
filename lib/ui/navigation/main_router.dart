import 'package:go_router/go_router.dart';
import 'package:hotels_picker/domain/enums/routes_names_enum.dart';
import 'package:hotels_picker/ui/navigation/custom_route.dart';
import 'package:hotels_picker/ui/screens/errors/not_found_screen.dart';
import 'package:hotels_picker/ui/screens/hotel/hotel_screen.dart';
import 'package:hotels_picker/ui/screens/order/order_screen.dart';
import 'package:hotels_picker/ui/screens/placed_order/placed_order_screen.dart';
import 'package:hotels_picker/ui/screens/rooms/rooms_screen.dart';

class MainRouter {
  static GoRouter? _router;

  static GoRouter _init() {
    _router ??= GoRouter(
      initialLocation: initialRoute,
      errorBuilder: (_, __) => const NotFoundScreen(),
      routes: [
        CustomRoute(
          routeName: RoutesNamesEnum.hotelScreen,
          builder: (_, state) {
            const hotelId = 1;
            return HotelScreen.create(hotelId: hotelId);
          },
        ),
        CustomRoute(
          routeName: RoutesNamesEnum.roomsList,
          builder: (_, state) {
            final hotelId = int.parse(state.pathParameters['hotelId']!);
            return RoomsScreen.create(hotelId: hotelId);
          },
        ),
        CustomRoute(
          routeName: RoutesNamesEnum.orderScreen,
          builder: (_, __) => OrderScreen.create(),
        ),
        CustomRoute(
          routeName: RoutesNamesEnum.orderPlacedScreen,
          builder: (_, __) => const PlacedOrderScreen(),
        ),
      ],
    );
    return _router!;
  }

  static get router => _init();
}
