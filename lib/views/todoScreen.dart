import 'package:assignment3/services/todoService.dart';
import 'package:assignment3/views/todoCard.dart';
import 'package:assignment3/views/todoDetail.dart';
import 'package:flutter/material.dart';
import 'package:assignment3/models/todo.dart';

class todoScreen  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<todoScreen> {
    bool isLoading = true;
    List<Todo> todos = [];

      getTodos() async {
    todos = await todoService().getTodos();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTodos();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => todoDetail(
                                id: todos[index].id,
                                title: todos[index].title,
                                userId: todos[index].userId,
                                completed: todos[index].completed,
                              )),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: todoCard(
                      id: todos[index].id,
                      title: todos[index].title,
                    ),
                  ),
                );
              },
            ),
    );
  }
}