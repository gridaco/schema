import 'package:flutter/material.dart';
import 'package:schema_studio/utils/themes.dart';

class NavigatorPanel extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NavigatorPanelState();
}

class _NavigatorPanelState extends State<NavigatorPanel>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: PANEL_DEFAULT_WIDTH,
    );
  }

}