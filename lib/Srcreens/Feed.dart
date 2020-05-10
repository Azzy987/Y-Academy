import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello feed'),
    );
  }
}
