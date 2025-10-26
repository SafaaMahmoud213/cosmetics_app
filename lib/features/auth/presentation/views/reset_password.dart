import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/costom_button.dart';
import 'package:cosmetics_app/core/wigdets/costom_text_form_field.dart';
import 'package:cosmetics_app/features/auth/presentation/views/verify_code_view.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/costom_header.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            70.he,
            CostomHeader(data: "Reset password "),
            20.he,
            Center(
              child: Text(
                "Please enter your phone number below\n to recovery your password.",
                textAlign: TextAlign.center,
                style: CostomTextStyle.text16Bold.copyWith(color: Colors.grey),
              ),
            ),
            50.he,
            CostomTextFormField(
              labelText: "Phone Number",
              keyboardType: TextInputType.numberWithOptions(),
              validator: (val) {
                if (val!.isEmpty) {
                  return "Enter Current phone";
                } else if (val.length != 11) {
                  return "Phone number should be exactly 11 digits";
                }
                return null;
              },
            ),

            90.he,
            CostomButton(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  NavigateTo().push(page: VerifyCodeView());
                }
              },
              color: CostomColors.secandryColor,
              text: "Next",
            ),
            20.he,
          ],
        ),
      ),
    );
  }
}
