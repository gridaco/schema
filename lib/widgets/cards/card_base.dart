import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  final List<Widget> actions;
  final String title;

  const CardHeader({Key key, this.actions = const [], @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: buildOpenNewWindowButton(context),
                )
              ],
            )),
        Row(
          children: actions,
        ),
      ],
    );
  }

  Widget buildOpenNewWindowButton(BuildContext context) {
    return new SizedBox(
        height: 18.0,
        width: 18.0,
        child: new IconButton(
          padding: new EdgeInsets.all(0.0),
          color: Theme.of(context).primaryColor,
          icon: new Icon(Icons.open_in_new, size: 16.0),
          onPressed: () {},
        ));
  }
}
