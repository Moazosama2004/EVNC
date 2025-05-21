import 'package:envc/core/widgets/app_button.dart';
import 'package:envc/features/onboarding/domain/entites/onboaring_entity.dart';
import 'package:envc/features/onboarding/presentation/views/widgets/back_arrow_widget.dart';
import 'package:envc/features/onboarding/presentation/views/widgets/onboarding_custom_app_bar.dart';
import 'package:envc/features/onboarding/presentation/views/widgets/page_view_item.dart';
import 'package:envc/features/onboarding/presentation/views/widgets/skip_arrow_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: currentPage);
    super.initState();
  }

  final List<OnboardingEntity> onboardingItem = const [
    OnboardingEntity(
      title: 'Discover\nAmazing Event\nIn Your City',
      description: "The best event we have prepared for you",
      image: "assets/images/church slide.jpg",
    ),
    OnboardingEntity(
      title: 'Experience\nThe Ultimate\nLocal Event Right',
      description: "The best event we have prepared for you",
      image:
          "assets/images/Our Work — Church Media Squad _ Unlimited Graphic Design and Video Editing for Churches _.jpg",
    ),
    OnboardingEntity(
      title: 'Discover\nAmazing Event\nIn Your City',
      description: "The best event we have prepared for you",
      image: "assets/images/Pietro Baudin (@pietrobaudin) on X.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingItem.length,
      itemBuilder:
          (context, index) => PageViewItem(
            pageController: pageController,
            onboaringEntity: onboardingItem[index],
            currentPage: currentPage,
          ),
    );
  }
}
