import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';

class FromTheGramSection extends StatelessWidget {
  const FromTheGramSection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.65,
      // color: primaryBackground,
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "From the Gram!",
            maxFontSize: 19,
            minFontSize: 14,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.02),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: height * 0.25,
                crossAxisSpacing: width * 0.025,
                mainAxisSpacing: width * 0.025,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: amberColor,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            alignment: Alignment.center,
            child: const AutoSizeText(
              "Share your #JewelAR story with us",
              maxLines: 1,
              maxFontSize: 14,
              minFontSize: 10,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: height * 0.005),
          Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: const AutoSizeText(
              "Use the #JewelAR in your instagram pics to get featured on our page",
              textAlign: TextAlign.center,
              maxLines: 2,
              maxFontSize: 12,
              minFontSize: 8,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
