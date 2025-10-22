import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/feature/auth/presentation/views/signin_view.dart';
import 'package:cosmetics_app/feature/auth/presentation/widgets/costom_pin_put.dart';
import 'package:flutter/material.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(url: CostomImage.logo, width: 120, height: 100),
            20.he,

            Center(
              child: Text("Create account", style: CostomTextStyle.text24bold),
            ),
            10.he,
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "We just sent a 4-digit verification code to +20 1022658997. Enter the code in the box below to continue.",
                style: CostomTextStyle.text16Bold.copyWith(color: Colors.grey),
              ),
            ),
            50.he,
            CostomPinPut(),
            20.he,
            GestureDetector(
              onTap: () => AppNavigator().push(page: SignInView()),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Didn’t receive a code? ",
                        style: CostomTextStyle.text13regular,
                      ),

                      TextSpan(
                        text: " Resend",
                        style: CostomTextStyle.text14boldpink,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
