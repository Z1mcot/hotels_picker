import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hotels_picker/domain/enums/routes_names_enum.dart';

class _Routes {
  static const String hotelWidget = '/hotels/1';
  static const String roomsListWidget = '/hotels/:hotelId/rooms';
  static const String orderWidget = '/order';
  static const String orderPlacedScreen = '/orderPlaced';

  static String fromName(RoutesNamesEnum name) => switch (name) {
        RoutesNamesEnum.hotelScreen => hotelWidget,
        RoutesNamesEnum.roomsList => roomsListWidget,
        RoutesNamesEnum.orderScreen => orderWidget,
        RoutesNamesEnum.orderPlacedScreen => orderPlacedScreen,
      };
}

String get initialRoute => _Routes.hotelWidget;

class CustomRoute extends GoRoute {
  CustomRoute({
    required RoutesNamesEnum routeName,
    Widget Function(BuildContext, GoRouterState)? builder,
  }) : super(
          name: routeName.name,
          path: _Routes.fromName(routeName),
          builder: builder,
        );
}
