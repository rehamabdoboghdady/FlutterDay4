import 'package:assignment3/models/todo.dart';
import 'package:dio/dio.dart';

class todoService {
  String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<Todo>> getTodos() async {
    List<Todo> list = [];
    Response response;
    response = await Dio().get('$baseUrl/todos');
    var data = response.data;
    data.forEach((element) {
      list.add(Todo.fromJson(element));
    });
    return list;
  }
}





