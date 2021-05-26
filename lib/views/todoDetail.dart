import 'package:flutter/material.dart';

class todoDetail extends StatefulWidget {
   int id;
  String title;
  int userId;
  bool completed;
  todoDetail({this.id = 0, this.title = "Test" , this.userId = 0 , this.completed = false});
 
  @override
  _todoDetailState createState() => _todoDetailState();
}

class _todoDetailState extends State<todoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('ID : ${widget.id}'),
          ) ,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Title : ${widget.title}'
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('User ID : ${widget.userId}'),
          ),   
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('IsCompleted : ${widget.completed}'),
          )
        ],
      ),
    );
  }
}