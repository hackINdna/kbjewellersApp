import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/circular_progress_indicator.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/custom_widgets/floatingActionButton.dart';
import 'package:jewel_ar/data/constData.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../custom_widgets/custom_icon_with_text_button.dart';
import 'bottom_login_modal.dart';

class ProfilePage extends StatefulWidget {
  static const String routeName = '/profile-page';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  SharedPreferences? prefs;
  bool? loggedIn;

  Future<void> getStatus() async {
    prefs = await SharedPreferences.getInstance();
    loggedIn = prefs!.getBool("loggedIn") ?? false;
    setState(() {});
  }

  Future<void> logout() async {
    await prefs!.setBool("loggedIn", false);
    loggedIn = prefs!.getBool("loggedIn");
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getStatus();
  }

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
        child: Divider(),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: loggedIn == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : loggedIn!
              ? SizedBox(
                  width: width,
                  height: height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.02),
                        Container(
                          width: height * 0.1,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black26,
                            ),
                          ),
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
                        SizedBox(height: height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            AutoSizeText(
                              "+91-9024350276",
                              maxFontSize: 14,
                              maxLines: 1,
                              minFontSize: 12,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Divider(
                          color: Colors.grey.shade200,
                          thickness: height * 0.02,
                        ),
                        SizedBox(height: height * 0.03),
                        Container(
                          width: width,
                          height: height * 0.5,
                          // color: Colors.red,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.025),
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: profileMenu.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: profileMenu[index].values.toList()[2] ==
                                      "contact"
                                  ? () async {
                                      await showContactUs(
                                        context,
                                        width,
                                        height,
                                      );
                                    }
                                  : () {
                                      appLevelNavigatorKey.currentState!
                                          .pushNamed(profileMenu[index]
                                              .values
                                              .toList()[2]);
                                    },
                              horizontalTitleGap: 0,
                              leading: const Icon(Icons.favorite_border),
                              title: AutoSizeText(
                                profileMenu[index].values.toList()[1],
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black38,
                                size: 14,
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const Divider(),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade200,
                          thickness: height * 0.02,
                        ),
                        SizedBox(height: height * 0.03),
                        Container(
                          width: width,
                          height: height * 0.33,
                          // color: Colors.red,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.025),
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.035),
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
                              SizedBox(height: height * 0.025),
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
                              SizedBox(height: height * 0.025),
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
                              SizedBox(height: height * 0.025),
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
                              SizedBox(height: height * 0.025),
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
                              SizedBox(height: height * 0.025),
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
                              SizedBox(height: height * 0.025),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () async {
                                await logout();
                              },
                              child: IconWithTextButton(
                                width: width * 0.6,
                                height: height * 0.05,
                                text: "Logout of app",
                                icon: Icons.logout,
                                padding: width * 0.145,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.05),
                        // InkWell(
                        //   onTap: () async {
                        //     await logout();
                        //   },
                        //   child: Text("logout"),
                        // ),
                      ],
                    ),
                  ),
                )
              : SizedBox(
                  width: width,
                  height: height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.02),
                      Container(
                        width: height * 0.1,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black26,
                          ),
                        ),
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
                      const AutoSizeText(
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
                      SizedBox(height: height * 0.04),
                      InkWell(
                        onTap: () async {
                          await showLoginBottomSheet(context, width, height);
                          await getStatus();
                          setState(() {});
                        },
                        child: CustomRoundedButton(
                          width: width * 0.7,
                          height: height * 0.05,
                          text: "Login to your account",
                          horizontalPadding: width * 0.15,
                          textColor: Colors.white,
                          buttonColor: amberColor,
                        ),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.025),
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.035),
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
                            SizedBox(height: height * 0.025),
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
                            SizedBox(height: height * 0.025),
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
                            SizedBox(height: height * 0.025),
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
                            SizedBox(height: height * 0.025),
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
                            SizedBox(height: height * 0.025),
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
                            SizedBox(height: height * 0.025),
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
                ),
      floatingActionButton: CustomFloatingActionButton(height: height),
    );
  }
}
