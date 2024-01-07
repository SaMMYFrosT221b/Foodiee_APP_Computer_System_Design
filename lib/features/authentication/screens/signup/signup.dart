import 'package:flutter/material.dart';
import 'package:foodiee/common/widgets/login_signup/form_divider.dart';
import 'package:foodiee/common/widgets/login_signup/social_button.dart';
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
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      width: 1.3,
                                      color:
                                          dark ? Colors.white : Colors.grey)),
                              labelText: TTexts.firstNome,
                              prefixIcon: const Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: TSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      width: 1.3,
                                      color:
                                          dark ? Colors.white10 : Colors.grey)),
                              labelText: TTexts.firstNome,
                              prefixIcon: const Icon(Iconsax.user),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Username
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1.3,
                                color: dark ? Colors.white : Colors.grey)),
                        labelText: TTexts.username,
                        prefixIcon: const Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Email
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1.3,
                                color: dark ? Colors.white : Colors.grey)),
                        labelText: TTexts.email,
                        prefixIcon: const Icon(Iconsax.message),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Phone Number
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1.3,
                                color: dark ? Colors.white : Colors.grey)),
                        labelText: TTexts.phoneNo,
                        prefixIcon: const Icon(Iconsax.mobile),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Password
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1.3,
                                  color: dark ? Colors.white : Colors.grey)),
                          labelText: TTexts.password,
                          prefixIcon: const Icon(Iconsax.password_check),
                          suffixIcon: const Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Terms&Condition checkbox
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: TTexts.iAgreeTo,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: ' ${TTexts.privacyPolicy}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          dark ? TColors.white : TColors.black,
                                    ),
                              ),
                              TextSpan(
                                  text: TTexts.and,
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: ' ${TTexts.termsOfUse}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          dark ? TColors.white : TColors.black,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    /// SignUp Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(TTexts.createAccount),
                      ),
                    ),

                    /// Divider
                    TFormDivider(dividerText: TTexts.orSignInlWith.capitalize!),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// Social Buttons
                    const TSocialButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
