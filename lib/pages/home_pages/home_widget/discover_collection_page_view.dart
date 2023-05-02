import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/static_data.dart';

class DiscoverCollectionPageView extends StatefulWidget {
  final double width;
  final double height;
  final Function(int value) changePageIndex;
  const DiscoverCollectionPageView({
    super.key,
    required this.width,
    required this.height,
    required this.changePageIndex,
  });

  @override
  State<DiscoverCollectionPageView> createState() =>
      _DiscoverCollectionPageViewState();
}

class _DiscoverCollectionPageViewState
    extends State<DiscoverCollectionPageView> {
  late PageController _discoverCollController;

  @override
  void initState() {
    _discoverCollController = PageController(
      initialPage: (discoverCollection.length - 1),
      viewportFraction: 0.8,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      padEnds: false,
      reverse: true,
      controller: _discoverCollController,
      onPageChanged: widget.changePageIndex,
      itemCount: discoverCollection.length,
      itemBuilder: (context, index) {
        var reversedIndex = (discoverCollection.length - 1) - index;
        return Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // constraints: BoxConstraints(
              //   maxWidth: width * 0.2,
              //   maxHeight: height * 0.3,
              // ),
              width: widget.width * 0.75,
              height: widget.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
            SizedBox(height: widget.height * 0.01),
            AutoSizeText(
              discoverCollection[reversedIndex].values.toList()[1],
              maxLines: 1,
              maxFontSize: 16,
              minFontSize: 10,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: widget.height * 0.005),
            SizedBox(
              width: widget.width * 0.3,
              height: widget.height * 0.018,
              // color: Colors.grey.shade200,
              child: const FittedBox(
                child: Text(
                  "Collection",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    // return PageView.builder(
    //   // controller: _pageController,
    //   onPageChanged: changePageIndex,
    //   itemCount: 5,
    //   itemBuilder: (context, index) => Container(
    //     width: width,
    //     height: height * 0.35,
    //     color: primaryBackground,
    //     alignment: Alignment.center,
    //     child: const Text(
    //       "BANNER",
    //       style: TextStyle(
    //         color: amberColor,
    //         fontSize: 50,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //   ),
    // );
  }
}
