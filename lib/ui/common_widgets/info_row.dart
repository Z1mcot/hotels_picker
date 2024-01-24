import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class InfoRow extends StatelessWidget {
  final String name;
  final String value;
  final TextStyle? valueTextStyle;
  final MainAxisAlignment? mainAxisAlignment;

  const InfoRow({
    super.key,
    required this.name,
    required this.value,
    this.valueTextStyle,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            name,
            style: CustomTextStyles.subtitle,
          ),
        ),
        mainAxisAlignment == MainAxisAlignment.spaceBetween
            ? Text(
                value,
                style: valueTextStyle ?? CustomTextStyles.description,
              )
            : Expanded(
                child: Text(
                  value,
                  style: valueTextStyle ?? CustomTextStyles.description,
                ),
              ),
      ],
    );
  }
}
