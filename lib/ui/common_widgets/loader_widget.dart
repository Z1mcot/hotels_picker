import 'package:flutter/material.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';

class LoaderWidget extends StatelessWidget {
  final bool? canGoBack;
  const LoaderWidget({super.key, this.canGoBack});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      canGoBack: canGoBack ?? true,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
