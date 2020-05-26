import 'package:flutter/material.dart';
import 'package:schema_studio/utils/themes.dart';
import 'package:schema_studio/utils/tree_view/tree_view.dart';
import 'package:schema_studio/widgets/panels/panel_base.dart';

class NavigatorPanel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigatorPanelState();
}

class _NavigatorPanelState extends State<NavigatorPanel> {
  @override
  Widget build(BuildContext context) {
    return SidePanelBase(
      border: Border(
        right: PANEL_DEFAULT_BORDER_SIDE
      ),
      child: TreeView(
          children: [
        TreeViewChild(
          parent: Text("folder 1"),
          children: [
            Text("item 1"),
            Text("item 2"),
          ],
          startExpanded: true,
        ),
        Text("item 3"),
        Text("item 4"),
        Text("item 5"),
        Text("item 6"),
        Text("item 7"),
      ]),
    );
  }
}
