import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hotels_picker/domain/enums/validator_modes.dart';
import 'package:hotels_picker/ui/common_widgets/input_field.dart';

class EmailInputField extends StatefulWidget {
  final TextEditingController? controller;
  final bool shouldValidate;
  final bool Function(Object? val) validator;
  const EmailInputField(
      {super.key,
      this.controller,
      required this.shouldValidate,
      required this.validator});

  @override
  State<EmailInputField> createState() => _EmailInputFieldState();
}

class _EmailInputFieldState extends State<EmailInputField> {
  bool _validator(Object? val) {
    var isValid = false;
    if (val is String) {
      isValid = EmailValidator.validate(val);
    }

    widget.validator(isValid);
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          shouldValidate: widget.shouldValidate,
          validator: _validator,
          validatorMode: ValidatorModesEnum.alwaysValidate,
          label: 'Почта',
          keyboardType: TextInputType.emailAddress,
          controller: widget.controller,
          hint: 'user@example.com',
        ),
      ],
    );
  }
}
