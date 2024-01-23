import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/utils.dart';

class CarouselIndicator extends StatelessWidget {
  final int count;
  final int? current;
  final double width;
  const CarouselIndicator({
    super.key,
    required this.count,
    required this.current,
    this.width = 7,
  });

  // TODO use list view?
  @override
  Widget build(BuildContext context) {
    List<Widget> indicator = <Widget>[];
    final selectedIndicator = CarouselUtils.getIndicatorPosition(
      totalItemsCount: count,
      selectedItemIndex: current ?? 0,
    );
    final maxIndicators = count.clamp(1, 5);

    for (int i = 0; i < maxIndicators; i++) {
      indicator.add(
        Icon(
          Icons.circle,
          size: width,
          color: CarouselUtils.getIndicatorColor(
            selectedIndicatorIndex: selectedIndicator,
            currentIndicatorIndex: i,
          ),
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: CustomColors.mainBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: indicator,
      ),
    );
  }
}
