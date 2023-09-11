import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/pages/home_pages/home_widget/gifting_easy_page_view.dart';
import 'package:jewel_ar/pages/home_pages/home_widget/gifting_section.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/listing_page.dart';
import 'package:jewel_ar/pages/offers_page/offer_page.dart';
import 'package:jewel_ar/pages/profile_pages/profile_my_pages/my_wishlist_page.dart';
import 'package:jewel_ar/pages/search_pages/search_page.dart';
import '../../custom_widgets/custom_divider.dart';
import '../../custom_widgets/customer_review_item.dart';
import '../../custom_widgets/floatingActionButton.dart';
import '../../custom_widgets/social_media_circular_item.dart';
import '../../custom_widgets/view_all_with_icon.dart';
import '../../data/constData.dart';
import '../../data/static_data.dart';
import '../trust_features_of_app/trust_features_page.dart';
import 'home_widget/banner_page_indicator.dart';
import 'home_widget/banner_page_view.dart';
import 'home_widget/bestseller_page_view_widget.dart';
import 'home_widget/bestseller_section.dart';
import 'home_widget/brown_banner_small.dart';
import 'home_widget/category_row_listview.dart';
import 'home_widget/circular_banner_page_indicators.dart';
import 'home_widget/customer_review_section.dart';
import 'home_widget/discover_collection_section.dart';
import 'home_widget/from_the_gram_section.dart';
import 'home_widget/our_app_benefits_section.dart';
import 'home_widget/red_banner_medium.dart';
import 'home_widget/shop_by_categories_section.dart';
import 'home_widget/show_exclusive_section.dart';
import 'home_widget/show_on_budget_section.dart';
import 'home_widget/trending_melorra_section.dart';
import 'home_widget/virtual_tryon_banner_big.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home-page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _pressed = false;
  int bannerIndex = 0;
  int discoverCollectionIndex = 0;
  late PageController _bestsellerController;
  late PageController _exclusiveController;
  late PageController _bestOffersController;
  final _scaleFactor = 0.5;
  double currentBestsellerIndex = 1.00;
  double currentBestOfferIndex = 1.00;
  double currentExclusiveIndex = 0.0;
  final _exclusiveScaleFactor = 0.7;
  final _bestOfferScaleFactor = 0.7;

  @override
  void initState() {
    // Best Seller Controller
    _bestsellerController =
        PageController(initialPage: 1, viewportFraction: 0.5);
    _bestsellerController.addListener(() {
      setState(() {
        currentBestsellerIndex = _bestsellerController.page!;
      });
    });

    // Exclusive Controller
    _exclusiveController =
        PageController(initialPage: 0, viewportFraction: 0.5);
    _exclusiveController.addListener(() {
      setState(() {
        currentExclusiveIndex = _exclusiveController.page!;
      });
    });

    // Best Offers Controller
    _bestOffersController =
        PageController(initialPage: 1, viewportFraction: 0.5);
    _bestOffersController.addListener(() {
      setState(() {
        currentBestOfferIndex = _bestOffersController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _bestsellerController.dispose();
    _exclusiveController.dispose();
    _bestOffersController.dispose();
    super.dispose();
  }

  void _changePage(int value) {
    setState(() {
      bannerIndex = value;
    });
  }

  void _changeDisCollPage(int value) {
    // print(value);
    setState(() {
      discoverCollectionIndex = (discoverCollection.length - 1) - value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      title: const Text("JewelAR"),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {
            appLevelNavigatorKey.currentState!.pushNamed(SearchPage.routeName);
          },
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {
            appLevelNavigatorKey.currentState!
                .pushNamed(MyWishlistPage.routeName);
          },
          icon: Badge(
            backgroundColor: amberWithOpacity,
            label: const Text("0"),
            textColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 12,
            ),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryRowListView(
              mediaQuery: mediaQuery,
              pressed: _pressed,
            ),
            SizedBox(height: height * 0.03),
            SizedBox(
              width: width,
              height: height * 0.38,
              child: Column(
                children: [
                  Expanded(
                      child: BannerPageView(
                    width: width,
                    height: height,
                    changePageIndex: (value) => _changePage(value),
                  )),
                  BannerPageIndicator(
                    width: width,
                    height: height,
                    bannerIndex: bannerIndex,
                  ),
                ],
              ),
            ),
            const CustomDivider(),
            InkWell(
              onTap: () {
                appLevelNavigatorKey.currentState!
                    .pushNamed(TrustFeaturesPage.routeName);
              },
              child: OurAppBenefitsSection(width: width, height: height),
            ),
            const CustomDivider(),
            SizedBox(height: height * 0.03),
            DiscoverCollectionSection(
              width: width,
              height: height,
              changePageIndex: (value) => _changeDisCollPage(value),
              discoverCollectionIndex: discoverCollectionIndex,
            ),
            SizedBox(height: height * 0.03),
            ShopOnBudgetSection(width: width, height: height),
            SizedBox(height: height * 0.05),
            BestsellerSection(
              width: width,
              height: height,
              pageController: _bestsellerController,
              currentPageIndex: currentBestsellerIndex,
              scaleFactor: _scaleFactor,
              sectionTitle: "Meet our Bestsellers",
              sectionSubTitle: "Styles that everyone is falling in love with!",
            ),
            SizedBox(height: height * 0.02),
            ShopExclusiveSection(
              width: width,
              height: height,
              exclusiveController: _exclusiveController,
              currentExclusiveIndex: currentExclusiveIndex,
              exclusiveScaleFactor: _exclusiveScaleFactor,
            ),
            SizedBox(height: height * 0.03),
            TrendingMelorraSection(
              width: width,
              height: height,
            ),
            SizedBox(height: height * 0.05),
            InkWell(
              onTap: () {
                appLevelNavigatorKey.currentState!
                    .pushNamed(OffersPage.routeName);
              },
              child: BrownBannerSmall(width: width, height: height),
            ),
            SizedBox(height: height * 0.03),
            InkWell(
              onTap: () {
                appLevelNavigatorKey.currentState!.pushNamed(
                    ListingPage.routeName,
                    arguments: "Delivering Quick");
              },
              child: RedBannerMedium(width: width, height: height),
            ),
            SizedBox(height: height * 0.03),
            InkWell(
              onTap: () {
                appLevelNavigatorKey.currentState!.pushNamed(
                    ListingPage.routeName,
                    arguments: "All Jewellery");
              },
              child: VirtualTryOnBannerBig(width: width, height: height),
            ),
            SizedBox(height: height * 0.05),
            BestsellerSection(
              width: width,
              height: height,
              pageController: _bestOffersController,
              currentPageIndex: currentBestOfferIndex,
              scaleFactor: _scaleFactor,
              sectionTitle: "Best Offers",
              sectionSubTitle:
                  "Choose from 10000+ trendy, lightweight and affordable designer pieces!",
            ),
            SizedBox(height: height * 0.02),
            GiftingSection(
              width: width,
              height: height,
            ),
            SizedBox(height: height * 0.05),
            ShopByCategoriesSection(width: width, height: height),
            SizedBox(height: height * 0.05),
            FromTheGramSection(width: width, height: height),
            SizedBox(height: height * 0.03),

            // social media section
            Container(
              width: width,
              height: height * 0.05,
              // color: primaryBackground,
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialMeidaCircularItem(height: height),
                  SocialMeidaCircularItem(height: height),
                  SocialMeidaCircularItem(height: height),
                  SocialMeidaCircularItem(height: height),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),

            // YouTube section
            SizedBox(
              width: width,
              height: height * 0.385,
              // color: primaryBackground,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.025, right: width * 0.3),
                    child: const AutoSizeText(
                      "Every fine jewellery, delivered Everywhere",
                      maxLines: 2,
                      maxFontSize: 19,
                      minFontSize: 14,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Container(
                    width: width,
                    height: height * 0.3,
                    color: amberColor,
                    alignment: Alignment.center,
                    child: const Text(
                      "YouTube Video",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            CustomerReviewSection(width: width, height: height),
            SizedBox(height: height * 0.1),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(height: height),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
