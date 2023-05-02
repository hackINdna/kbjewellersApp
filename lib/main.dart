import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/bottom_navigator/custom_bottom_navigation.dart';

import 'pages/splash_screen/splash_screen.dart';
import './generated_routes.dart';

void main() => runApp(const StartApp());

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: appLevelNavigatorKey,
      title: "Jewel AR",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          // foregroundColor: Colors.amber,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 100,
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            iconColor: MaterialStatePropertyAll(Colors.black),
          ),
        ),
        splashColor: Colors.transparent,
        splashFactory: InkSparkle.splashFactory,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      onGenerateRoute: (settings) => generatedRoutesMain(settings),
      // home: const SplashScreen(),
      home: const CustomBottomNavigation(),
    );
  }
}
