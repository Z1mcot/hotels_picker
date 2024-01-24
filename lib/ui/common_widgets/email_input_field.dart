import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hotels_picker/ui/common_widgets/input_field.dart';

class EmailInputField extends StatefulWidget {
  final TextEditingController? controller;
  const EmailInputField({super.key, this.controller});

  @override
  State<EmailInputField> createState() => _EmailInputFieldState();
}

class _EmailInputFieldState extends State<EmailInputField> {
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

  void onFocusChanged() {
    if (widget.controller == null || _focus.hasFocus) {
      _isValid = true;
      return;
    }

    setState(() {
      _isValid = EmailValidator.validate(widget.controller!.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          focusNode: _focus,
          label: 'Почта',
          keyboardType: TextInputType.emailAddress,
          controller: widget.controller,
          hint: 'user@example.com',
          error: _isValid
              ? null
              : Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Неправильный формат почты',
                    style: TextStyle(
                      color: Colors.red,
                      letterSpacing: -0.6,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
