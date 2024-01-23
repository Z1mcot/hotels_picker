import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  final String ratingName;

  const RatingWidget({
    super.key,
    required this.rating,
    required this.ratingName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: CustomColors.raitingBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            size: 15,
            color: CustomColors.raiting,
          ),
          Text(
            '$rating $ratingName',
            style: CustomTextStyles.rating,
          )
        ],
      ),
    );
  }
}
