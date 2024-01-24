import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class FeatureWidget extends StatelessWidget {
  final String name;
  final Color? backgroundColor;
  final Widget? icon;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double gapBetweenTextAndIcon;

  const FeatureWidget({
    super.key,
    required this.name,
    this.backgroundColor,
    this.icon,
    this.textStyle,
    this.padding,
    this.gapBetweenTextAndIcon = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor ?? CustomColors.featureBackground,
          borderRadius: BorderRadius.circular(5)),
      padding: padding ??
          const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: textStyle ?? CustomTextStyles.feature,
          ),
          SizedBox(width: gapBetweenTextAndIcon),
          icon ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
