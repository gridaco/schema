import 'package:flutter/material.dart';
import 'package:schema_studio/screens/meta_types_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Column(
      children: [devItems(context)],
    );
  }

  List<LocalRouteItem> routes = [
    LocalRouteItem(name: "meta catalog", route: MetaTypesScreen.routeName),
  ];

  Widget devItems(BuildContext context) {
    return ListView.builder(
      itemBuilder: (c, i) {
        final data = routes[i];
        return ListTile(
          title: Text(data.name),
          onTap: () {
            Navigator.of(context).pushNamed(data.route);
          },
        );
      },
      itemCount: routes.length,
      shrinkWrap: true,
    );
  }
}

class LocalRouteItem {
  LocalRouteItem({this.route, this.name, this.description, this.icon});

  final String route;
  final String name;
  final String description;
  final Icon icon;
}
