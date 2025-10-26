import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/wigdets/costom_text_form_field.dart';
import 'package:cosmetics_app/features/auth/presentation/widgets/costom_header.dart';
import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            70.he,
            CostomHeader(data: "Create Password "),
            20.he,
            Center(
              child: Text(
                "The password should have at least \n6 characters.",
                textAlign: TextAlign.center,
                style: CostomTextStyle.text16Bold.copyWith(color: Colors.grey),
              ),
            ),
            50.he,
            CostomTextFormField(
              keyboardType: TextInputType.visiblePassword,
              labelText: "New password",
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
          ],
        ),
      ),
    );
  }
}
