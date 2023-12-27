import 'package:flutter/material.dart';

import 'configs/x_configs.dart';
// import 'modules/auth/x_auths.dart';
import 'modules/auth/x_auths.dart';
import 'modules/home/x_homes.dart';
import 'modules/onboarding/x_onboardings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightMode,
      // darkTheme: MyThemes.darkMode,
      // home: RegisterPage(),
      routes: {
        '/': (context) => OnboardingPage(),
        '/home': (context) => HomePage(),
        '/signin': (context) => SigninPage(),
        '/signup': (context) => SignupPage(),
      },
    );
  }
}
