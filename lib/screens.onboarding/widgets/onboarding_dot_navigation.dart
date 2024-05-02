import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens.onboarding/controllers/onboarding.controller.dart';
import 'package:onboarding_screen/utilities/constants/colors.dart';
import 'package:onboarding_screen/utilities/constants/sizes.dart';
import 'package:onboarding_screen/utilities/device/device_utility.dart';
import 'package:onboarding_screen/utilities/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? MColors.light : MColors.dark, dotHeight: 6),
      ),
    );
  }
}
