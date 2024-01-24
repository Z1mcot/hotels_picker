import 'package:flutter/material.dart';

import 'package:hotels_picker/ui/navigation/main_router.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: MainRouter.router,
    );
  }
}
