import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/ui/common_widgets/row_icon_button.dart';

class ButtonList<T> extends StatelessWidget {
  final List<T>? list;
  final Widget Function(T) icon;
  final Widget Function(T) title;
  final void Function(T)? onTap;

  const ButtonList({
    super.key,
    required this.list,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => Padding(
          padding: const EdgeInsets.only(
            left: 53,
            right: 15,
          ),
          child: Container(
            color: CustomColors.listSeparator,
            child: const SizedBox(
              height: 1,
            ),
          )),
      itemCount: list!.length,
      itemBuilder: (BuildContext context, int index) {
        var item = list![index];
        return Material(
          child: RowIconButton(
            icon: icon(item),
            middle: title(item),
            onTap: onTap == null ? null : () => onTap!(item),
          ),
        );
      },
    );
  }
}
