import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';

class InfoBlock extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;

  const InfoBlock({
    super.key,
    required this.children,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
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
