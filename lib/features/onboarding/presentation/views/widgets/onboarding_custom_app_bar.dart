import 'package:envc/features/onboarding/presentation/views/widgets/back_arrow_widget.dart';
import 'package:envc/features/onboarding/presentation/views/widgets/skip_arrow_widget.dart';
import 'package:flutter/material.dart';

class OnboardingCustomAppBar extends StatelessWidget {
  const OnboardingCustomAppBar({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackArrow(
          onTap: () {
            pageController.animateToPage(
              pageController.page!.toInt() - 1,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        ),
        SkipArrowWidget(),
      ],
    );
  }
}
