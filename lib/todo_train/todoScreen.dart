import 'package:flutter/material.dart';
import 'package:train/todo_train/add_todo.dart';
import 'package:train/todo_train/widget/costom_textField.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddTodo(),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Center(child: const Text("Todo content")),
                    ),
                  );
                },
                title: Text("ssss"),
                subtitle: Text("complete/ non complete"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            );
          }),
    );
  }
}
