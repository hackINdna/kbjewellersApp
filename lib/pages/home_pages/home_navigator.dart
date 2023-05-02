import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/generated_routes.dart';

import 'home_page.dart';

class HomeNavigatorPage extends StatefulWidget {
  static const String routeName = '/home-navigator-page';
  const HomeNavigatorPage({super.key});

  @override
  State<HomeNavigatorPage> createState() => _HomeNavigatorPageState();
}

class _HomeNavigatorPageState extends State<HomeNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: homeLevelNavigatorKey,
      initialRoute: HomePage.routeName,
      onGenerateRoute: (RouteSettings settings) =>
          generatedRoutesHome(settings),
    );
  }
}
