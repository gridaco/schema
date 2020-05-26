import 'package:flutter/material.dart';
import 'package:schema_studio/utils/themes.dart';

class SidePanelBase extends StatelessWidget {
  final Widget child;
  final BoxBorder border;

  SidePanelBase(
      {Key key, @required this.child, this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
        color: Theme.of(context).colorScheme.surface,
      ),
      width: PANEL_DEFAULT_WIDTH,
      height: double.maxFinite,
      child: child,
    );
  }
}
