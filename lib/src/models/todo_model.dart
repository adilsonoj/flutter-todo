import 'package:mobx/mobx.dart';
part 'todo_model.g.dart';

class TodoModel = _TodoModelBase with _$TodoModel;

abstract class _TodoModelBase with Store {
  int id;
  @observable
  String task;
  @observable
  bool completed;
  DateTime createdAt;

  _TodoModelBase({this.id, this.task, this.completed, this.createdAt});

  @action
  setTask(String value) => task = value;

  @action
  setCompleted(bool completed) => this.completed = completed;

  TodoModel fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['id'],
      task: json['task'],
      completed: json['completed'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
