import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import '../../../data/static_data.dart';

class TrendingMelorraListItem extends StatelessWidget {
  const TrendingMelorraListItem({
    super.key,
    required this.width,
    required this.height,
    required this.index,
  });

  final double width;
  final double height;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            width: width * 0.4,
            height: height * 0.18,
            color: primaryBackground,
            alignment: Alignment.center,
            child: const Text(
              "Image",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
            width: width * 0.4,
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            // height: height * 0.12,
            // color: Colors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bestSellerList[index].values.toList()[0],
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.004),
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
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  maxFontSize: 16,
                  minFontSize: 8,

                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.004),
                AutoSizeText(
                  bestSellerList[index].values.toList()[3],
                  maxLines: 2,
                  maxFontSize: 13,
                  minFontSize: 10,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
