import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
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

  static final _ordinals = {
    1: 'Первый',
    2: 'Второй',
    3: 'Третий',
    4: 'Четвёртый',
    5: 'Пятый',
    6: 'Шестой',
    7: 'Седьмой',
    8: 'Восьмой',
    9: 'Девятый',
    10: 'Десятый',
  };

  String asCurrency() => _currencyFormat.format(this);

  String toOrdinal() {
    return _ordinals[this]!;
  }
}

CountryWithPhoneCode ruPhoneFormatter() => CountryWithPhoneCode(
      phoneCode: '7',
      countryCode: 'RU',
      exampleNumberMobileNational: '+7 (201) 555-01-23',
      exampleNumberFixedLineNational: '(201) 555-0123',
      phoneMaskMobileNational: '+7 (000) 000-00-00',
      phoneMaskFixedLineNational: '(000) 000-0000',
      exampleNumberMobileInternational: '+7 (201) 555-01-23',
      exampleNumberFixedLineInternational: '+7 (201) 555-0123',
      phoneMaskMobileInternational: '+0 (000) 000-00-00',
      phoneMaskFixedLineInternational: '+7 (000) 000-0000',
      countryName: 'Russia',
    );
