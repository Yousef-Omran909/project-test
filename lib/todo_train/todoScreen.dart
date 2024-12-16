import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:train/todo_train/add_todo.dart';
import 'package:train/todo_train/init_api/init_api.dart';
import 'package:train/todo_train/params/delete_todo/delete_todo_params.dart';
import 'package:train/todo_train/params/edit_todo_params/edit_todo_params.dart';
import 'package:train/todo_train/params/get_all_todos/get_all_todos_params.dart';
import 'package:train/todo_train/widget/costom_textField.dart';

import 'models/get_all_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  bool isLoading=false;
  late GetAllTodoModel data;

  void requestData(){
    setState(() {
      isLoading=true;
    });
    InitApi().get(GetAllParams(body: GetAllParamsBody())).then((value) {
      if(value!=null){
        data= GetAllTodoModel.fromJson(value);
      }else{
        data=GetAllTodoModel(todos: []);
      }
      setState(() {
        isLoading=false;
      });
    } );
  }
  @override
  void initState() {
    // TODO: implement initState
    requestData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Screen"),
        elevation: 8,
      ),
      floatingActionButton: AddTodo(),
      body:isLoading?const Center(child: CircularProgressIndicator(),):ListView.builder(
          itemCount: data.todos.length,
          itemBuilder: (context, index) {
            return Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children:  [
                    SlidableAction(
                      onPressed: (context){
                        InitApi().delete(DeleteTodoParams(body: DeleteTodoParamsBody(id:data.todos[index].id)));
                      },
                      backgroundColor: const Color(0xFFFE4A49),
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
                      onPressed: (context){
                        InitApi().put(EditTodoParams(
                            body: EditTodoParamsBody(
                                complete: data.todos[index].completed,
                                id:data.todos[index].id)));
                      },
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
                          title: Center(child: Text("${data.todos[index].todo}")),
                        ),
                      );
                    },
                    title: Text("${data.todos[index].todo}"),
                    subtitle: Text("${data.todos[index].completed}"),
                  ),
                ),
              );
          })
    );
  }
}
