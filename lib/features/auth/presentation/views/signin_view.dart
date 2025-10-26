import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/costom_button.dart';
import 'package:cosmetics_app/core/wigdets/costom_text_form_field.dart';
import 'package:cosmetics_app/features/auth/presentation/views/reset_password.dart';
import 'package:cosmetics_app/features/auth/presentation/views/signup_view.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/costom_signin_body.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/dont_or_have_account.dart';
import 'package:cosmetics_app/features/bottom_navigation/bottom_navigation_view.dart';
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
                CostomSigninBody(),
                CostomTextFormField(
                  labelText: "Phone Number",

                  keyboardType: TextInputType.numberWithOptions(),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "The Field Should Not Be Impty";
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
                      return "The Field Should Not Be Impty";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Your Password",
                  isPass: true,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => NavigateTo().push(page: ResetPassword()),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password?",
                        style: CostomTextStyle.text14boldpink,
                      ),
                    ),
                  ),
                ),
                40.he,
                CostomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      NavigateTo().pushReplaceMent(
                        page: BottomNavigationView(),
                      );
                    }
                  },
                  color: CostomColors.secandryColor,
                  text: "Login",
                ),
                20.he,
                DontOrHaveAccount(
                  text1: "Don’t have an account?",
                  text2: " Register",
                  onTap: () => NavigateTo().push(page: SignUpView()),
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
