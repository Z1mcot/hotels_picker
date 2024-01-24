import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';

class InfoBlock extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BorderRadiusGeometry? borderRadius;

  const InfoBlock({
    super.key,
    required this.children,
    this.margin,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      margin: margin ?? const EdgeInsets.symmetric(vertical: 4.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.mainBackground,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
