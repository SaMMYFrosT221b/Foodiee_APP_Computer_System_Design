import 'package:flutter/material.dart';
import 'package:foodiee/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utlis/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
