import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/filter_left_column.dart';

import '../../../data/constData.dart';
import 'filter_right_column.dart';

class FilterPage extends StatefulWidget {
  static const String routeName = '/filter-page';
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String _selectedTab = "Gold Weight";
  List<String> _selectedCategory = goldWeightListFilter;

  List<String> goldWeightFilters = [];
  List<String> jewelleryTypeFilters = [];
  List<String> quickShipFilters = [];
  List<String> stylesFilters = [];
  List<String> categoryFilters = [];
  List<String> metalColorFilters = [];
  List<String> occasionFilters = [];
  List<String> virtualTryFilters = [];
  List<String> goldKaratFilters = [];
  List<String> genderFilters = [];

  List<String>? _selectedItem;
  @override
  void initState() {
    _selectedItem = goldWeightFilters;
    super.initState();
  }

  void changeTab(String value, List<String> categoryValue) {
    setState(() {
      _selectedTab = value;
      _selectedCategory = categoryValue;
      if (_selectedCategory == goldWeightListFilter) {
        _selectedItem = goldWeightFilters;
      } else if (_selectedCategory == jewelleryTypeListFilter) {
        _selectedItem = jewelleryTypeFilters;
      } else if (_selectedCategory == quickShipListFilter) {
        _selectedItem = quickShipFilters;
      } else if (_selectedCategory == stylesListFilter) {
        _selectedItem = stylesFilters;
      } else if (_selectedCategory == categoryListFilter) {
        _selectedItem = categoryFilters;
      } else if (_selectedCategory == metalColorsFilter) {
        _selectedItem = metalColorFilters;
      } else if (_selectedCategory == occasionListFilter) {
        _selectedItem = occasionFilters;
      } else if (_selectedCategory == virtualTryListFilter) {
        _selectedItem = virtualTryFilters;
      } else if (_selectedCategory == goldKaratListFilter) {
        _selectedItem = goldKaratFilters;
      } else if (_selectedCategory == genderListFilter) {
        _selectedItem = genderFilters;
      }
    });
  }

  void addFilters(bool value, String item) {
    setState(() {
      if (_selectedCategory == goldWeightListFilter) {
        if (value == true) {
          goldWeightFilters.add(item);
        } else {
          goldWeightFilters.remove(item);
        }
      } else if (_selectedCategory == jewelleryTypeListFilter) {
        if (value == true) {
          jewelleryTypeFilters.add(item);
        } else {
          jewelleryTypeFilters.remove(item);
        }
      } else if (_selectedCategory == quickShipListFilter) {
        if (value == true) {
          quickShipFilters.add(item);
        } else {
          quickShipFilters.remove(item);
        }
      } else if (_selectedCategory == stylesListFilter) {
        if (value == true) {
          stylesFilters.add(item);
        } else {
          stylesFilters.remove(item);
        }
      } else if (_selectedCategory == categoryListFilter) {
        if (value == true) {
          categoryFilters.add(item);
        } else {
          categoryFilters.remove(item);
        }
      } else if (_selectedCategory == metalColorsFilter) {
        if (value == true) {
          metalColorFilters.add(item);
        } else {
          metalColorFilters.remove(item);
        }
      } else if (_selectedCategory == occasionListFilter) {
        if (value == true) {
          occasionFilters.add(item);
        } else {
          occasionFilters.remove(item);
        }
      } else if (_selectedCategory == virtualTryListFilter) {
        if (value == true) {
          virtualTryFilters.add(item);
        } else {
          virtualTryFilters.remove(item);
        }
      } else if (_selectedCategory == goldKaratListFilter) {
        if (value == true) {
          goldKaratFilters.add(item);
        } else {
          goldKaratFilters.remove(item);
        }
      } else if (_selectedCategory == genderListFilter) {
        if (value == true) {
          genderFilters.add(item);
        } else {
          genderFilters.remove(item);
        }
      }
    });
  }

  void clearAll() {
    setState(() {
      goldWeightFilters.clear();
      jewelleryTypeFilters.clear();
      quickShipFilters.clear();
      stylesFilters.clear();
      categoryFilters.clear();
      metalColorFilters.clear();
      occasionFilters.clear();
      virtualTryFilters.clear();
      goldKaratFilters.clear();
      genderFilters.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      toolbarHeight: height * 0.08,
      title: const AutoSizeText(
        "Filter By",
        maxLines: 1,
        maxFontSize: 16,
        minFontSize: 12,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          const Divider(
            height: 0,
            color: Colors.black26,
            thickness: 1,
          ),
          SizedBox(
            width: width,
            height: height -
                appBar.preferredSize.height -
                mediaQuery.padding.top -
                height * 0.1,
            child: Row(
              children: [
                FilterLeftColumn(
                  width: width * 0.42,
                  height: height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top -
                      height * 0.1,
                  selectedTab: _selectedTab,
                  changeTab: changeTab,
                ),
                const VerticalDivider(
                  color: Colors.black26,
                  thickness: 1,
                  width: 0,
                ),
                FilterRightColumn(
                  height: height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top -
                      height * 0.1,
                  width: width * 0.58,
                  selectedCategory: _selectedCategory,
                  selectedItem: _selectedItem!,
                  addFilters: addFilters,
                )
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.1,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.025, vertical: height * 0.0225),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: clearAll,
                  child: const AutoSizeText(
                    "CLEAR ALL",
                    maxLines: 1,
                    maxFontSize: 16,
                    minFontSize: 12,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    appLevelNavigatorKey.currentState!.pop();
                  },
                  child: Container(
                    width: width * 0.5,
                    height: height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: amberColor,
                    ),
                    alignment: Alignment.center,
                    child: const AutoSizeText(
                      "APPLY",
                      maxLines: 1,
                      maxFontSize: 16,
                      minFontSize: 12,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
