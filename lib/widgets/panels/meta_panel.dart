import 'package:flutter/material.dart';
import 'package:schema_studio/utils/themes.dart';

class MetaPanel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MetaPanelState();
}

class _MetaPanelState extends State<MetaPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      width: PANEL_DEFAULT_WIDTH,
      child: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        height: double.maxFinite,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("meta fields panel")],
        ),
      ),
    );
  }
}
