import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotels_picker/domain/enums/validator_modes.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class InputField extends StatefulWidget {
  final bool shouldValidate;
  final bool Function(String? val) validator;
  final ValidatorModesEnum validatorMode;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? label;
  final String? hint;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? error;
  final VoidCallback? onTap;
  final bool? readOnly;
  final void Function()? onFocusChanged;
  final void Function(String val)? onChanged;
  final String? initialValue;

  const InputField({
    super.key,
    this.controller,
    this.keyboardType,
    this.label,
    this.hint,
    this.inputFormatters,
    this.focusNode,
    this.error,
    this.onTap,
    this.readOnly,
    this.onChanged,
    this.initialValue,
    required this.shouldValidate,
    required this.validator,
    this.onFocusChanged,
    this.validatorMode = ValidatorModesEnum.validateOnFinish,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _isValid = true;
  late TextEditingController _controller;
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();

    if (widget.initialValue != null) {
      _controller.text = widget.initialValue!;
    }

    _focus.addListener(onFocusChanged);
  }

  @override
  void dispose() {
    _focus.removeListener(onFocusChanged);
    _focus.dispose();
    super.dispose();
  }

  void _validate() {
    var isValid = false;
    if (_focus.hasFocus) {
      isValid = true;
    } else {
      isValid = widget.validator(_controller.text);
    }

    setState(() {
      _isValid = isValid;
    });
  }

  void onFocusChanged() {
    if (widget.validatorMode == ValidatorModesEnum.alwaysValidate ||
        widget.shouldValidate) {
      _validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasText = widget.controller?.text != null &&
        widget.controller!.text.trim().isNotEmpty;

    if (widget.shouldValidate) _validate();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: !_isValid ? CustomColors.error : CustomColors.pageBackground,
      ),
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        focusNode: _focus,
        keyboardType: widget.keyboardType,
        controller: _controller,
        onChanged: widget.onChanged,
        style: CustomTextStyles.inputFieldText,
        onTap: widget.onTap,
        decoration: InputDecoration(
          labelStyle: hasText
              ? CustomTextStyles.inputFieldLabelCollapsed
              : CustomTextStyles.inputFieldLabel,
          labelText: widget.label,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          hintText: widget.hint,
        ),
        inputFormatters: widget.inputFormatters,
      ),
    );
  }
}
