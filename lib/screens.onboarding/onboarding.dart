import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/screens.onboarding/controllers/onboarding.controller.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_next_button.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_page.dart';
import 'package:onboarding_screen/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:onboarding_screen/utilities/constants/image.strings.dart';
import 'package:onboarding_screen/utilities/constants/text.strings.dart';

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
