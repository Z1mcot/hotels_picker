import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      child: Center(
        child: Text(
          '404 Not found 😢',
          style: CustomTextStyles.errorScrennText,
        ),
      ),
    );
  }
}
