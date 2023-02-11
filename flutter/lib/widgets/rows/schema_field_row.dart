import 'package:flutter/material.dart';

class SchemaFieldRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SchemaFieldRowState();
}

class _SchemaFieldRowState extends State<SchemaFieldRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildBody(),
    );
  }

  Widget buildBody() {
    return Row(
      children: [
        Icon(Icons.drag_handle),
        Expanded(
          child: Container(
            decoration: new BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius:
                    new BorderRadius.all(const Radius.circular(40.0))),
            child: TextField(
              decoration: const InputDecoration(border: InputBorder.none),
              style: Theme.of(context).textTheme.body1,
            ),
          ),
        ),

//        Flexible(
//          child:
//        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        )
      ],
    );
  }
}

class AddFieldToggleRow extends StatelessWidget {
  final Function onAdd;

  const AddFieldToggleRow({this.onAdd});

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text("add new field".toUpperCase()),
      onPressed: () {
        this.onAdd?.call();
      },
    );
  }
}
