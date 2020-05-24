import 'package:flutter/material.dart';
import 'package:schema_studio/widgets/panels/meta_panel.dart';
import 'package:schema_studio/widgets/panels/navigator_panel.dart';

class StudioScreen extends StatefulWidget {
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
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [NavigatorPanel(), MetaPanel()],
    );
  }
}
