import 'package:flutter/material.dart';
import 'package:foodiee/common/widgets/login_signup/form_divider.dart';
import 'package:foodiee/common/widgets/login_signup/social_button.dart';
import 'package:foodiee/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:foodiee/utlis/constants/colors.dart';
import 'package:foodiee/utlis/constants/sizes.dart';
import 'package:foodiee/utlis/constants/text_strings.dart';
import 'package:foodiee/utlis/helpers/helper_functions.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Forms
              TSignupForm(dark: dark),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInlWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Social Buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
