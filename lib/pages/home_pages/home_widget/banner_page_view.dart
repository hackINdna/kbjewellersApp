import 'package:flutter/material.dart';

import '../../../data/constData.dart';

class BannerPageView extends StatelessWidget {
  final double width;
  final double height;
  final Function(int value) changePageIndex;
  const BannerPageView({
    super.key,
    required this.width,
    required this.height,
    required this.changePageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      // controller: _pageController,
      onPageChanged: changePageIndex,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        width: width,
        height: height * 0.35,
        color: primaryBackground,
        alignment: Alignment.center,
        child: const Text(
          "BANNER",
          style: TextStyle(
            color: amberColor,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
