

import 'package:flutter/material.dart';

import 'costom_textField.dart';

Future<dynamic> customShowDialog(BuildContext context,{ String? content,bool? checkBoxValue}) {
  return showDialog(
      context: context,
      builder: (ctx) => AddPopUpContent(todoContent: content,checkBoxValue: checkBoxValue,));
}

class AddPopUpContent extends StatefulWidget {
  const AddPopUpContent({ this.todoContent,super.key, this.checkBoxValue});
  final String? todoContent;
  final bool? checkBoxValue;
  @override
  State<AddPopUpContent> createState() => _AddPopUpContentState();
}

class _AddPopUpContentState extends State<AddPopUpContent> {
  final TextEditingController todoController=TextEditingController();
  bool value = false;
  @override
  void initState() {
    // TODO: implement initState
    todoController.text=widget.todoContent??'';
    value=widget.checkBoxValue??false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
                      value = ss??false;
                      print(value);
                    });
                  });
            }),
            ElevatedButton(onPressed: () {}, child: Text("add"))
          ],
        ),
      ),
    );
  }
}
