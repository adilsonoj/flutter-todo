import 'package:flutter_test/flutter_test.dart';
import 'package:todoapp/src/repositories/todo_repository.dart';

main() {
  test('deve buscar todos todos', () async {
    final TodoRepository repo = TodoRepository();
    var todos = await repo.getAll();
    print(todos[0].createdAt);

    expect(todos.length, equals(4));
  });
}
