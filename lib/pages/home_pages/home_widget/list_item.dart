import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.68,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: constraints.maxHeight * 0.03,
                    child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.06,
                      decoration: const BoxDecoration(
                          // color: Colors.green,
                          ),
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: constraints.maxWidth * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange,
                            ),
                            alignment: Alignment.center,
                            child: const AutoSizeText(
                              "Ships in 24 Hours",
                              maxLines: 1,
                              maxFontSize: 9,
                              minFontSize: 6,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.1,
                            child: const FittedBox(
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: constraints.maxHeight * 0.3,
                    left: constraints.maxWidth * 0.38,
                    child: const Text(
                      "Image",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.32,
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.04,
                  vertical: constraints.maxHeight * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    "Peace Within Diamond Nose Pins",
                    maxLines: 1,
                    maxFontSize: 12,
                    minFontSize: 12,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.02),
                  Row(
                    children: [
                      const AutoSizeText(
                        "\u{20b9}18,989",
                        maxLines: 1,
                        maxFontSize: 16,
                        minFontSize: 14,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: constraints.maxWidth * 0.025),
                      const AutoSizeText(
                        "\u{20b9}25,319",
                        maxLines: 1,
                        maxFontSize: 12,
                        minFontSize: 10,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: constraints.maxHeight * 0.02),
                  const AutoSizeText(
                    "Flat 25% OFF on Product Value",
                    maxLines: 1,
                    maxFontSize: 10,
                    minFontSize: 8,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.02),
                  const AutoSizeText(
                    "Try On Available",
                    maxLines: 1,
                    maxFontSize: 10,
                    minFontSize: 8,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
