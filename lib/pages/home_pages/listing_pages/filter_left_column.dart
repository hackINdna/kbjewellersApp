import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';

class FilterLeftColumn extends StatelessWidget {
  final double width;
  final double height;
  final String selectedTab;
  final Function(String value, List<String> categoryValue) changeTab;
  const FilterLeftColumn({
    super.key,
    required this.width,
    required this.height,
    required this.selectedTab,
    required this.changeTab,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              InkWell(
                onTap: () => changeTab("Gold Weight", goldWeightListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Gold Weight",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Gold Weight"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () =>
                    changeTab("Jewellery Types", jewelleryTypeListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Jewellery Types",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Jewellery Types"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Quick Ship", quickShipListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Quick Ship",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Quick Ship"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Styles", stylesListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Styles",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Styles"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Category", categoryListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Category",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Category"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Gold Colors", metalColorsFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Gold Colors",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Gold Colors"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Occasion", occasionListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Occasion",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Occasion"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Virtual Try-On", virtualTryListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Virtual Try-On",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Virtual Try-On"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Gold Karat", goldKaratListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Gold Karat",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Gold Karat"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
              InkWell(
                onTap: () => changeTab("Gender", genderListFilter),
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                  child: AutoSizeText(
                    "Gender",
                    maxLines: 1,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedTab == "Gender"
                          ? Colors.orange
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black26,
                thickness: 1,
              ),
            ],
          );
        },
      ),
    );
  }
}
