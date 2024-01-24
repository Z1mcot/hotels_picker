import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    this.label,
    this.onPressed,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: CustomColors.brand,
        ),
        child: Text(
          label ?? '',
          style: CustomTextStyles.buttonText,
        ),
      ),
    );
  }
}
