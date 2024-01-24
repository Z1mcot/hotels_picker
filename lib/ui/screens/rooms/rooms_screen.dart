import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:hotels_picker/internal/consts/images.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/internal/utils.dart';
import 'package:hotels_picker/ui/common_widgets/custom_button.dart';
import 'package:hotels_picker/ui/common_widgets/custom_page.dart';
import 'package:hotels_picker/ui/common_widgets/feature_wrap.dart';
import 'package:hotels_picker/ui/common_widgets/info_block.dart';
import 'package:hotels_picker/ui/common_widgets/loader_widget.dart';
import 'package:hotels_picker/ui/common_widgets/picture_carousel.dart';
import 'package:hotels_picker/ui/common_widgets/secondary_button.dart';
import 'package:hotels_picker/ui/screens/rooms/rooms_view_model.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RoomsViewModel>();
    final rooms = viewModel.state.rooms;
    if (viewModel.state.isLoading || rooms.isEmpty) {
      return const LoaderWidget();
    }

    final size = MediaQuery.of(context).size;

    return CustomPage(
      title: viewModel.state.hotelName,
      child: ListView.separated(
        itemCount: rooms.length + 1,
        separatorBuilder: (_, __) => const SizedBox(
          height: 8,
        ),
        itemBuilder: (_, listIndex) {
          if (listIndex == 0) {
            return const SizedBox.shrink();
          }

          final room = rooms[listIndex - 1];

          return InfoBlock(
            margin: EdgeInsets.zero,
            children: [
              if (room.imageUrls.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: PictureCarousel(
                    onPageChanged: viewModel.onPageChanged,
                    picturesUrls: room.imageUrls,
                    size: size,
                    selectedItem: viewModel.state.currentPicIndex,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  room.name ?? 'undefined',
                  style: CustomTextStyles.nameHeading,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: FeatureWrap(
                  features: room.peculiarities,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: SecondaryButton(
                  onTap: () {},
                  label: 'Подробнее о номере',
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 2.5,
                    bottom: 2.5,
                    right: 2,
                  ),
                  icon: Container(
                    margin: const EdgeInsets.only(left: 2),
                    width: 24,
                    height: 24,
                    child: Images.arrowForward,
                  ),
                ),
              ),
              // TODO richtext?
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      room.price!.asCurrency(),
                      style: CustomTextStyles.price,
                    ),
                    Text(
                      room.pricePer ?? '',
                      style: CustomTextStyles.subtitle,
                    )
                  ],
                ),
              ),
              CustomButton(
                label: 'Выбрать номер',
                width: size.width - 32,
                onPressed: () => viewModel.toOrder(room.id),
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget create({required int hotelId}) {
    return ChangeNotifierProvider(
      create: (context) => RoomsViewModel(context, hotelId: hotelId),
      child: const RoomsScreen(),
    );
  }
}
