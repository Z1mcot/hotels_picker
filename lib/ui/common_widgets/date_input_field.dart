import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:hotels_picker/ui/common_widgets/input_field.dart';

class DateInputField extends StatefulWidget {
  final void Function(DateTime val)? onChanged;
  final String label;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime? initialValue;

  const DateInputField({
    super.key,
    required this.label,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    this.onChanged,
    this.initialValue,
  });

  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  void _onSelect(DateTime value) {
    widget.onChanged?.call(value);
  }

  final _controller = TextEditingController();
  final _dtFormat = DateFormat('dd.MM.yyyy');

  @override
  void initState() {
    super.initState();
    if (widget.initialValue == null) return;
    _controller.text = _dtFormat.format(widget.initialValue!);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTap(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: widget.initialDate,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
    );
    if (pickedDate == null) return;

    _controller.text = _dtFormat.format(pickedDate);
    _onSelect(pickedDate);
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
