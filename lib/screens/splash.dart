import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proprietor_app/utils/screen_navigator.dart';

import '../constants/colors.dart';
import 'onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 2500),
      () {
        nextScreenReplace(
          context,
          const Onboarding(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      body: Center(
        child: Image.asset(
          'assets/images/Logo.png',
          width: MediaQuery.of(context).size.width * 0.60,
        ),
      ),
    );
  }
}
