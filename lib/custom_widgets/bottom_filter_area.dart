import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';

class BottomFilterArea extends StatelessWidget {
  final BoxConstraints constraints;
  final Function(double width, double height) priceTap;
  final Function(double width, double height) sortTap;
  final String filterRoutName;
  const BottomFilterArea({
    required this.constraints,
    required this.priceTap,
    required this.sortTap,
    required this.filterRoutName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => priceTap(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: constraints.maxWidth * 0.3,
            height: constraints.maxHeight,
            // color: Colors.blue,
            alignment: Alignment.center,
            child: const AutoSizeText(
              "Price",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                // fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          width: constraints.maxWidth * 0.007,
          height: constraints.maxHeight * 0.6,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black45, width: 0.7),
          ),
        ),
        // VerticalDivider(
        //   indent: constraints.maxHeight * 0.2,
        //   endIndent: constraints.maxHeight * 0.2,
        //   thickness: 3,
        //   color: Colors.grey,
        // ),
        InkWell(
          onTap: () => sortTap(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: constraints.maxWidth * 0.3,
            height: constraints.maxHeight,
            // color: Colors.blue,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.sort,
                  color: Colors.black,
                ),
                AutoSizeText(
                  "Sort",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: constraints.maxWidth * 0.007,
          height: constraints.maxHeight * 0.6,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black45, width: 0.7),
          ),
        ),
        InkWell(
          onTap: () {
            appLevelNavigatorKey.currentState!.pushNamed(filterRoutName);
          },
          child: Container(
            width: constraints.maxWidth * 0.3,
            height: constraints.maxHeight,
            // color: Colors.blue,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.filter_alt,
                  color: Colors.black,
                ),
                AutoSizeText(
                  "Filter",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
