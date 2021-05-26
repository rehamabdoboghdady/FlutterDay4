
class Todo {
  Todo({
     required this.userId,
     required this.id,
     required this.title,
     required this.completed,
  });
 
  int userId;
  int id;
  String title;
  bool completed;
  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        completed: json["completed"] == null ? null : json["completed"],
      );
}