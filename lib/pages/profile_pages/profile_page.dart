import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/data/constData.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile-page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;

    var appBar = AppBar(
      centerTitle: true,
      title: const AutoSizeText(
        "My Profile",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      actions: [
        CircleAvatar(
          radius: width * 0.03,
          backgroundColor: amberColor,
        ),
        SizedBox(width: width * 0.025),
        const Icon(
          Icons.headset_mic_outlined,
          color: Colors.black,
        ),
        SizedBox(width: width * 0.025),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(height: height * 0.05),
          Container(
            width: width,
            height: height * 0.05,
            alignment: Alignment.center,
            child: const Text(
              "LOGO",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: amberColor,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          AutoSizeText(
            "You are logged out, please login to access login account options.",
            textAlign: TextAlign.center,
            maxLines: 2,
            maxFontSize: 14,
            minFontSize: 12,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14,
            ),
          ),
          SizedBox(height: height * 0.03),
          CustomRoundedButton(
            width: width * 0.7,
            height: height * 0.05,
            text: "Login to your account",
            horizontalPadding: width * 0.15,
            textColor: Colors.white,
            buttonColor: amberColor,
          ),
          SizedBox(height: height * 0.03),
          Divider(
            color: Colors.grey.shade200,
            thickness: height * 0.02,
          ),
          SizedBox(height: height * 0.03),
          Container(
            width: width,
            height: height * 0.35,
            // color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: width * 0.3,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: amberColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.035),
                      child: const AutoSizeText(
                        "FIND A STORE",
                        maxLines: 1,
                        maxFontSize: 14,
                        minFontSize: 10,
                        style: TextStyle(
                          fontSize: 14,
                          color: amberColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                const AutoSizeText(
                  "MELORRA ASSURANCE",
                  maxLines: 1,
                  maxFontSize: 14,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.02),
                const AutoSizeText(
                  "PRIVACY POLICY",
                  maxLines: 1,
                  maxFontSize: 14,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.02),
                const AutoSizeText(
                  "BLOG",
                  maxLines: 1,
                  maxFontSize: 14,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.02),
                const AutoSizeText(
                  "TERMS OF USE",
                  maxLines: 1,
                  maxFontSize: 14,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.02),
                const AutoSizeText(
                  "LIFETIME EXCHANGE & BUY BACK POLICY",
                  maxLines: 1,
                  maxFontSize: 14,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.02),
                const AutoSizeText(
                  "FAQs",
                  maxLines: 1,
                  maxFontSize: 14,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
