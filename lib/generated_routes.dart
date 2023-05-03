import 'package:flutter/material.dart';
import 'package:jewel_ar/pages/all_exclusive_pages/all_exclusive_page.dart';
import 'package:jewel_ar/pages/customer_message_pages/customer_message_page.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/filter_page.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/item_details_page.dart';
import 'pages/bottom_navigator/custom_bottom_navigation.dart';
import 'pages/cart_pages/cart_page.dart';
import 'pages/category_pages/category_page.dart';
import 'pages/collection_page/collection_page.dart';
import 'pages/gift_guide_pages/gift_guide_page.dart';
import 'pages/home_pages/listing_pages/listing_page.dart';
import 'pages/offers_page/offer_page.dart';
import 'pages/profile_pages/profile_page.dart';
import 'pages/splash_screen/splash_screen.dart';
import 'pages/home_pages/home_page.dart';
import 'pages/trust_features_of_app/trust_features_page.dart';

Route<dynamic> generatedRoutesMain(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SplashScreen(),
      );

    case CustomBottomNavigation.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomBottomNavigation(),
      );

    // Listing Page
    case ListingPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ListingPage(),
      );

    // Filter Page
    case FilterPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const FilterPage(),
      );

    // Item Details Page
    case ItemDetailsPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ItemDetailsPage(),
      );

    // Collection Page
    case CollectionPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CollectionPage(),
      );

    // Trust Feature Page
    case TrustFeaturesPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TrustFeaturesPage(),
      );

    // All Exclusive Page
    case AllExclusivePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AllExclusivePage(),
      );

    // Offers Page
    case OffersPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OffersPage(),
      );

    // Gift Guide Page
    case GiftGuidePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const GiftGuidePage(),
      );

    // Customer Message Page
    case CustomerMessagePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomerMessagePage(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("404 ERROR"),
          ),
        ),
      );
  }
}

// home generated routes
Route<dynamic>? generatedRoutesHome(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => const HomePage(),
      );
  }
}

// category generated routes
Route<dynamic>? generatedRoutesCategory(RouteSettings settings) {
  switch (settings.name) {
    case CategoryPage.routeName:
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => const CategoryPage(),
      );
  }
}

// cart generated routes
Route<dynamic>? generatedRoutesCart(RouteSettings settings) {
  switch (settings.name) {
    case CartPage.routeName:
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => const CartPage(),
      );
  }
}

// profile generated routes
Route<dynamic>? generatedRoutesProfile(RouteSettings settings) {
  switch (settings.name) {
    case ProfilePage.routeName:
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => const ProfilePage(),
      );
  }
}
