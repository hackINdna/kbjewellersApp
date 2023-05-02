import 'package:flutter/material.dart';
import 'package:jewel_ar/data/constData.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/cart_pages/cart_navigator.dart';
import 'package:jewel_ar/pages/category_pages/category_navigator.dart';
import 'package:jewel_ar/pages/home_pages/home_navigator.dart';
import 'package:jewel_ar/pages/home_pages/home_page.dart';
import 'package:jewel_ar/pages/profile_pages/profile_navigator.dart';

import '../../custom_widgets/bottom_navigation_bar_item.dart';
import '../cart_pages/cart_page.dart';
import '../category_pages/category_page.dart';
import '../profile_pages/profile_page.dart';

class CustomBottomNavigation extends StatefulWidget {
  static const String routeName = '/custom-bottom-navigation-page';
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _page = 0;
  final List<Widget> _pages = [
    const HomeNavigatorPage(),
    const CategoryNavigatorPage(),
    const CartNavigatorPage(),
    const ProfileNavigatorPage(),
  ];

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    homeLevelNavigatorKey,
    categoryLevelNavigatorKey,
    cartLevelNavigatorKey,
    profileLevelNavigatorKey,
  ];

  void changePage(int value) {
    setState(() {
      _page = value;
    });
  }

  Future<bool> _systemBackButtonPressed() async {
    if (_page > 0) {
      if (_navigatorKeys[_page].currentState!.canPop()) {
        _navigatorKeys[_page]
            .currentState!
            .pop(_navigatorKeys[_page].currentContext);
        return false;
      } else {
        setState(() {
          _page = 0;
        });
        return false;
      }
    } else {
      if (_navigatorKeys[_page].currentState!.canPop()) {
        _navigatorKeys[_page]
            .currentState!
            .pop(_navigatorKeys[_page].currentContext);
        return false;
      } else {
        return true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: IndexedStack(
          index: _page,
          children: _pages,
        ),
        bottomNavigationBar: Container(
          width: width,
          height: height * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              boxShadow,
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: width * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (_page == 0 &&
                      homeLevelNavigatorKey.currentState!.canPop()) {
                    homeLevelNavigatorKey.currentState!.pushNamedAndRemoveUntil(
                      HomePage.routeName,
                      (route) => false,
                    );
                  } else {
                    setState(() {
                      _page = 0;
                    });
                  }
                },
                child: bottomNavigationIcon(
                  mediaQuery,
                  Icons.home,
                  "Home",
                  _page == 0 ? Colors.orange : Colors.black.withOpacity(0.5),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_page == 1 &&
                      categoryLevelNavigatorKey.currentState!.canPop()) {
                    categoryLevelNavigatorKey.currentState!
                        .pushNamedAndRemoveUntil(
                      CategoryPage.routeName,
                      (route) => false,
                    );
                  } else {
                    setState(() {
                      _page = 1;
                    });
                  }
                },
                child: bottomNavigationIcon(
                  mediaQuery,
                  Icons.dashboard,
                  "Category",
                  _page == 1 ? Colors.orange : Colors.black.withOpacity(0.5),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_page == 2 &&
                      cartLevelNavigatorKey.currentState!.canPop()) {
                    cartLevelNavigatorKey.currentState!.pushNamedAndRemoveUntil(
                      CartPage.routeName,
                      (route) => false,
                    );
                  } else {
                    setState(() {
                      _page = 2;
                    });
                  }
                },
                child: bottomNavigationIcon(
                  mediaQuery,
                  Icons.shopping_bag_outlined,
                  "Cart",
                  _page == 2 ? Colors.orange : Colors.black.withOpacity(0.5),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_page == 3 &&
                      profileLevelNavigatorKey.currentState!.canPop()) {
                    profileLevelNavigatorKey.currentState!
                        .pushNamedAndRemoveUntil(
                      ProfilePage.routeName,
                      (route) => false,
                    );
                  } else {
                    setState(() {
                      _page = 3;
                    });
                  }
                },
                child: bottomNavigationIcon(
                  mediaQuery,
                  Icons.account_circle_outlined,
                  "Profile",
                  _page == 3 ? Colors.orange : Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
