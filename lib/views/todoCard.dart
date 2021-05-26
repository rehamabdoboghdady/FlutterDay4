import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class todoCard extends StatefulWidget {
  String title;
  int id;
  todoCard({this.id = 0, this.title = "Test"});
  @override
  _todoCardState createState() => _todoCardState();
}

class _todoCardState extends State<todoCard> {
  @override
  Widget build(BuildContext context) {
  return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("${widget.id}") , Text(widget.title)],
        ),
      ),
    );
  }
}