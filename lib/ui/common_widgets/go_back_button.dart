import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/images.dart';

class GoBackButton extends StatelessWidget {
  final void Function(BuildContext) onBack;

  const GoBackButton({
    super.key,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: const EdgeInsets.all(6.0),
        onPressed: () => onBack(context),
        color: CustomColors.main,
        icon: SizedBox(
          width: 32,
          height: 32,
          child: Images.arrowBack,
        ));
  }
}
