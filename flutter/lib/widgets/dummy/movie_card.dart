import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

enum MovieCardLayoutVariants { Portrait1, Portrait2, Landscape2 }

MovieCardLayoutVariants getRandomVariant() {
  Random rnd = new Random();
  final list = MovieCardLayoutVariants.values;
  var element = list[rnd.nextInt(list.length)];
  return element;
}

class MovieCard extends StatelessWidget {
  final MovieCardLayoutVariants layout;
  static const padding = EdgeInsets.all(8);

  const MovieCard({this.layout = MovieCardLayoutVariants.Portrait1});

  @override
  Widget build(BuildContext context) {
    return buildLayout(context);
  }

  Widget buildLayout(BuildContext context) {
    Widget body;
    switch (layout) {
      case MovieCardLayoutVariants.Portrait1:
        body = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            thumbnail(context),
            Container(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  title(context),
                  genre(context),
                  price(context),
                  rating(context)
                ],
              ),
            )
          ],
        );
        break;
      case MovieCardLayoutVariants.Portrait2:
        body = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: padding,
              child: title(context),
            ),
            thumbnail(context),
            Container(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  genre(context),
                  price(context),
                  rating(context)
                ],
              ),
            )
          ],
        );
        break;
      case MovieCardLayoutVariants.Landscape2:
        body = Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            thumbnail(context, height: 120, width: 120),
            Container(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  title(context),
                  genre(context),
                  price(context),
                  rating(context)
                ],
              ),
            )
          ],
        );
        break;
    }

    return Card(
      child: Container(child: body),
    );
  }

  Widget thumbnail(BuildContext context, {double height, double width}) {
    return Image.network(
      DUMMY_POTTER_COVER,
      height: height ?? 160,
      width: width ?? double.maxFinite,
      fit: BoxFit.cover,
    );
  }

  Widget title(BuildContext context) {
    return Text(
      "Harry Potter and the\nPhilosopher's Stone",
      style: Theme.of(context).textTheme.subtitle1,
    );
  }

  Widget genre(BuildContext context) {
    return Text(
      "Fantasy",
      style: Theme.of(context).textTheme.caption,
    );
  }

  Widget price(BuildContext context) {
    return Text(
      "\$5.99",
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget rating(BuildContext context) {
    if (kIsWeb) {
      return Text("this content is being blocked by web platform");
    }
    return RatingBarIndicator(
      rating: 4.5,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 0),
      itemSize: 24.0,
      itemBuilder: (context, _) => Container(
        padding: EdgeInsets.all(0),
        child: Icon(
          Icons.star,
          color: Colors.black,
        ),
      ),
    );
  }
}

const DUMMY_POTTER_COVER =
//    'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true';
    "https://cdn.suwalls.com/wallpapers/movies/hermione-granger-harry-potter-40918-2560x1600.jpg";
