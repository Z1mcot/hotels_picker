import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels_picker/internal/consts/colors.dart';
import 'package:hotels_picker/internal/consts/text_styles.dart';
import 'package:hotels_picker/ui/common_widgets/go_back_button.dart';

class CustomPage extends StatelessWidget {
  final String? title;
  final Widget child;
  final bool canGoBack; // TODO think about exit strategy
  final EdgeInsetsGeometry? padding;
  final Widget? bottomWidget;

  const CustomPage({
    super.key,
    required this.child,
    required this.canGoBack,
    this.title,
    this.padding,
    this.bottomWidget,
  });

  void onBack(BuildContext context) {
    if (context.mounted && context.canPop()) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: PopScope(
        canPop: canGoBack,
        onPopInvoked: (_) => onBack(context),
        child: Scaffold(
          backgroundColor: CustomColors.pageBackground,
          appBar: AppBar(
            leading: canGoBack
                ? GoBackButton(onBack: onBack)
                : const SizedBox.shrink(),
            titleSpacing: 0,
            elevation: 0,
            backgroundColor: CustomColors.mainBackground,
            systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.transparent,
            ),
            centerTitle: true,
            title: Text(
              title ?? '',
              style: CustomTextStyles.screenTitle,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
