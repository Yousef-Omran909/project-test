import 'package:flutter/material.dart';

import 'widget/costom_textField.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  bool? value = false;
  final TextEditingController todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        todoController.text = "ss";
        // customShowDialog(context,todoController.text);
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("Add"),
                  content: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTextField(
                            hint: "contenet", controller: todoController),
                        StatefulBuilder(builder: (context, s) {
                          return CheckboxListTile(
                              title: Text("complete"),
                              value: value,
                              onChanged: (bool? ss) {
                                s(() {
                                  value = ss;
                                  print(value);
                                });
                              });
                        }),
                        ElevatedButton(onPressed: () {}, child: Text("add"))
                      ],
                    ),
                  ),
                ));
      },
      child: Icon(Icons.edit),
    );
  }

  Future<dynamic> customShowDialog(BuildContext context, String content) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text("Add"),
              content: Container(
                child: Column(
                  children: [
                    // CustomTextField(hint: "contenet", controller:content)
                  ],
                ),
              ),
            ));
  }
}
