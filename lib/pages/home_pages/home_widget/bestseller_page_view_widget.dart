import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import '../../../data/static_data.dart';

class BestsellerPageView extends StatelessWidget {
  const BestsellerPageView({
    super.key,
    required this.width,
    required this.height,
    required PageController pageController,
    required this.currentPageIndex,
    required double scaleFactor,
  })  : _pageController = pageController,
        _scaleFactor = scaleFactor;

  final double width;
  final double height;
  final PageController _pageController;
  final double currentPageIndex;
  final double _scaleFactor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height * 0.4,
      child: PageView.builder(
        controller: _pageController,
        itemCount: bestSellerList.length,
        itemBuilder: (context, index) {
          var value = index == currentPageIndex
              ? 1.0
              : _scaleFactor +
                  (1 - _scaleFactor) * (1 - ((index - currentPageIndex).abs()));
          return Opacity(
            opacity: value,
            child: Transform.scale(
              scale: value,
              child: Container(
                width: width * 0.5,
                margin: EdgeInsets.symmetric(horizontal: width * 0.015),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: width * 0.5,
                      height: height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: amberColor,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    SizedBox(
                      width: width * 0.4,
                      // height: height * 0.0,
                      child: Column(
                        children: [
                          AutoSizeText(
                            bestSellerList[index].values.toList()[0],
                            maxFontSize: 16,
                            minFontSize: 12,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          AutoSizeText.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "\u{20b9}${bestSellerList[index].values.toList()[1]} ",
                                ),
                                TextSpan(
                                  text:
                                      "\u{20b9}${bestSellerList[index].values.toList()[2]}",
                                  style: const TextStyle(
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),

                            // overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          AutoSizeText(
                            bestSellerList[index].values.toList()[3],
                            maxLines: 1,
                            style: const TextStyle(
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
