import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/costom_button.dart';
import 'package:cosmetics_app/core/wigdets/costom_text_form_field.dart';
import 'package:cosmetics_app/features/auth/presentation/views/signin_view.dart';
import 'package:cosmetics_app/features/auth/presentation/views/verify_code_view.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/costom_header.dart'
    show CostomHeader;
import 'package:cosmetics_app/features/auth/presentation/widgets/dont_or_have_account.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                70.he,
                CostomHeader(data: "Create account"),

                20.he,

                CostomTextFormField(
                  labelText: "Your Name",
                  keyboardType: TextInputType.name,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Current name";
                    }
                    return null;
                  },
                ),
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

                CostomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Create your password",
                  isPass: true,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Current Password";
                    }
                    return null;
                  },
                ),
                CostomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Confirm password",
                  isPass: true,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Current Password";
                    }
                    return null;
                  },
                ),

                60.he,
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

                DontOrHaveAccount(
                  text1: "Have an account?",
                  text2: " Login",
                  onTap: () => NavigateTo().push(page: SignInView()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
