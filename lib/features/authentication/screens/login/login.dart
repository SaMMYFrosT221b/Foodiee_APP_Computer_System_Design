import 'package:flutter/material.dart';
import 'package:foodiee/common/widgets/login_signup/form_divider.dart';
import 'package:foodiee/common/widgets/login_signup/social_button.dart';
import 'package:foodiee/features/authentication/screens/login/widgets/login_form.dart';
import 'package:foodiee/features/authentication/screens/login/widgets/login_header.dart';
import 'package:foodiee/utlis/constants/sizes.dart';
import 'package:foodiee/utlis/constants/text_strings.dart';
import 'package:foodiee/utlis/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          // padding: TSpacingStyle.paddingWithAppBarHeight,
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
          child: Column(
            children: [
              TLoginHeader(dark: dark),

              ///   Form
              const TLoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInlWith,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections - 12,
              ),

              /// Footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
