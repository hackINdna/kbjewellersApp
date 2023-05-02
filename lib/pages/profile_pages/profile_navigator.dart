import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/generated_routes.dart';

import 'profile_page.dart';

class ProfileNavigatorPage extends StatefulWidget {
  static const String routeName = '/profile-navigator-page';
  const ProfileNavigatorPage({super.key});

  @override
  State<ProfileNavigatorPage> createState() => _ProfileNavigatorPageState();
}

class _ProfileNavigatorPageState extends State<ProfileNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: profileLevelNavigatorKey,
      initialRoute: ProfilePage.routeName,
      onGenerateRoute: (RouteSettings settings) =>
          generatedRoutesProfile(settings),
    );
  }
}
