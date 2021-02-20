import 'package:mobx/mobx.dart';
import 'package:todoapp/src/models/todo_model.dart';
import 'package:todoapp/src/repositories/todo_repository.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  TodoRepository repo = TodoRepository();

  @observable
  ObservableList<TodoModel> todos = List<TodoModel>().asObservable();

  @action
  getAll() async {
    var list = await repo.getAll();
    print(list.asObservable());
    todos = list.asObservable();
  }
}
