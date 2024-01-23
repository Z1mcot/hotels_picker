import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hotels_picker/internal/consts/colors.dart';

class CarouselUtils {
  static const _indicatorColors = <int, Color>{
    0: CarouselIndicatorColors.currentItem,
    1: CarouselIndicatorColors.nextItem,
    2: CarouselIndicatorColors.itemAfterNext,
    3: CarouselIndicatorColors.thirdItemFromCurrent,
    4: CarouselIndicatorColors.fourthItemFromCurrent,
  };

  static Color getIndicatorColor({
    required int selectedIndicatorIndex,
    required int currentIndicatorIndex,
  }) =>
      _indicatorColors[(selectedIndicatorIndex - currentIndicatorIndex).abs()]!;

  static int getIndicatorPosition({
    required int totalItemsCount,
    required int selectedItemIndex,
  }) {
    final remainingItems = totalItemsCount - selectedItemIndex;

    if (remainingItems > 2 && selectedItemIndex > 3) {
      return 3;
    } else {
      return selectedItemIndex;
    }
  }
}

extension IntExtensions on int {
  static final _currencyFormat = NumberFormat.currency(
    locale: 'ru_RU',
    customPattern: '#,##0 \u00A4',
    decimalDigits: 0,
    symbol: '\u20bd',
  );

  String asCurrency() => _currencyFormat.format(this);
}
