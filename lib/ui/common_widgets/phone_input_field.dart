import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:hotels_picker/internal/utils.dart';
import 'package:hotels_picker/ui/common_widgets/input_field.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController? controller;
  const PhoneInputField({super.key, this.controller});

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  bool _isValid = true;
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(onFocusChanged);
  }

  @override
  void dispose() {
    _focus.removeListener(onFocusChanged);
    _focus.dispose();
    super.dispose();
  }

  final phoneRegExp = RegExp(r'^\+\d{1,2} \(\d{3}\) \d{3}-\d{2}-\d{2}$');

  void onFocusChanged() {
    if (widget.controller == null || _focus.hasFocus) {
      _isValid = true;
      return;
    }

    setState(() {
      _isValid = phoneRegExp.hasMatch(widget.controller!.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          focusNode: _focus,
          label: 'Номер телефона',
          keyboardType: TextInputType.phone,
          controller: widget.controller,
          hint: '+7 (900) 000-00-00',
          error: _isValid
              ? null
              : Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Неправильный формат телефона',
                    style: TextStyle(
                      color: Colors.red,
                      letterSpacing: -0.6,
                    ),
                  ),
                ),
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
