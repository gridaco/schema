import 'package:flutter/material.dart';
import 'package:schema_studio/widgets/dummy/movie_card.dart';

class LayoutPreviewCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LayoutPreviewCardState();
}

class _LayoutPreviewCardState extends State<LayoutPreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 500,
      child: buildBody(),
    );
  }

  Widget buildCardActions() {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.select_all),
          onPressed: () {},
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
      ],
    );
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("preview"),
              buildCardActions(),
            ],
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
