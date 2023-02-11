import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/theme_map.dart';
import 'package:schema_studio/utils/themes.dart';
import 'package:schema_studio/widgets/cards/card_base.dart';

class DataPreviewCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DataPreviewCardState();
}

const dummyText = """
{
  "id": 1,
  "first_name": "Haley",
  "last_name": "Redmille",
  "email": "hredmille0@arizona.edu",
  "gender": "Male",
  "ip_address": "145.146.223.60"
}
""";

class _DataPreviewCardState extends State<DataPreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: CARD_DEFAULT_WIDTH,
        child: Card(
          child: Column(
            children: [
              CardHeader(
                title: "DATA",
                actions: [
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      setState(() {});
                    },
                  )
                ],
              ),
              Container(
                width: double.maxFinite,
                child: JsonViewer(json: dummyText),
              )
            ],
          ),
        ));
  }
}

class JsonViewer extends StatelessWidget {
  final String json;

  const JsonViewer({Key key, @required this.json}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HighlightView(json, language: "json", theme: themeMap["a11y-dark"]);
  }
}
