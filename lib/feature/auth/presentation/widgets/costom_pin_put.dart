import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/costom_button.dart';
import 'package:cosmetics_app/feature/auth/presentation/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CostomPinPut extends StatefulWidget {
  const CostomPinPut({super.key});

  @override
  State<CostomPinPut> createState() => _CostomPinPutState();
}

class _CostomPinPutState extends State<CostomPinPut> {
  final TextEditingController pinController = TextEditingController();
  final GlobalKey<FormState> form = GlobalKey();

  @override
  void dispose() {
    pinController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const fillColor = Color.fromRGBO(243, 246, 249, 0);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: Colors.grey),
      ),
    );
    return Form(
      key: form,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Pinput(
              enableInteractiveSelection: true,

              controller: pinController,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: CostomColors.secandryColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: CostomColors.secandryColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: CostomColors.secandryColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          80.he,
          CostomButton(
            onTap: () {
              if (form.currentState!.validate()) {
                AppNavigator().push(page: SignInView());
              }
            },
            color: CostomColors.secandryColor,
            text: "Done",
          ),
        ],
      ),
    );
  }
}
