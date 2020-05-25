import 'package:flutter/material.dart';

class SchemaFieldRow extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SchemaFieldRowState();
}

class _SchemaFieldRowState extends State<SchemaFieldRow>{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody(){
    return Row(
      children: [
        new Flexible(
          child: new TextField(
            decoration: const InputDecoration(helperText: "Enter App ID"),
            style: Theme.of(context).textTheme.body1,
          ),
        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: (){

          },
        )
      ],
    );
  }

}

class AddFieldToggleRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.add),
        OutlineButton(onPressed: (){}, child: Text("add"),)
      ],
    );
  }
  
}