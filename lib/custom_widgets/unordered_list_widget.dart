import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• "),
        Expanded(
          child: AutoSizeText(
            text,
            maxFontSize: 12,
            minFontSize: 10,
            maxLines: 3,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }
}
