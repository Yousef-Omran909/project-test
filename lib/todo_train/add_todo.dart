import 'package:flutter/material.dart';
import 'package:train/todo_train/widget/add_dialog.dart';

import 'widget/costom_textField.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        customShowDialog(context);
        },
      child: Icon(Icons.edit),
    );
  }


}

