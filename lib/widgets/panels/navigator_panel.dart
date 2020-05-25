import 'package:flutter/material.dart';
import 'package:schema_studio/utils/themes.dart';
import 'package:schema_studio/utils/tree_view/tree_view.dart';

class NavigatorPanel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigatorPanelState();
}

class _NavigatorPanelState extends State<NavigatorPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      width: PANEL_DEFAULT_WIDTH,
      child: TreeView(
          children: [
        TreeViewChild(
          parent: Text("1"),
          children: [
            Text("aaa"),
            Text("aaa"),
          ],
          startExpanded: true,
        ),
        Text("bbbb"),
        Text("aaa"),
        Text("cc"),
        Text("d"),
        Text("aaa"),
      ]),
    );
  }
}
