import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/listing_page.dart';

import '../search_pages/search_page.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = "/category-page";
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      toolbarHeight: height * 0.08,
      centerTitle: true,
      title: const AutoSizeText(
        "Categories",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
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
        SizedBox(width: width * 0.025),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.005),
        child: Container(
          width: width,
          height: 1,
          color: Colors.grey.shade300,
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(
                left: width * 0.025,
                right: width * 0.025,
                top: width * 0.025,
                bottom: height * 0.08,
              ),
              itemCount: categoriesPageList.length,
              separatorBuilder: (context, index) =>
                  SizedBox(height: height * 0.02),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  appLevelNavigatorKey.currentState!.pushNamed(
                    ListingPage.routeName,
                    arguments: categoriesPageList[index].values.toList()[0],
                  );
                },
                child: SizedBox(
                  width: width,
                  height: height * 0.125,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        width: width,
                        height: height * 0.125,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(
                          left: width * 0.04,
                          right: width * 0.45,
                          top: height * 0.02,
                          bottom: height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange.shade200,
                              Colors.orange.shade100,
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              categoriesPageList[index].values.toList()[0],
                              maxLines: 1,
                              maxFontSize: 18,
                              minFontSize: 14,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            AutoSizeText(
                              categoriesPageList[index].values.toList()[1],
                              maxLines: 2,
                              maxFontSize: 13,
                              minFontSize: 8,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black38,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ClipPath(
                        clipper: MyPolygon(),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          width: width,
                          height: height * 0.125,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPolygon extends CustomClipper<Path> {
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width * 0.55, size.height),
      Offset(size.width * 0.65, 0),
      Offset(size.width, 0),
      Offset(size.width, size.height)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
