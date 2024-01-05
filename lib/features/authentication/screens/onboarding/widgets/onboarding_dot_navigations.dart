import 'package:flutter/material.dart';
import 'package:foodiee/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utlis/constants/colors.dart';
import '../../../../../utlis/constants/sizes.dart';
import '../../../../../utlis/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        bottom: 100,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}
