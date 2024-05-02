import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens.onboarding/controllers/onboarding.controller.dart';
import 'package:onboarding_screen/utilities/constants/sizes.dart';
import 'package:onboarding_screen/utilities/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MDeviceUtils.getAppBarHeight(),
        right: MSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: Text('Skip'),
        ));
  }
}
