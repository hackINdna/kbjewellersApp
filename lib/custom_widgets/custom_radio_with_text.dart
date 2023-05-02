import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/constData.dart';

class RadioWithText extends StatelessWidget {
  final String text;
  final String value;
  final String groupValue;
  final Function(String value) onChanged;
  final Function(void Function()) setState;
  const RadioWithText({
    super.key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.setState,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          onChanged(value);
        });
      },
      child: Row(
        children: [
          Radio(
            activeColor: amberColor,
            value: value,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                onChanged(value!);
              });
            },
          ),
          AutoSizeText(
            text,
            maxLines: 1,
            maxFontSize: 16,
            minFontSize: 12,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
