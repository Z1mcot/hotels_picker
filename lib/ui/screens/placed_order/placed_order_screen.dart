import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/ui/common_widgets/custom_button.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';

class PlacedOrderScreen extends StatelessWidget {
  const PlacedOrderScreen({super.key});

  void toRoot(BuildContext context) {
    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      padding: const EdgeInsets.symmetric(
        horizontal: 23,
      ),
      title: 'Заказ оплачен',
      backgroundColor: CustomColors.mainBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox.shrink(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 94,
                height: 94,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: CustomColors.pageBackground,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: const Text(
                  '🎉',
                  style: TextStyle(fontSize: 44),
                ),
              ),
              const Text(
                'Ваш заказ принят в работу',
                style: CustomTextStyles.nameHeading,
              ),
              const Text(
                'Подтверждение заказа №104893 может занять некоторое'
                'время (от 1 часа до суток). Как только мы получим ответ'
                'от туроператора, вам на почту придет уведомление.',
                style: CustomTextStyles.subtitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            width: double.infinity,
            child: Expanded(
              child: CustomButton(
                label: 'Супер!',
                onPressed: () => toRoot(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
