import 'package:envc/core/widgets/app_button.dart';
import 'package:envc/features/onboarding/domain/entites/onboaring_entity.dart';
import 'package:envc/features/onboarding/presentation/views/widgets/onboarding_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.onboaringEntity,
    required this.pageController,
    required this.currentPage,
  });
  final OnboardingEntity onboaringEntity;
  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: OnboardingCustomAppBar(pageController: pageController),
        ),
        SizedBox(height: 32),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              foregroundDecoration: BoxDecoration(
                // color: Colors.red,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(0),
                  ],
                  stops: [0.0, 0.5],
                ),
              ),
              child: Image.asset(onboaringEntity.image, fit: BoxFit.contain),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            onboaringEntity.title,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            onboaringEntity.description,
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(),
          ),
        ),
        SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AppButton(
            onPressed: () {
              pageController.animateToPage(
                pageController.page!.toInt() + 1,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          ),
        ),
        SizedBox(height: 28),
      ],
    );
  }
}
