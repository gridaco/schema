import 'package:flutter/material.dart';
import 'package:schema_studio/screens/stile_catalog_screen.dart';
import 'package:schema_studio/utils/themes.dart';
import 'package:schema_studio/widgets/cards/card_base.dart';
import 'package:schema_studio/widgets/dummy/movie_card.dart';

class LayoutPreviewCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LayoutPreviewCardState();
}

class _LayoutPreviewCardState extends State<LayoutPreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: CARD_DEFAULT_WIDTH,
      height: 500,
      child: buildBody(),
    );
  }

  List<Widget> buildCardActions() {
    return [
      IconButton(
        icon: Icon(Icons.select_all),
        onPressed: () {
          Navigator.of(context).pushNamed(StileCatalogScreen.routeName);
        },
      ),
      IconButton(
        icon: Icon(Icons.navigate_before),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.navigate_next),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {
          randomize();
        },
      ),
    ];
  }

  MovieCardLayoutVariants layoutVariant = MovieCardLayoutVariants.Portrait1;

  void randomize() {
    setState(() {
      layoutVariant = getRandomVariant();
    });
  }

  Widget buildBody() {
    return Card(
      child: Column(
        children: [
          CardHeader(
            title: "PREVIEW",
            actions: buildCardActions(),
          ),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildContent() {
    return MovieCard(
      layout: layoutVariant,
    );
  }
}
