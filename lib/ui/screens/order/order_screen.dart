import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/ui/common_widgets/custom_button.dart';
import 'package:provider/provider.dart';

import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/internal/utils.dart';
import 'package:hotels_picker/ui/common_widgets/custom_expansion_tile.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';
import 'package:hotels_picker/ui/common_widgets/email_input_field.dart';
import 'package:hotels_picker/ui/common_widgets/info_block.dart';
import 'package:hotels_picker/ui/common_widgets/info_row.dart';
import 'package:hotels_picker/ui/common_widgets/loader_widget.dart';
import 'package:hotels_picker/ui/common_widgets/phone_input_field.dart';
import 'package:hotels_picker/ui/common_widgets/rating_widget.dart';
import 'package:hotels_picker/ui/common_widgets/secondary_button.dart';
import 'package:hotels_picker/ui/screens/errors/not_found_screen.dart';
import 'package:hotels_picker/ui/screens/order/order_view_model.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<OrderViewModel>();

    if (viewModel.state.isLoading) {
      return const LoaderWidget();
    }

    final booking = viewModel.state.bookingInfo;

    if (booking == null) {
      return const NotFoundScreen();
    }

    final expandedTiles = viewModel.state.expandedTiles;

    final infoRowsKeys = viewModel.infoRowsKeys;
    final infoRowsNames = viewModel.infoRowsNames;

    final bookingJson = booking.toJson();

    final totalPrice = (booking.tourPrice ?? 0) +
        (booking.fuelCharge ?? 0) +
        (booking.serviceCharge ?? 0);

    return CustomPage(
      title: 'Бронирование',
      child: SingleChildScrollView(
        child: Column(
          children: [
            InfoBlock(
              margin: const EdgeInsets.only(
                top: 8,
                bottom: 4,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: RatingWidget(
                    rating: booking.horating!,
                    ratingName: booking.ratingName!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    booking.hotelName ?? '',
                    style: CustomTextStyles.nameHeading,
                  ),
                ),
                SecondaryButton(
                  backgroundColor: Colors.transparent,
                  onTap: () {},
                  label: booking.hotelAdress,
                  textStyle: CustomTextStyles.address,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                ),
              ],
            ),
            InfoBlock(
              children: [
                SizedBox(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: 16,
                    ),
                    itemCount: infoRowsKeys.length,
                    itemBuilder: (context, listIndex) {
                      var name = infoRowsKeys[listIndex];
                      if (name == 'tour_date_start') {
                        return InfoRow(
                          name: 'Даты',
                          value: '${booking.tourDateStart}'
                              '- ${booking.tourDateStop}',
                        );
                      }

                      return InfoRow(
                        name: infoRowsNames[name]!,
                        value: '${bookingJson[name]}',
                      );
                    },
                  ),
                ),
              ],
            ),
            InfoBlock(
              children: [
                PhoneInputField(
                  controller: viewModel.phoneController,
                  shouldValidate: viewModel.state.shouldValidateForms,
                  validator: (val) =>
                      viewModel.validateFormFields(val, 'phone'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: EmailInputField(
                    controller: viewModel.emailController,
                    shouldValidate: viewModel.state.shouldValidateForms,
                    validator: (val) =>
                        viewModel.validateFormFields(val, 'email'),
                  ),
                ),
                const Text(
                  'Эти данные никому не передаются. '
                  'После оплаты мы вышлем чек на указанный вами номер и почту',
                  style: CustomTextStyles.miscText,
                )
              ],
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: viewModel.state.includedTouristsCount + 1,
                itemBuilder: (_, index) {
                  final touristNumber = (index + 1).toOrdinal();

                  final tourist = index == viewModel.state.includedTouristsCount
                      ? null
                      : viewModel.state.tourists[index];

                  return InfoBlock(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    children: [
                      CustomExpansionTile(
                        title: tourist == null
                            ? 'Добавить туриста'
                            : '$touristNumber турист',
                        initiallyExpanded: expandedTiles.contains(index),
                        touristIndex: index,
                        onCreateTourist: viewModel.onCreateTourist,
                        onNameChanged: (val) =>
                            viewModel.onTouristNameChanged(index, val),
                        onSurnameChanged: (val) =>
                            viewModel.onTouristSurnameChanged(index, val),
                        onBirthdateChanged: (val) =>
                            viewModel.onTouristBirtdateChanged(index, val),
                        onCitizenshipChanged: (val) =>
                            viewModel.onTouristCitizenshipChanged(index, val),
                        onPassportChanged: (val) =>
                            viewModel.onTouristPassportChanged(index, val),
                        onPassportExpirationChanged: (val) => viewModel
                            .onTouristPassportExpirationChanged(index, val),
                      ),
                    ],
                  );
                }),
            InfoBlock(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InfoRow(
                    name: 'Тур',
                    value: booking.tourPrice?.asCurrency() ?? '',
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InfoRow(
                    name: 'Топливный сбор',
                    value: booking.fuelCharge?.asCurrency() ?? '',
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InfoRow(
                    name: 'Сервисный сбор',
                    value: booking.serviceCharge?.asCurrency() ?? '',
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: InfoRow(
                    name: 'К оплате',
                    value: totalPrice.asCurrency(),
                    valueTextStyle: CustomTextStyles.totalPrice,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              width: double.infinity,
              color: CustomColors.mainBackground,
              child: Expanded(
                child: CustomButton(
                  label: 'Оплатить ${totalPrice.asCurrency()}',
                  onPressed: viewModel.onFinishOrder,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget create() {
    return ChangeNotifierProvider(
      create: (context) => OrderViewModel(context: context),
      child: const OrderScreen(),
    );
  }
}
