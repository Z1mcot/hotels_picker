import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:hotels_picker/ui/common_widgets/input_field.dart';

class CountryInputField extends StatefulWidget {
  final void Function(String val)? onChanged;
  final String label;
  final String? initialValue;

  const CountryInputField({
    super.key,
    required this.label,
    this.onChanged,
    this.initialValue,
  });

  @override
  State<CountryInputField> createState() => _CountryInputFieldState();
}

class _CountryInputFieldState extends State<CountryInputField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialValue == null) return;
    _controller.text = widget.initialValue!;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSelect(String value) {
    setState(() => _controller.text = value);
    widget.onChanged?.call(value);
  }

  void onTap(BuildContext context) {
    showCountryPicker(
      context: context,
      onSelect: (val) => _onSelect(val.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InputField(
      readOnly: true,
      label: widget.label,
      controller: _controller,
      onTap: () => onTap(context),
    );
  }
}
