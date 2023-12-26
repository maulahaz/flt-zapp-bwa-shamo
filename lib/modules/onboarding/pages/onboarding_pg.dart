import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/extensions/x_extensions.dart';

import '../../../configs/x_configs.dart';
import '../../home/x_homes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    // Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/home'));
    Timer(Duration(seconds: 3), () => context.pushReplacement(HomePage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBg1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/assets/images/noimage.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
