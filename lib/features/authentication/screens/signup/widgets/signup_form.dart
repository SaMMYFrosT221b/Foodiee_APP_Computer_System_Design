import "package:flutter/material.dart";
import "package:foodiee/features/authentication/screens/signup/verify_email.dart";
import "package:foodiee/utlis/constants/colors.dart";
import "package:foodiee/utlis/constants/sizes.dart";
import "package:foodiee/utlis/constants/text_strings.dart";
import "package:get/get.dart";
import "package:iconsax_flutter/iconsax_flutter.dart";

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                            color: dark ? Colors.white : Colors.grey)),
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
                            color: dark ? Colors.white10 : Colors.grey)),
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
                      width: 1.3, color: dark ? Colors.white : Colors.grey)),
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
                      width: 1.3, color: dark ? Colors.white : Colors.grey)),
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
                      width: 1.3, color: dark ? Colors.white : Colors.grey)),
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
                        width: 1.3, color: dark ? Colors.white : Colors.grey)),
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
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.primaryColor,
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
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.primaryColor,
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
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
