import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/core/wigdets/costom_button.dart';
import 'package:cosmetics_app/feature/auth/presentation/views/signin_view.dart';
import 'package:cosmetics_app/feature/onboarding/presentation/widgets/costom_container_small.dart';
import 'package:cosmetics_app/feature/onboarding/presentation/widgets/costom_contsiner_long.dart';
import 'package:cosmetics_app/feature/onboarding/presentation/widgets/costom_floating_button.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  final List<String> images = [
    CostomImage.onboard1,
    CostomImage.onboard2,
    CostomImage.onboard3,
  ];
  final List<String> title = [
    "WELCOME!",
    "SEARCH & PICK",
    "PUSH NOTIFICATIONS",
  ];
  final List<String> subTitle = [
    "Makeup has the power to transform your\n mood and empowers you to be a more \n confident person.",
    "We have dedicated set of products and routines hand\n picked for every skin type.",
    "Allow notifications for new makeup & \ncosmetics offers.",
  ];
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        itemCount: images.length,
        itemBuilder:
            (context, index) => Stack(
              children: [
                currentIndex == 1
                    ? CostomContsinerLong()
                    : CostomContainerSmall(),
                if (currentIndex != 2)
                  Positioned(
                    top: 40,
                    right: 20,
                    child: GestureDetector(
                      onTap: () {
                        AppNavigator().pushAndRemoveUntil(page: SignInView());
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  top: 130,
                  left: 70,
                  child: AppImage(url: images[index], width: 285, height: 260),
                ),
                Positioned(
                  top: 430,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      title[index],
                      style: CostomTextStyle.text16Bold.copyWith(
                        color:
                            currentIndex == 1
                                ? Colors.white
                                : CostomColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 470,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      subTitle[index],
                      textAlign: TextAlign.center,
                      style: CostomTextStyle.text13regular.copyWith(
                        color:
                            currentIndex == 1
                                ? Colors.white
                                : CostomColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                currentIndex == 2
                    ? Positioned(
                      bottom: 60,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: CostomButton(
                          onTap: () {
                            AppNavigator().pushAndRemoveUntil(
                              page: SignInView(),
                            );
                          },
                          text: "Let’s start!",
                        ),
                      ),
                    )
                    : Positioned(
                      bottom: currentIndex == 1 ? 100 : 60,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: CostomFloatingButton(
                          backgroundColor:
                              currentIndex == 1
                                  ? Colors.white
                                  : CostomColors.primaryColor,
                          colors:
                              currentIndex == 1
                                  ? CostomColors.primaryColor
                                  : null,
                          onPressed: () {
                            controller.animateToPage(
                              currentIndex + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                      ),
                    ),
              ],
            ),
      ),
    );
  }
}
