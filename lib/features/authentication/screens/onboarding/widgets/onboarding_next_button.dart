import 'package:flutter/material.dart';
import 'package:foodiee/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:foodiee/utlis/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utlis/constants/colors.dart';
import '../../../../../utlis/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: 90,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primaryColor : Colors.black),
        child: const Icon(Iconsax.arrow_right_1_copy),
      ),
    );
  }
}
