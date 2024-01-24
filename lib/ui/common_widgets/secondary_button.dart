import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/ui/common_widgets/feature_widget.dart';

class SecondaryButton extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final double gapBetweenTextAndIcon;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const SecondaryButton({
    super.key,
    this.label,
    this.icon,
    this.padding,
    this.textStyle,
    this.gapBetweenTextAndIcon = 2,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: FeatureWidget(
          gapBetweenTextAndIcon: gapBetweenTextAndIcon,
          padding: padding ??
              const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
          name: label ?? '',
          textStyle: textStyle ?? CustomTextStyles.roomDetailsButton,
          backgroundColor: backgroundColor ?? CustomColors.brandBackground,
          icon: icon,
        ),
      ),
    );
  }
}
