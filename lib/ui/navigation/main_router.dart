import 'package:go_router/go_router.dart';
import 'package:hotels_picker/ui/screens/loader_widget.dart';

class MainNavigatorRoutes {
  static const String loaderWidget = '/';
  static const String hotelWidget = '/hotels/:hotelId';
  static const String roomWidget = '/hotels/:hotelId/rooms/:roomId';
}

class MainRouter {
  static final toLoader = GoRoute(
    path: MainNavigatorRoutes.loaderWidget,
    builder: (_, __) => const LoaderWidget(),
  );

  static GoRouter? _router;

  static GoRouter _init() {
    _router ??= GoRouter(routes: [
      toLoader,
    ]);
    return _router!;
  }

  static get router => _init();
}
