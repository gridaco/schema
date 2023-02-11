import 'package:flutter/material.dart';
import 'package:schema_studio/utils/themes.dart';
import 'package:schema_studio/widgets/panels/panel_base.dart';

class MetaPanel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MetaPanelState();
}

class _MetaPanelState extends State<MetaPanel> {
  @override
  Widget build(BuildContext context) {
    return SidePanelBase(
      border: Border(
          left: PANEL_DEFAULT_BORDER_SIDE
      ),
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
