import 'package:flutter/material.dart';

class CarouselIndicatorColors {
  static const currentItem = CustomColors.main;
  static const nextItem = Color(0x38000000);
  static const itemAfterNext = Color(0x2B000000);

  /// Should be used if current item is first or last item
  static const thirdItemFromCurrent = Color(0x1A000000);

  /// Should be used if current item is first or last item
  static const fourthItemFromCurrent = Color(0x0D000000);
}

class CustomColors {
  static const brand = Color(0xFF0D72FF);
  static const brandBackground = Color(0x1A0D72FF);
  static const buttonText = Colors.white;
  static const featureBackground = Color(0xFFFBFBFC);
  static const featureText = Color(0xFF828796);
  static const listSeparator = Color(0x26828796);
  static const main = Colors.black;
  static const mainBackground = Colors.white;
  static const raiting = Color(0xFFFFA800);
  static const raitingBackground = Color(0x33FFC700);
  static const pageBackground = Color(0xFFF6F6F9);
  static const inputLabel = Color(0xFFA9ABB7);
  static const detailsButton = Color(0xFF2C3035);
  static const inputFieldText = Color(0xFF14142B);
  static const error = Color(0x26EB5757);
}
