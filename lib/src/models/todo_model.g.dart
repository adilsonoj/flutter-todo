// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoModel on _TodoModelBase, Store {
  final _$taskAtom = Atom(name: '_TodoModelBase.task');

  @override
  String get task {
    _$taskAtom.reportRead();
    return super.task;
  }

  @override
  set task(String value) {
    _$taskAtom.reportWrite(value, super.task, () {
      super.task = value;
    });
  }

  final _$completedAtom = Atom(name: '_TodoModelBase.completed');

  @override
  bool get completed {
    _$completedAtom.reportRead();
    return super.completed;
  }

  @override
  set completed(bool value) {
    _$completedAtom.reportWrite(value, super.completed, () {
      super.completed = value;
    });
  }

  final _$_TodoModelBaseActionController =
      ActionController(name: '_TodoModelBase');

  @override
  dynamic setTask(String value) {
    final _$actionInfo = _$_TodoModelBaseActionController.startAction(
        name: '_TodoModelBase.setTask');
    try {
      return super.setTask(value);
    } finally {
      _$_TodoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCompleted(bool completed) {
    final _$actionInfo = _$_TodoModelBaseActionController.startAction(
        name: '_TodoModelBase.setCompleted');
    try {
      return super.setCompleted(completed);
    } finally {
      _$_TodoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
task: ${task},
completed: ${completed}
    ''';
  }
}
