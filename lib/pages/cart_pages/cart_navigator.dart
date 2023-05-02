import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/generated_routes.dart';

import 'cart_page.dart';

class CartNavigatorPage extends StatefulWidget {
  static const String routeName = '/cart-navigator-page';
  const CartNavigatorPage({super.key});

  @override
  State<CartNavigatorPage> createState() => _CartNavigatorPageState();
}

class _CartNavigatorPageState extends State<CartNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: cartLevelNavigatorKey,
      initialRoute: CartPage.routeName,
      onGenerateRoute: (RouteSettings settings) =>
          generatedRoutesCart(settings),
    );
  }
}
