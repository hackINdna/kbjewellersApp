import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/constData.dart';

class CheckBoxWithText extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final bool value;
  final Function(String valueText, bool value) changeValue;
  final Function(void Function()) setState;
  const CheckBoxWithText({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.value,
    required this.changeValue,
    required this.setState,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          changeValue(text, !value);
        });
      },
      child: SizedBox(
        width: width,
        height: height * 0.03,
        // color: Colors.red,

        child: Row(
          children: [
            SizedBox(
              width: width * 0.08,
              height: height * 0.03,
              child: Checkbox(
                checkColor: Colors.white,
                fillColor: const MaterialStatePropertyAll(amberColor),
                activeColor: amberColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: value,
                onChanged: (value) {
                  setState(() {
                    changeValue(text, value!);
                  });
                },
              ),
            ),
            AutoSizeText(
              text,
              maxLines: 1,
              maxFontSize: 16,
              minFontSize: 12,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
