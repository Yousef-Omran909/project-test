import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      appBar: AppBar(
        title: Text("Todo Screen"),
        elevation: 8,
      ),
      floatingActionButton: AddTodo(),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return

              Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children:  [
                    SlidableAction(
                      onPressed: (context){},
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),

                startActionPane:  ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      // flex: 2,
                      onPressed: (context){},
                      backgroundColor: Color(0xFF7BC043),
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                      label: 'edit',
                    ),

                  ],
                ),
                child: Card(
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

                ),
            ),
              );
          }),
    );
  }
}
