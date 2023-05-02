import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/generated_routes.dart';

import 'category_page.dart';

class CategoryNavigatorPage extends StatefulWidget {
  static const String routeName = '/category-navigator-page';
  const CategoryNavigatorPage({super.key});

  @override
  State<CategoryNavigatorPage> createState() => _CategoryNavigatorPageState();
}

class _CategoryNavigatorPageState extends State<CategoryNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: categoryLevelNavigatorKey,
      initialRoute: CategoryPage.routeName,
      onGenerateRoute: (RouteSettings settings) =>
          generatedRoutesCategory(settings),
    );
  }
}
