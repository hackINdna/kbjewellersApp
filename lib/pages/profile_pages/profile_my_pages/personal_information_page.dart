import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/data/constData.dart';

import '../../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../../custom_widgets/floatingActionButton.dart';

class PersonalInformationPage extends StatefulWidget {
  static const String routeName = "/personal-information-page";
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      foregroundColor: Colors.black,
      // toolbarHeight: height * 0.07,
      centerTitle: true,
      title: const AutoSizeText(
        "Personal Information",
        maxFontSize: 16,
        maxLines: 1,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        InkWell(
          onTap: () async {
            await showContactUs(context, width, height);
          },
          child: const Icon(
            Icons.headset_mic_outlined,
            color: Colors.black,
          ),
        ),
        SizedBox(width: width * 0.025),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.zero,
        child: Divider(
          height: 0,
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: width * 0.025),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: width, height: height * 0.02),
            const AutoSizeText(
              "Title",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              height: height * 0.05,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                "Mr",
                maxFontSize: 16,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "First Name",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              // height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              // alignment: Alignment.center,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black,
                style: const TextStyle(
                  fontSize: 16,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "Last Name",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              // height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              // alignment: Alignment.center,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black,
                style: const TextStyle(
                  fontSize: 16,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "Email Address",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              // alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AutoSizeText(
                    "Add your email",
                    maxFontSize: 16,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ),
                  ),
                  AutoSizeText(
                    "Add",
                    maxFontSize: 16,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "Phone Number",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              // alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AutoSizeText(
                    "+91-9024350276",
                    maxFontSize: 16,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ),
                  ),
                  AutoSizeText(
                    "Change",
                    maxFontSize: 16,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "Birthday",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                "DD-MM-YYYY",
                maxFontSize: 16,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "Anniversary (optional)",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                "DD-MM-YYYY",
                maxFontSize: 16,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const AutoSizeText(
              "Spouse's Birthday (optional)",
              maxFontSize: 16,
              maxLines: 1,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.005),
            Container(
              width: width,
              height: height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                "DD-MM-YYYY",
                maxFontSize: 16,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            CustomRoundedButton(
              width: width,
              height: height * 0.05,
              text: "SAVE DETAILS",
              horizontalPadding: width * 0.33,
              textColor: Colors.white,
              buttonColor: Colors.orange[700]!,
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(height: height),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
