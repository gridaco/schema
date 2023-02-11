import 'package:flutter/material.dart';
import 'package:schema_studio/widgets/cards/card_base.dart';
import 'package:schema_studio/widgets/rows/schema_field_row.dart';

import '../rows/schema_field_row.dart';

class SchemaEditorCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SchemaEditorCardState();
}

class _SchemaEditorCardState extends State<SchemaEditorCard> {
  var fields = [];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 500,
        height: double.maxFinite,
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardHeader(title: "schema editor"),
        ListView.builder(
          itemBuilder: (c, i) {
            final data = fields[i];
            return SchemaFieldRow();
          },
          itemCount: fields.length,
          shrinkWrap: true,
        ),
        AddFieldToggleRow(
          onAdd: () {
            setState(() {
              fields.add("new-field");
            });
          },
        )
      ],
    );
  }
}
