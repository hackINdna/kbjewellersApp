import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';

class FilterRightColumn extends StatelessWidget {
  final double width;
  final double height;
  final List<String> selectedCategory;
  final List<String> selectedItem;
  final Function(bool value, String item) addFilters;

  const FilterRightColumn({
    super.key,
    required this.width,
    required this.height,
    required this.selectedCategory,
    required this.selectedItem,
    required this.addFilters,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: constraints.maxHeight * 0.01),
              ...selectedCategory.map(
                (item) => InkWell(
                  onTap: () {
                    addFilters(!selectedItem.contains(item), item);
                  },
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.05,
                    // color: Colors.blue,
                    margin:
                        EdgeInsets.only(bottom: constraints.maxHeight * 0.015),
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.05),
                    child: Row(
                      children: [
                        SizedBox(
                          width: constraints.maxWidth * 0.08,
                          height: constraints.maxWidth * 0.08,
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            checkColor: Colors.white,
                            fillColor:
                                const MaterialStatePropertyAll(amberColor),
                            activeColor: amberColor,
                            value: selectedItem.contains(item),
                            onChanged: (value) => addFilters(value!, item),
                          ),
                        ),
                        SizedBox(width: width * 0.025),
                        AutoSizeText(
                          item,
                          maxLines: 1,
                          maxFontSize: 14,
                          minFontSize: 10,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black45,
                          ),
                        ),
                        const Spacer(),
                        const AutoSizeText(
                          "1000",
                          maxLines: 1,
                          maxFontSize: 14,
                          minFontSize: 10,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
