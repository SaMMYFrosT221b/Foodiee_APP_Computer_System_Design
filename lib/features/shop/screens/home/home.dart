import 'package:flutter/material.dart';
import 'package:foodiee/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:foodiee/utlis/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: ,
              child: Container(
                color: TColors.primaryColor,
                padding: EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: TCircularContainer(
                          backgroundColor: TColors.textWhite.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: TCircularContainer(
                          backgroundColor: TColors.textWhite.withOpacity(0.1),
                        ),
                      ),
                      Column(
                        children: [
                          ///App bar
                          ///Search bar
                          ///Categories
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
