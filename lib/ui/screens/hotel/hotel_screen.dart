import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/ui/common_widgets/custom_button.dart';
import 'package:hotels_picker/ui/common_widgets/feature_wrap.dart';
import 'package:hotels_picker/ui/common_widgets/info_block.dart';
import 'package:hotels_picker/ui/screens/hotel/ui_components/details_button_list.dart';
import 'package:provider/provider.dart';

import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/internal/utils.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';
import 'package:hotels_picker/ui/common_widgets/picture_carousel.dart';
import 'package:hotels_picker/ui/common_widgets/rating_widget.dart';
import 'package:hotels_picker/ui/screens/hotel/hotel_screen_view_model.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HotelScreenViewModel>();
    final size = MediaQuery.of(context).size;
    final hotel = viewModel.state.hotel;

    if (viewModel.state.isLoading || hotel == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return CustomPage(
      canGoBack: false,
      padding: EdgeInsets.zero,
      title: 'Отель',
      child: SingleChildScrollView(
        child: Column(
          children: [
            InfoBlock(
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
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      hotel.adress!,
                      style: CustomTextStyles.address,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'от ${hotel.minimalPrice!.asCurrency()}',
                        style: CustomTextStyles.price,
                      ),
                      Text(
                        hotel.priceForIt ?? '',
                        style: CustomTextStyles.priceForIt,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
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
                      color: CustomColors.featureBackground),
                  child: const DetailsButtonList(),
                ),
              ],
            ),
            CustomButton(
              label: 'К выбору номера',
              width: size.width - 32,
              onPressed: viewModel.toRooms,
            ),
          ],
        ),
      ),
    );
  }

  static Widget create() {
    return ChangeNotifierProvider(
      create: (context) => HotelScreenViewModel(context),
      child: const HotelScreen(),
    );
  }
}
