import 'package:flutter/material.dart';
import 'package:foodiee/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:foodiee/features/authentication/screens/onboarding/widgets/onboarding_dot_navigations.dart';
import 'package:foodiee/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:foodiee/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:foodiee/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:foodiee/utlis/constants/image_strings.dart';
import 'package:foodiee/utlis/constants/sizes.dart';
import 'package:foodiee/utlis/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //   Skip button
          const OnBoardingSkip(),
          //   Dot Navigation smooth page indicator
          const OnBoardingDotNavigation(),
          //   Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
