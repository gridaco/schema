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
      color: Colors.grey[100],
      width: PANEL_DEFAULT_WIDTH,
      child: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("meta fields panel")],
    );
  }
}
