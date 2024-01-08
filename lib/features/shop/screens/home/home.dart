import 'package:flutter/material.dart';
import 'package:foodiee/common/widgets/appbar/appbar.dart';
import 'package:foodiee/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:foodiee/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:foodiee/common/widgets/custom_shapes/curved_edge/curved_edges.dart';
import 'package:foodiee/common/widgets/custom_shapes/curved_edge/curved_edges_widget.dart';
import 'package:foodiee/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:foodiee/utlis/constants/colors.dart';
import 'package:foodiee/utlis/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    showBackArrow: false,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.grey),
                        ),
                        Text(
                          TTexts.homeAppbarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: TColors.white),
                        ),
                      ],
                    ),
                    actions: [
                      TCartCounterIcon(
                        onPressed: () {},
                        iconColor: TColors.white,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
