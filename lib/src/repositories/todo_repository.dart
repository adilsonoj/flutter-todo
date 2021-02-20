import 'package:todoapp/src/models/todo_model.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TodoRepository {
  TodoModel todoModel = TodoModel();

  final String url = "https://drf-tst.herokuapp.com/todos/";

  Future<List<TodoModel>> getAll() async {
    var response = await http.get(url);
    List<dynamic> json = convert.jsonDecode(response.body);
    return json.map((item) => todoModel.fromJson(item)).toList();
  }
}
