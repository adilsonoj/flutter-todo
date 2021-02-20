import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todoapp/src/controllers/todo_controller.dart';
import 'package:todoapp/src/models/todo_model.dart';

class TodoPage extends StatefulWidget {
  final String title;
  const TodoPage({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TodoController controller = TodoController();

  @override
  void initState() {
    super.initState();
    controller.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.title}'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => controller.getAll(),
                child: Icon(
                  Icons.replay_outlined,
                  size: 26.0,
                ),
              ),
            )
          ],
        ),
        body: Observer(builder: (context) {
          return ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              TodoModel todo = controller.todos[index];
              return TodoItem(
                item: todo,
              );
            },
          );
        }));
  }
}

class TodoItem extends StatelessWidget {
  final TodoModel item;

  const TodoItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Card(
        child: ListTile(
          leading: Checkbox(
              onChanged: (value) {
                item.setCompleted(value);
              },
              value: item.completed),
          title: Text('${item.task}'),
          subtitle: Text('criado em: ${item.createdAt}'),
        ),
      );
    });
  }
}
