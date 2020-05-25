import 'package:flutter/material.dart';
import 'package:schema_studio/widgets/cards/data_preview_card.dart';
import 'package:schema_studio/widgets/cards/layout_preview_card.dart';
import 'package:schema_studio/widgets/cards/schema_editor_card.dart';
import 'package:schema_studio/widgets/drawer/main_drawer.dart';
import 'package:schema_studio/widgets/panels/meta_panel.dart';
import 'package:schema_studio/widgets/panels/navigator_panel.dart';

class StudioScreen extends StatefulWidget {
  static const routeName = "/studio";
  @override
  State<StatefulWidget> createState() => _StudioScreenState();
}

class _StudioScreenState extends State<StudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("studio"),
      ),
      drawer: MainDrawer(),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [NavigatorPanel(), content(), MetaPanel()],
    );
  }

  Widget content() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SchemaEditorCard(),
        Column(
          children: [DataPreviewCard(), LayoutPreviewCard()],
        )
      ],
    );
  }
}
