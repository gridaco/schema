import 'package:flutter/material.dart';
import 'package:schema_studio/data/local/catalogs.dart';

class MetaTypesScreen extends StatefulWidget {
  static const routeName = "/meta-catalog";

  @override
  State<StatefulWidget> createState() => _MetaTypeScreen();
}

class _MetaTypeScreen extends State<MetaTypesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalogs"),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return buildList();
  }

  buildList() {
    return GridView.builder(
        itemCount: catalogs.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
        itemBuilder: (BuildContext context, int index) {
          final data = catalogs[index];
          return Card(
            child: Center(
              child: Text(data.name),
            ),
          );
        });
  }
}
