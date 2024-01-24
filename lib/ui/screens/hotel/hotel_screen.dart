import 'package:flutter/material.dart';
import 'package:hotels_picker/ui/common_widgets/loader_widget.dart';
import 'package:hotels_picker/ui/common_widgets/secondary_button.dart';
import 'package:provider/provider.dart';

import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/internal/utils.dart';
import 'package:hotels_picker/ui/common_widgets/custom_button.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';
import 'package:hotels_picker/ui/common_widgets/feature_wrap.dart';
import 'package:hotels_picker/ui/common_widgets/info_block.dart';
import 'package:hotels_picker/ui/common_widgets/picture_carousel.dart';
import 'package:hotels_picker/ui/common_widgets/rating_widget.dart';
import 'package:hotels_picker/ui/screens/hotel/hotel_view_model.dart';
import 'package:hotels_picker/ui/screens/hotel/ui_components/details_button_list.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HotelViewModel>();
    final size = MediaQuery.of(context).size;
    final hotel = viewModel.state.hotel;

    if (viewModel.state.isLoading || hotel == null) {
      return const LoaderWidget(
        canGoBack: false,
      );
    }

    return CustomPage(
      padding: EdgeInsets.zero,
      canGoBack: false,
      title: 'Отель',
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InfoBlock(
                    margin: const EdgeInsets.only(bottom: 4.0),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    children: [
                      if (hotel.imageUrls.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: PictureCarousel(
                            onPageChanged: viewModel.onPageChanged,
                            picturesUrls: hotel.imageUrls,
                            size: size,
                            selectedItem: viewModel.state.currentPicIndex,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: RatingWidget(
                          rating: hotel.rating!,
                          ratingName: hotel.ratingName!,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          hotel.name!,
                          style: CustomTextStyles.nameHeading,
                        ),
                      ),
                      SecondaryButton(
                        backgroundColor: Colors.transparent,
                        onTap: () {},
                        label: hotel.adress,
                        textStyle: CustomTextStyles.address,
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                      ),
                      Padding(
                        // TODO richtext?
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'от ${hotel.minimalPrice!.asCurrency()}',
                              style: CustomTextStyles.price,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              hotel.priceForIt ?? '',
                              style: CustomTextStyles.subtitle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  InfoBlock(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'Об отеле',
                          style: CustomTextStyles.nameHeading,
                        ),
                      ),
                      FeatureWrap(
                        features: hotel.aboutTheHotel!.peculiarities,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          bottom: 16.0,
                        ),
                        child: Text(
                          hotel.aboutTheHotel?.description ?? '',
                          style: CustomTextStyles.description,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(
                          bottom: 16,
                        ),
                        height: 194,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CustomColors.featureBackground,
                        ),
                        child: const DetailsButtonList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: CustomColors.mainBackground,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: CustomButton(
              label: 'К выбору номера',
              width: size.width - 32,
              onPressed: viewModel.toRooms,
            ),
          ),
        ],
      ),
    );
  }

  static Widget create({required int hotelId}) {
    return ChangeNotifierProvider(
      create: (context) => HotelViewModel(context, hotelId: hotelId),
      child: const HotelScreen(),
    );
  }
}
