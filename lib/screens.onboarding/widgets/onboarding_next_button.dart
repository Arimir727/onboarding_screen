import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onboarding_screen/screens.onboarding/controllers/onboarding.controller.dart';
import 'package:onboarding_screen/utilities/constants/colors.dart';
import 'package:onboarding_screen/utilities/constants/sizes.dart';
import 'package:onboarding_screen/utilities/device/device_utility.dart';
import 'package:onboarding_screen/utilities/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      right: MSizes.defaultSpace,
      bottom: MDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: dark ? MColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
