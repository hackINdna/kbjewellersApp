import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import '../../data/constData.dart';
import '../bottom_navigator/custom_bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigatePage() {
    appLevelNavigatorKey.currentState!
        .pushNamed(CustomBottomNavigation.routeName);
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 3), navigatePage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: Image.asset("assets/images/namaste.png"),
      ),
    );
  }
}
