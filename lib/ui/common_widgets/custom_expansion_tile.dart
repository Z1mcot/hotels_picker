import 'package:flutter/material.dart';
import 'package:hotels_picker/domain/models/tourist.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/images.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/ui/common_widgets/country_input_field.dart';
import 'package:hotels_picker/ui/common_widgets/date_input_field.dart';
import 'package:hotels_picker/ui/common_widgets/input_field.dart';
import 'package:hotels_picker/ui/screens/order/order_view_model.dart';
import 'package:provider/provider.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final int touristIndex;
  final bool initiallyExpanded;

  final VoidCallback? onExpansionChanged;

  final void Function(String val)? onNameChanged;
  final void Function(String val)? onSurnameChanged;
  final void Function(DateTime val)? onBirthdateChanged;
  final void Function(String val)? onCitizenshipChanged;
  final void Function(String val)? onPassportChanged;
  final void Function(DateTime val)? onPassportExpirationChanged;

  final VoidCallback? onCreateTourist;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.initiallyExpanded,
    this.onNameChanged,
    this.onSurnameChanged,
    this.onBirthdateChanged,
    this.onCitizenshipChanged,
    this.onPassportChanged,
    this.onPassportExpirationChanged,
    this.onCreateTourist,
    this.onExpansionChanged,
    required this.touristIndex,
  });

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool? _isCollapsed;
  Tourist? tourist;

  void onExpansionChanged(bool val) {
    if (tourist == null) {
      widget.onCreateTourist?.call();
    }
    final touristExists = tourist != null;
    widget.onExpansionChanged?.call();
    setState(() => _isCollapsed = val && touristExists);
  }

  @override
  Widget build(BuildContext context) {
    _isCollapsed = _isCollapsed ?? widget.initiallyExpanded;
    final dtNow = DateTime.now();

    final viewModel = context.read<OrderViewModel>();
    final tourists = viewModel.state.tourists;
    if (tourists.length > widget.touristIndex) {
      tourist = tourists[widget.touristIndex];
    }

    final touristExists = tourist != null;

    return ListTileTheme(
      contentPadding: EdgeInsets.zero,
      dense: true,
      horizontalTitleGap: 0.0,
      minLeadingWidth: 0,
      child: ExpansionTile(
        title: Text(
          widget.title,
          style: CustomTextStyles.nameHeading,
        ),
        iconColor: CustomColors.brand,
        initiallyExpanded: tourist != null && widget.initiallyExpanded,
        onExpansionChanged: onExpansionChanged,
        shape: const Border(),
        trailing: Container(
          height: 32,
          decoration: BoxDecoration(
            color: CustomColors.brandBackground,
            borderRadius: BorderRadius.circular(6),
          ),
          child: !touristExists
              ? Images.plus
              : _isCollapsed!
                  ? Images.arrowUp
                  : Images.arrowDown,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4.0),
            child: InputField(
              label: 'Имя',
              onChanged: widget.onNameChanged,
              hint: 'Ivan',
              initialValue: tourist?.firstName,
              shouldValidate: viewModel.state.shouldValidateForms,
              validator: viewModel.validateFormFields,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: InputField(
              label: 'Фамилия',
              onChanged: widget.onSurnameChanged,
              hint: 'Ivanovich',
              initialValue: tourist?.surname,
              shouldValidate: viewModel.state.shouldValidateForms,
              validator: viewModel.validateFormFields,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: DateInputField(
              label: 'Дата рождения',
              onChanged: widget.onBirthdateChanged,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              initialValue: tourist?.birthdate,
              shouldValidate: viewModel.state.shouldValidateForms,
              validator: viewModel.validateFormFields,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: CountryInputField(
              label: 'Гражданство',
              onChanged: widget.onCitizenshipChanged,
              initialValue: tourist?.citizenship,
              shouldValidate: viewModel.state.shouldValidateForms,
              validator: viewModel.validateFormFields,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: InputField(
              label: 'Номер загранпаспорта',
              onChanged: widget.onPassportChanged,
              initialValue: tourist?.passportNumber,
              shouldValidate: viewModel.state.shouldValidateForms,
              validator: viewModel.validateFormFields,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 12),
            child: DateInputField(
              label: 'Срок действия загранпаспорта',
              onChanged: widget.onPassportExpirationChanged,
              initialDate: dtNow,
              firstDate: dtNow,
              lastDate: DateTime(dtNow.year + 10, dtNow.month, dtNow.day),
              initialValue: tourist?.passportExpiryDate,
              shouldValidate: viewModel.state.shouldValidateForms,
              validator: viewModel.validateFormFields,
            ),
          ),
        ],
      ),
    );
  }
}
