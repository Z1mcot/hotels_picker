import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class FeatureWidget extends StatelessWidget {
  final String name;
  const FeatureWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.featureBackground,
          borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Text(
        name,
        style: CustomTextStyles.feature,
      ),
    );
  }
}
