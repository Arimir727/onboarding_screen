import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onboarding_screen/screens.onboarding/controllers/onboarding.controller.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_page.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:onboarding_screen/utilities/constants/colors.dart';
import 'package:onboarding_screen/utilities/constants/image.strings.dart';
import 'package:onboarding_screen/utilities/constants/sizes.dart';
import 'package:onboarding_screen/utilities/constants/text.strings.dart';
import 'package:onboarding_screen/utilities/device/device_utility.dart';
import 'package:onboarding_screen/utilities/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        ///Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnBoardingPage(
              image: MImages.OnBoardingImage1,
              title: MTexts.onBoardingTitle1,
              subTitle: MTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: MImages.OnBoardingImage2,
              title: MTexts.onBoardingTitle2,
              subTitle: MTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: MImages.OnBoardingImage3,
              title: MTexts.onBoardingTitle3,
              subTitle: MTexts.onBoardingSubTitle3,
            )
          ],
        ),

        ///Skip Button
        OnBoardingSkip(),

        ///Dot Navigation SmoothPageIndicator
        OnBoardingDotNavigation(),

        ///Circular Button
        OnBoardingNextButton()
      ],
    ));
  }
}

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
