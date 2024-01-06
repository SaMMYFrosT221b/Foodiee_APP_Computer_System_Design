import 'package:flutter/material.dart';
import 'package:foodiee/utlis/constants/colors.dart';
import 'package:foodiee/utlis/helpers/helper_functions.dart';
import 'package:get/get_utils/get_utils.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: dark ? TColors.darkerGrey : TColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(
          dividerText.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
              color: dark ? TColors.darkerGrey : TColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        )
      ],
    );
  }
}
