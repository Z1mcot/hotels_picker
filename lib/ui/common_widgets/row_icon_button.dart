import 'package:flutter/material.dart';
import 'package:hotels_picker/internal/consts/colors.dart';

class RowIconButton extends StatelessWidget {
  final Widget icon;
  final Widget middle;
  final VoidCallback? onTap;

  const RowIconButton({
    super.key,
    required this.icon,
    required this.middle,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 12),
              child: SizedBox(
                height: 24,
                width: 24,
                child: icon,
              ),
            ),
            Expanded(child: middle),
            onTap == null
                ? const SizedBox.shrink()
                : const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: CustomColors.main,
                    size: 20,
                  )
          ],
        ),
      ),
    );
  }
}
