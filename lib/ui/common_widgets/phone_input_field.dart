import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:hotels_picker/domain/enums/validator_modes.dart';
import 'package:hotels_picker/internal/utils.dart';
import 'package:hotels_picker/ui/common_widgets/input_field.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController? controller;
  final bool shouldValidate;
  final bool Function(Object? val) validator;
  const PhoneInputField({
    super.key,
    this.controller,
    required this.shouldValidate,
    required this.validator,
  });

  void onTap() {
    if (controller?.text.isEmpty ?? false) {
      controller?.text = '+7 (';
    }
  }

  bool _validator(Object? val) {
    final phoneRegExp = RegExp(r'^\+\d{1,2} \(\d{3}\) \d{3}-\d{2}-\d{2}$');
    var isValid = false;
    if (val is String) {
      isValid = phoneRegExp.hasMatch(val);
    }

    validator(isValid);
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          label: 'Номер телефона',
          shouldValidate: shouldValidate,
          validator: _validator,
          validatorMode: ValidatorModesEnum.alwaysValidate,
          keyboardType: TextInputType.phone,
          controller: controller,
          hint: '+7 (900) 000-00-00',
          onTap: onTap,
          inputFormatters: [
            LibPhonenumberTextFormatter(
              phoneNumberType: PhoneNumberType.mobile,
              phoneNumberFormat: PhoneNumberFormat.international,
              inputContainsCountryCode: true,
              shouldKeepCursorAtEndOfInput: true,
              country: ruPhoneFormatter(),
            ),
          ],
        ),
      ],
    );
  }
}
