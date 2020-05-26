import 'package:flutter/material.dart';

class StileCatalogScreen extends StatefulWidget {
  static const routeName = "/stile";

  @override
  State<StatefulWidget> createState() => _StileCatalogScreenState();
}

class _StileCatalogScreenState extends State<StileCatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stile catalogs"),
      ),
    );
  }
}
