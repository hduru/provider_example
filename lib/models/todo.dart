import 'dart:convert';

class Todo {
  String name;
  bool status;

  Todo({
    required this.name,
    required this.status,
  });

  factory Todo.fromJson(String str) => Todo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Todo.fromMap(Map<String, dynamic> json) => Todo(
        name: json["name"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "status": status,
      };
}
