import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/features/auth/presentation/views/signin_view.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/costom_header.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/costom_pin_put.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/dont_or_have_account.dart';
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
            CostomHeader(data: "Verify Code"),
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
            Center(
              child: DontOrHaveAccount(
                text1: "Didn’t receive a code? ",
                text2: " Resend",
                onTap: () => NavigateTo().push(page: SignInView()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
