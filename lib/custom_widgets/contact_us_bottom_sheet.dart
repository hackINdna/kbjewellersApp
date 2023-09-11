import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Future<void> showContactUs(
    BuildContext context, double width, double height) async {
  showModalBottomSheet(
    useRootNavigator: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) => Container(
      width: width,
      height: height * 0.26,
      padding: EdgeInsets.fromLTRB(
        width * 0.03,
        height * 0.032,
        width * 0.03,
        height * 0.01,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AutoSizeText(
                "Facing any issues?",
                maxFontSize: 20,
                maxLines: 1,
                minFontSize: 20,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.close, weight: 0.5),
            ],
          ),
          // SizedBox(height: height * 0.03),
          const AutoSizeText(
            "Connect with our team and they will help you out with anything that you need.",
            maxFontSize: 12,
            maxLines: 2,
            minFontSize: 10,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black38,
            ),
          ),
          const SizedBox(
              // height: height * 0.03,
              ),
          Row(
            children: [
              SizedBox(width: width * 0.025),
              const Icon(Icons.phone_in_talk_outlined, color: Colors.black),
              SizedBox(width: width * 0.05),
              const Icon(Icons.phone_in_talk_outlined, color: Colors.black),
              SizedBox(width: width * 0.05),
              const Icon(Icons.message, color: Colors.black),
            ],
          ),
          // SizedBox(height: height * 0.03),
          const AutoSizeText(
            "All 365 days between 7 AM to 11 PM",
            maxFontSize: 16,
            minFontSize: 12,
            maxLines: 1,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
