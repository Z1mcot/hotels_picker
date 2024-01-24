import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/images.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/ui/common_widgets/button_list.dart';

class _ButtonListRow {
  final String title;
  final String description;
  final Widget icon;
  _ButtonListRow({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class DetailsButtonList extends StatelessWidget {
  const DetailsButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      _ButtonListRow(
        title: 'Удобства',
        description: 'Самое необходимое',
        icon: Images.amenities,
      ),
      _ButtonListRow(
        title: 'Что включено',
        description: 'Самое необходимое',
        icon: Images.included,
      ),
      _ButtonListRow(
        title: 'Что не включено',
        description: 'Самое необходимое',
        icon: Images.excluded,
      )
    ];

    return ButtonList(
      list: list,
      icon: (r) => r.icon,
      title: (r) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            r.title,
            style: CustomTextStyles.hotelDetailsButton,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            r.description,
            style: CustomTextStyles.hotelDetailsSubtitle,
          )
        ],
      ),
      onTap: (_) {},
    );
  }
}
