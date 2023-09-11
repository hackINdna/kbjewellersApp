import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../custom_widgets/circular_progress_indicator.dart';
import '../../custom_widgets/custom_icon_with_text_button.dart';
import '../../custom_widgets/custom_rounded_button.dart';
import '../../data/constData.dart';
import '../../data/static_data.dart';

Future<void> showLoginBottomSheet(
    BuildContext context, double width, double height) {
  return showModalBottomSheet(
    useRootNavigator: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    context: context,
    builder: (context) => SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        width: width,
        height: height * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          vertical: height * 0.01,
          horizontal: width * 0.025,
        ),
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "LOGO",
                  style: TextStyle(
                    fontSize: 20,
                    color: amberColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    appLevelNavigatorKey.currentState!.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: const [
                AutoSizeText(
                  "Login/Register",
                  maxFontSize: 18,
                  maxLines: 1,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
            Row(
              children: const [
                AutoSizeText(
                  "Enter Your Mobile Number",
                  maxFontSize: 14,
                  maxLines: 1,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.phone,
                cursorColor: amberColor,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  prefixIcon: SizedBox(
                    width: width * 0.25,
                    // color: Colors.grey,
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.025),
                        CircleAvatar(
                          backgroundColor: amberColor,
                          radius: height * 0.015,
                        ),
                        SizedBox(width: width * 0.01),
                        const AutoSizeText(
                          "+91",
                          maxFontSize: 16,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: width * 0.006,
                          height: height * 0.04,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black45, width: 0.7),
                          ),
                        ),
                        SizedBox(width: width * 0.05),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            InkWell(
              onTap: () async {
                showCircularProgressIndicator(context: context);
                var prefs = await SharedPreferences.getInstance();
                prefs.setBool("loggedIn", true);
                appLevelNavigatorKey.currentState!.pop(context);
                appLevelNavigatorKey.currentState!.pop(context);
              },
              child: CustomRoundedButton(
                width: width,
                height: height * 0.05,
                text: "CONTINUE",
                horizontalPadding: width * 0.37,
                textColor: Colors.white,
                buttonColor: amberColor,
              ),
            ),
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWithTextButton(
                  height: height * 0.05,
                  width: width * 0.45,
                  padding: width * 0.07,
                  icon: Icons.circle,
                  text: "Google Login",
                ),
                IconWithTextButton(
                  height: height * 0.05,
                  width: width * 0.45,
                  padding: width * 0.08,
                  icon: Icons.circle,
                  text: "Email Login",
                ),
              ],
            ),
            const Spacer(),
            const AutoSizeText.rich(
              TextSpan(children: [
                TextSpan(
                  text: "By clicking this, I accept the ",
                ),
                TextSpan(
                  text: "terms & conditions",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: " & ",
                ),
                TextSpan(
                  text: "privacy & policy",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]),
              maxFontSize: 12,
              minFontSize: 8,
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
