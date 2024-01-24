import 'package:flutter/material.dart';
import 'package:hotels_picker/ui/common_widgets/carousel_indicator.dart';

class PictureCarousel extends StatelessWidget {
  final void Function(int) onPageChanged;
  final List<String> picturesUrls;
  final Size size;
  final EdgeInsets? padding;
  final int selectedItem;

  const PictureCarousel({
    super.key,
    required this.onPageChanged,
    required this.picturesUrls,
    required this.size,
    required this.selectedItem,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = picturesUrls.length;
    double screenPad = 16.0; // screen padding for swiping between pages

    return SizedBox(
      height: size.width - 118,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (val) => onPageChanged(val),
              itemCount: itemCount,
              controller: PageController(
                viewportFraction: 1 + (screenPad * 2 / size.width),
              ),
              itemBuilder: (_, pageIndex) {
                var url = picturesUrls[pageIndex];

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CarouselIndicator(
              count: itemCount,
              current: selectedItem,
            ),
          ),
        ],
      ),
    );
  }
}
