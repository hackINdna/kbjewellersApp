import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import '../../../data/static_data.dart';

class ShopExclusivePageView extends StatelessWidget {
  const ShopExclusivePageView({
    super.key,
    required this.width,
    required this.height,
    required PageController exclusiveController,
    required this.currentExclusiveIndex,
    required double exclusiveScaleFactor,
  })  : _exclusiveController = exclusiveController,
        _exclusiveScaleFactor = exclusiveScaleFactor;

  final double width;
  final double height;
  final PageController _exclusiveController;
  final double currentExclusiveIndex;
  final double _exclusiveScaleFactor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height * 0.38,
      // color: Colors.grey,
      child: PageView.builder(
        controller: _exclusiveController,
        itemCount: exclusiveList.length,
        itemBuilder: (context, index) {
          var value = index == currentExclusiveIndex
              ? 1.0
              : _exclusiveScaleFactor +
                  (1 - _exclusiveScaleFactor) *
                      (1 - ((index - currentExclusiveIndex).abs()));
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
                      height: height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: amberColor,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    SizedBox(
                      width: width * 0.4,
                      // color: Colors.red,
                      // height: height * 0.0,
                      child: Column(
                        children: [
                          AutoSizeText(
                            exclusiveList[index].values.toList()[0],
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
                          AutoSizeText(
                            exclusiveList[index].values.toList()[1],
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            maxFontSize: 12,
                            minFontSize: 8,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          index == currentExclusiveIndex.floor()
                              ? Container(
                                  width: width * 0.5,
                                  height: height * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryBackgroud2RoyalBlue
                                        .withOpacity(0.8),
                                  ),
                                  alignment: Alignment.center,
                                  child: const AutoSizeText(
                                    "EXPLORE",
                                    maxFontSize: 14,
                                    minFontSize: 10,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container(),
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
