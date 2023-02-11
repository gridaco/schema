import 'package:flutter/material.dart';
import 'package:schema_studio/widgets/dummy/movie_card.dart';

class StileStudioTemplateScreen extends StatefulWidget {
  static const routeName = "/studio/stile";
  @override
  State<StatefulWidget> createState() => _StileStudioTemplateScreenState();
}

class _StileStudioTemplateScreenState extends State<StileStudioTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("stile studio"),),
      body: buildBody(),
    );
  }


  Widget buildBody(){
    return Column(
      children: [
        MovieCard()
      ],
    );
  }
}
