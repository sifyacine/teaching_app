import 'package:education_app/common/widgets/home/course.dart';
import 'package:education_app/features/authentication/screens/home/home_screen.dart';
import 'package:education_app/features/authentication/screens/welcome/welcome.dart';
import 'package:education_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/authentication/screens/onboarding/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
