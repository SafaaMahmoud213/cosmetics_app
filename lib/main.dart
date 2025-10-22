import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: AppNavigator.navigatorKey,
          title: 'Cosmetic',
          theme: ThemeData(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: CostomColors.primaryColor,
            ),
            colorScheme: ColorScheme.fromSeed(
              seedColor: CostomColors.primaryColor,
            ),
          ),
          home: OnboardingView(),
        );
      },
    );
  }
}
