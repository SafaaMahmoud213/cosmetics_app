import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 6),
      () => NavigateTo().push(page: OnboardingView()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppImage(url: CostomImage.logo),
          Center(
            child: Text(
              "A V O V",
              style: CostomTextStyle.text18bold.copyWith(fontSize: 50),
            ),
          ),

          Center(
            child: Text(
              "the company for woman",
              style: CostomTextStyle.text13regular,
            ),
          ),
        ],
      ),
    );
  }
}
