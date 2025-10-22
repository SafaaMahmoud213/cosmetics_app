import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/core/wigdets/costom_button.dart';
import 'package:cosmetics_app/core/wigdets/costom_text_form_field.dart';
import 'package:cosmetics_app/feature/auth/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                100.he,
                AppImage(url: CostomImage.login, width: 280, height: 227),
                20.he,
                Text("Login Now", style: CostomTextStyle.text24bold),
                10.he,
                Text(
                  "Please enter the details below to continue",
                  style: CostomTextStyle.text13regular,
                ),
                20.he,
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
                10.he,
                CostomTextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Current Password";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Your Password",
                  isPass: true,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: CostomTextStyle.text14boldpink,
                    ),
                  ),
                ),
                40.he,
                CostomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  color: CostomColors.secandryColor,
                  text: "Login",
                ),
                20.he,
                GestureDetector(
                  onTap: () => AppNavigator().push(page: SignUpView()),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account?",
                          style: CostomTextStyle.text13regular,
                        ),
                        TextSpan(
                          text: " Register",
                          style: CostomTextStyle.text14boldpink,
                        ),
                      ],
                    ),
                  ),
                ),
                20.he,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
