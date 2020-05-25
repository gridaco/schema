import 'package:flutter/material.dart';

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
    return Card(
      child: Text(dummyText),
    );
  }
}
