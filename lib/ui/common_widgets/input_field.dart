import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? label;
  final String? hint;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? error;
  final VoidCallback? onTap;
  final bool? readOnly;
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
  });

  @override
  Widget build(BuildContext context) {
    final hasText =
        controller?.text != null && controller!.text.trim().isNotEmpty;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.pageBackground,
      ),
      child: TextFormField(
        initialValue: initialValue,
        readOnly: readOnly ?? false,
        focusNode: focusNode,
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        style: CustomTextStyles.inputFieldText,
        onTap: onTap,
        decoration: InputDecoration(
          labelStyle: hasText
              ? CustomTextStyles.inputFieldLabelCollapsed
              : CustomTextStyles.inputFieldLabel,
          labelText: label,
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          error: error,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          hintText: hint,
        ),
        inputFormatters: inputFormatters,
      ),
    );
  }
}
