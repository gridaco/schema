import 'package:flutter/material.dart';
import 'package:schema_studio/widgets/rows/schema_field_row.dart';

class SchemaEditorCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SchemaEditorCardState();
}

class _SchemaEditorCardState extends State<SchemaEditorCard> {
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
        Text("schema editor"),
        SchemaFieldRow(),
        SchemaFieldRow(),
        SchemaFieldRow(),
        SchemaFieldRow(),
        AddFieldToggleRow()
      ],
    );
  }
}
