import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import '../../../data/static_data.dart';

class ItemDetailsPage extends StatefulWidget {
  static const String routeName = "/item-details-page";
  const ItemDetailsPage({super.key});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  bool _showProductDetails = false;
  bool _showPriceBreakup = true;
  // double _keyboardHeight = 0.0;

  void showProductDetails() {
    setState(() {
      _showProductDetails = !_showProductDetails;
    });
  }

  void showPriceBreakup() {
    setState(() {
      _showPriceBreakup = !_showPriceBreakup;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addObserver(this);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   WidgetsBinding.instance.removeObserver(this);
  // }

  // @override
  // void didChangeMetrics() {
  //   final keyboardHeight = WidgetsBinding.instance.window.viewInsets.bottom;
  //   setState(() {
  //     _keyboardHeight = keyboardHeight.toDouble();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: height * 0.108,
      // titleSpacing: 0,
      // leadingWidth: width * 0.12,
      // title: AutoSizeText(
      //   "$pageName(9999)",
      //   maxLines: 1,
      //   maxFontSize: 18,
      //   minFontSize: 14,
      //   style: const TextStyle(
      //     fontSize: 18,
      //     fontWeight: FontWeight.w500,
      //     color: Colors.black,
      //   ),
      // ),
      actions: [
        SizedBox(
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.headset_mic_outlined,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {},
                child: Badge(
                  backgroundColor: amberWithOpacity,
                  label: const Text("0"),
                  textColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  child: const Icon(
                    Icons.favorite_outline,
                    size: 22,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {},
                child: Badge(
                  backgroundColor: amberWithOpacity,
                  label: const Text("0"),
                  textColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 22,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: width * 0.04),
            ],
          ),
        ),
      ],
    );
    var bottomHeight = height * 0.115;

    TableRow tableRow = TableRow(
      children: [
        TableCell(
          child: SizedBox(
            height: height * 0.03,
            child: const AutoSizeText(
              "Component",
              maxLines: 1,
              maxFontSize: 12,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "Rate",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "Weight",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "Discount",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "Value",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );

    TableRow tableRow1 = TableRow(
      children: [
        TableCell(
          child: SizedBox(
            height: height * 0.025,
            child: const AutoSizeText(
              "18 KT Yellow Gold",
              maxLines: 1,
              maxFontSize: 12,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "\u{20b9} 4809 /g",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "0.660 g",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "-",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        const TableCell(
          child: AutoSizeText(
            "\u{20b9} 3174",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
    TableRow tableRow2 = const TableRow(
      children: [
        TableCell(
          child: AutoSizeText(
            "Making Charges",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "\u{20b9} 2900 /g",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "0.660 g",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "0%",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "\u{20b9} 1914",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
    TableRow diamondTableRow = const TableRow(
      children: [
        TableCell(
          child: AutoSizeText(
            "SI IJ",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              // fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "\u{20b9} 110000 /ct",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "0.170 ct",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "0%",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        TableCell(
          child: AutoSizeText(
            "\u{20b9} 17600",
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 12,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
    var bottomPadding = mediaQuery.viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // bottomSheet:
      appBar: appBar,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: width,
              height:
                  height - appBar.preferredSize.height - mediaQuery.padding.top,
              // color: Colors.red,
              child: LayoutBuilder(builder: (context, constraints) {
                var width = constraints.maxWidth;
                var height = constraints.maxHeight;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: width,
                        height: height * 0.035,
                        color: Colors.black,
                      ),
                      Container(
                        width: width,
                        height: height * 0.615,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Image Caraosal',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        width: width,
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.025),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.6,
                                  // height: height * 0.1,
                                  color: Colors.grey,
                                  child: const AutoSizeText(
                                    "Peace Within Diamond Nose Pins",
                                    maxLines: 2,
                                    maxFontSize: 18,
                                    minFontSize: 16,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width * 0.25,
                                  height: height * 0.05,
                                  // padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: amberColor,
                                  ),
                                  alignment: Alignment.center,
                                  child: const AutoSizeText(
                                    "Ships in 24hrs",
                                    maxLines: 1,
                                    maxFontSize: 12,
                                    minFontSize: 8,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.02),
                            const AutoSizeText(
                              "From Classics Collection",
                              maxLines: 1,
                              maxFontSize: 13,
                              minFontSize: 12,
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                const AutoSizeText(
                                  "\u{20b9}18,989",
                                  maxLines: 1,
                                  maxFontSize: 20,
                                  minFontSize: 16,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: constraints.maxWidth * 0.01),
                                const AutoSizeText(
                                  "\u{20b9}25,319",
                                  maxLines: 1,
                                  maxFontSize: 19,
                                  minFontSize: 16,
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 19,
                                    color: Colors.black54,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.005),
                            const AutoSizeText(
                              "You are saving \u{20b9}5803",
                              maxLines: 1,
                              maxFontSize: 14,
                              minFontSize: 12,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: height * 0.035),
                            Container(
                              width: width,
                              height: height * 0.25,
                              decoration: BoxDecoration(
                                color: amberWithOpacity.withOpacity(0.5),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(height * 0.018),
                                    child: const AutoSizeText(
                                      "Available Offers",
                                      maxLines: 1,
                                      maxFontSize: 12,
                                      minFontSize: 10,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width,
                                    height: height * 0.18,
                                    // color: Colors.orange,
                                    child: ListView.separated(
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.018,
                                        horizontal: width * 0.025,
                                      ),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: availableOfferList.length,
                                      itemBuilder: (context, index) =>
                                          Container(
                                        width: width * 0.38,
                                        // height: height * 0.15,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.02,
                                            vertical: height * 0.01),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              availableOfferList[index]
                                                  .values
                                                  .toList()[0],
                                              maxLines: 4,
                                              maxFontSize: 11,
                                              minFontSize: 8,
                                              style: const TextStyle(
                                                height: 1.25,
                                                fontSize: 11,
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            availableOfferList[index]
                                                            .values
                                                            .toList()[1] !=
                                                        "" &&
                                                    availableOfferList[index]
                                                            .values
                                                            .toList()[2] !=
                                                        ""
                                                ? Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      AutoSizeText(
                                                        availableOfferList[
                                                                index]
                                                            .values
                                                            .toList()[1],
                                                        maxLines: 1,
                                                        maxFontSize: 10,
                                                        minFontSize: 8,
                                                        style: const TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      AutoSizeText(
                                                        availableOfferList[
                                                                index]
                                                            .values
                                                            .toList()[2],
                                                        maxLines: 1,
                                                        maxFontSize: 16,
                                                        minFontSize: 14,
                                                        style: const TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                : Container(),
                                            AutoSizeText(
                                              availableOfferList[index]
                                                  .values
                                                  .toList()[3],
                                              maxLines: 1,
                                              maxFontSize: 10,
                                              minFontSize: 8,
                                              style: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(width: width * 0.06),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            const Divider(
                              color: Colors.black12,
                              thickness: 2,
                            ),
                            SizedBox(height: height * 0.02),
                            const AutoSizeText(
                              "Choose a Gold Caratage",
                              maxLines: 1,
                              maxFontSize: 14,
                              minFontSize: 10,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 0.025),
                            Column(
                              children: [
                                Container(
                                  width: width * 0.13,
                                  height: width * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange,
                                  ),
                                  alignment: Alignment.center,
                                  child: const AutoSizeText(
                                    "18KT",
                                    maxLines: 1,
                                    maxFontSize: 14,
                                    minFontSize: 12,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.015),
                                const AutoSizeText(
                                  "0.660 g",
                                  maxLines: 1,
                                  maxFontSize: 12,
                                  minFontSize: 10,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.025),
                            Container(
                              width: width,
                              height: height * 0.05,
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.025),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.fire_truck_outlined,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: width * 0.015),
                                  const AutoSizeText(
                                    "Only few left in stock",
                                    maxLines: 1,
                                    maxFontSize: 12,
                                    minFontSize: 10,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            const Divider(
                              color: Colors.black12,
                              thickness: 2,
                            ),
                            SizedBox(height: height * 0.03),
                            //TODO: we have to add the logo for these item down
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width * 0.38,
                                  height: height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: const AutoSizeText(
                                    "BIS Hallmark for Gold",
                                    maxLines: 2,
                                    maxFontSize: 14,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width * 0.54,
                                  height: height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: const AutoSizeText(
                                    "SGL, IGI & DGLA for Diamonds",
                                    maxLines: 2,
                                    maxFontSize: 14,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            const Divider(
                              color: Colors.black12,
                              thickness: 2,
                            ),

                            SizedBox(height: height * 0.02),
                            InkWell(
                              onTap: showProductDetails,
                              child: SizedBox(
                                width: width,
                                height: height * 0.05,
                                // color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const AutoSizeText(
                                      "Product Details",
                                      maxLines: 1,
                                      maxFontSize: 16,
                                      minFontSize: 12,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(
                                      _showProductDetails
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: width,
                              height: _showProductDetails ? height * 0.37 : 0,
                              // color: Colors.orange,
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 0.02),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const AutoSizeText(
                                      "Peace Within Diamond Nose Pin - A high polish yellow gold diamond nose pin with rhodium plating has a circular motif with multiple diamonds studded in a pave setting.",
                                      maxLines: 4,
                                      maxFontSize: 12,
                                      minFontSize: 8,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.04),
                                    const ProductDetailsWidget(
                                      text1: "Product Id : ",
                                      text2: "223075",
                                    ),
                                    SizedBox(height: height * 0.04),
                                    const ProductDetailsWidget(
                                      text1: "Diamond : ",
                                      text2: "0.16 carat SI IJ",
                                    ),
                                    SizedBox(height: height * 0.04),
                                    const ProductDetailsWidget(
                                      text1: "Dimensions : ",
                                      text2: "Length - 7.0 mm, Width - 7.0 mm",
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Container(
                                      width: width,
                                      height: height * 0.04,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: width * 0.025),
                                      alignment: Alignment.center,
                                      child: const AutoSizeText.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Disclaimer: ",
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  "Weight and prices are subject to minor changes.",
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            const Divider(
                              color: Colors.black12,
                              thickness: 2,
                            ),
                            SizedBox(height: height * 0.02),
                            InkWell(
                              onTap: showPriceBreakup,
                              child: SizedBox(
                                width: width,
                                height: height * 0.05,
                                // color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const AutoSizeText(
                                      "Price Breakup",
                                      maxLines: 1,
                                      maxFontSize: 16,
                                      minFontSize: 12,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(
                                      _showPriceBreakup
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: width,
                              height: _showPriceBreakup ? height * 0.635 : 0,
                              // color: Colors.orange,
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 0.02),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AutoSizeText(
                                      "Gold",
                                      maxLines: 1,
                                      maxFontSize: 15,
                                      minFontSize: 10,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Table(
                                      columnWidths: const {
                                        0: FlexColumnWidth(1.8),
                                        1: FlexColumnWidth(1.25),
                                        2: FlexColumnWidth(1),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(1),
                                      },
                                      children: [
                                        tableRow,
                                        tableRow1,
                                        tableRow2,
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    const AutoSizeText(
                                      "Diamond",
                                      maxLines: 1,
                                      maxFontSize: 15,
                                      minFontSize: 10,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Table(
                                      columnWidths: const {
                                        0: FlexColumnWidth(1.8),
                                        1: FlexColumnWidth(1.25),
                                        2: FlexColumnWidth(1),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(1),
                                      },
                                      children: [
                                        tableRow,
                                        diamondTableRow,
                                      ],
                                    ),
                                    SizedBox(height: height * 0.03),
                                    const PriceBreakupDetails(
                                      text1: "Total Diamond Value",
                                      text2: "\u{20b9} 17600",
                                      text1Color: Colors.black,
                                      text2Color: Colors.black,
                                    ),
                                    SizedBox(height: height * 0.01),
                                    const Divider(
                                      color: Colors.black12,
                                      thickness: 2,
                                    ),
                                    SizedBox(height: height * 0.01),
                                    const PriceBreakupDetails(
                                      text1: "Total",
                                      text2: "\u{20b9} 24019",
                                      text1Color: Colors.black,
                                      text2Color: Colors.black,
                                    ),
                                    SizedBox(height: height * 0.015),
                                    const PriceBreakupDetails(
                                      text1: "Discount 25%",
                                      text2: "- \u{20b9} 5634",
                                      text1Color: Colors.green,
                                      text2Color: Colors.black,
                                    ),
                                    SizedBox(height: height * 0.015),
                                    const PriceBreakupDetails(
                                      text1: "Subtotal",
                                      text2: "\u{20b9} 16900",
                                      text1Color: Colors.black,
                                      text2Color: Colors.black,
                                    ),
                                    SizedBox(height: height * 0.015),
                                    const PriceBreakupDetails(
                                      text1: "GST",
                                      text2: "\u{20b9} 507",
                                      text1Color: Colors.black,
                                      text2Color: Colors.black,
                                    ),
                                    SizedBox(height: height * 0.015),
                                    const PriceBreakupDetails(
                                      text1: "Grand Total",
                                      text2: "\u{20b9} 17407",
                                      text1Color: Colors.black,
                                      text2Color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            const Divider(
                              color: Colors.black12,
                              thickness: 2,
                            ),
                            SizedBox(height: height * 0.03),
                            const AutoSizeText(
                              "Delivery Details",
                              maxFontSize: 18,
                              minFontSize: 16,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            Container(
                              width: width,
                              height: height * 0.25,
                              color: amberWithOpacity.withOpacity(0.5),
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 0.03),
                              child: Column(
                                children: [
                                  Container(
                                    width: width * 0.85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      color: Colors.white,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.025),
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter your area pincode",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade400,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        suffixIcon: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText(
                                            "Check",
                                            maxFontSize: 12,
                                            minFontSize: 10,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.orange,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                                  SizedBox(
                                    width: width * 0.85,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.check,
                                          color: Colors.orange,
                                        ),
                                        SizedBox(
                                          width: width * 0.7,
                                          // height: height * 0.08,
                                          // color: Colors.grey,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AutoSizeText(
                                                "Standard Delivery between 04-May - 06-May",
                                                maxLines: 1,
                                                maxFontSize: 12,
                                                minFontSize: 8,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: height * 0.005),
                                              const AutoSizeText(
                                                "All our products will be exclusively curated for you after the order placement. Hence it is taking longer to deliver.",
                                                maxLines: 2,
                                                maxFontSize: 10,
                                                minFontSize: 8,
                                                style: TextStyle(
                                                  height: 1.25,
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: width * 0.5,
                                  height: height * 0.175,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(-2, 0),
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const AutoSizeText(
                                        "BIS Hallmarked Jewellery",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.05),
                                        child: const AutoSizeText(
                                          "SGL & IGI Certified diamonds, 100% real authentic jewellery",
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          maxFontSize: 10,
                                          minFontSize: 10,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.5,
                                  height: height * 0.175,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(-2, 0),
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const AutoSizeText(
                                        "Lifetime Exchange",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.09),
                                        child: const AutoSizeText(
                                          "Get 100% of the gold value at prevailing market rates",
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          maxFontSize: 10,
                                          minFontSize: 10,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: width * 0.5,
                                  height: height * 0.175,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(-2, 0),
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const AutoSizeText(
                                        "Cash / Card on Delivery",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.125),
                                        child: const AutoSizeText(
                                          "Available Across 25,000 pincodes",
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          maxFontSize: 10,
                                          minFontSize: 10,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.5,
                                  height: height * 0.175,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(-2, 0),
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const AutoSizeText(
                                        "30 Day Return Policy",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.05),
                                        child: const AutoSizeText(
                                          "100% refund, no questions asked. Door step pick up & return",
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          maxFontSize: 10,
                                          minFontSize: 10,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      Divider(
                        color: Colors.black12,
                        thickness: 2,
                        indent: width * 0.025,
                        endIndent: width * 0.025,
                      ),
                      SizedBox(height: bottomHeight + bottomHeight),
                    ],
                  ),
                );
              }),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: bottomHeight,
                margin: EdgeInsets.only(bottom: bottomPadding),
                padding: EdgeInsets.only(
                  left: width * 0.035,
                  right: width * 0.035,
                  bottom: bottomHeight * 0.3,
                ),
                decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(color: Colors.black12),
                    ),
                    color: Colors.grey[50]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: bottomHeight * 0.5,
                      height: bottomHeight * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: width * 0.75,
                      height: bottomHeight * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      alignment: Alignment.center,
                      child: const AutoSizeText(
                        "ADD TO CART",
                        maxLines: 1,
                        maxFontSize: 16,
                        minFontSize: 12,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: width * 0.1,
        height: width * 0.1,
        margin: EdgeInsets.only(
            bottom: bottomHeight + width * 0.08, right: width * 0.01),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              color: Colors.black26,
              blurRadius: 1,
              spreadRadius: 1,
              // blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const Text(
          "W",
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}

class PriceBreakupDetails extends StatelessWidget {
  final String text1;
  final String text2;
  final Color text1Color;
  final Color text2Color;
  const PriceBreakupDetails({
    super.key,
    required this.text1,
    required this.text2,
    required this.text1Color,
    required this.text2Color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          text1,
          maxLines: 1,
          maxFontSize: 16,
          minFontSize: 12,
          style: TextStyle(
            fontSize: 16,
            color: text1Color,
            fontWeight: FontWeight.bold,
          ),
        ),
        AutoSizeText(
          text2,
          maxLines: 1,
          maxFontSize: 16,
          minFontSize: 12,
          style: TextStyle(
            fontSize: 16,
            color: text2Color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ProductDetailsWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const ProductDetailsWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          text1,
          maxLines: 1,
          maxFontSize: 12,
          minFontSize: 8,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
        AutoSizeText(
          text2,
          maxLines: 1,
          maxFontSize: 12,
          minFontSize: 8,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
