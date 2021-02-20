// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on _TodoControllerBase, Store {
  final _$todosAtom = Atom(name: '_TodoControllerBase.todos');

  @override
  ObservableList<TodoModel> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoModel> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$getAllAsyncAction = AsyncAction('_TodoControllerBase.getAll');

  @override
  Future getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  @override
  String toString() {
    return '''
todos: ${todos}
    ''';
  }
}
