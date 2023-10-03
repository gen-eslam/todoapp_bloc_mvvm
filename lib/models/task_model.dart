import 'package:hive/hive.dart';


part 'task_model.g.dart';


@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int icon;
  @HiveField(2)
  final String color;
  @HiveField(3)
  final List<dynamic>? todos;

  TaskModel(
      {required this.color,
      required this.title,
      required this.icon,
      this.todos});

  TaskModel copyWith({
    String? title,
    int? icon,
    String? color,
    List<dynamic>? todos,
  }) =>
      TaskModel(
        color: color ?? this.color,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        todos: todos ?? this.todos,
      );

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
      color: json["color"],
      title: json["title"],
      icon: json["icon"],
      todos: json["todos"]);

  Map<String, dynamic> toJson() {
    return {"title": title, "icon": icon, "color": color, "todos": todos};
  }
}
