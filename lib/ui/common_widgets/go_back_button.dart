import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';

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
      icon: const Icon(
        Icons.arrow_back_ios,
        color: CustomColors.main,
        size: 32,
      ),
    );
  }
}
