import 'package:flutter/material.dart';

import 'configs/x_configs.dart';
// import 'modules/auth/x_auths.dart';
import 'modules/home/x_homes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App!!',
      theme: MyThemes.lightMode,
      darkTheme: MyThemes.darkMode,
      // home: RegisterPage(),
      home: HomePage(),
    );
  }
}