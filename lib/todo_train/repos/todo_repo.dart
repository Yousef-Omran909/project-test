import 'package:train/todo_train/init_api/init_api.dart';
import 'package:train/todo_train/models/delete_todo_model.dart';
import 'package:train/todo_train/models/todo_model.dart';
import 'package:train/todo_train/models/custom_model.dart';
import 'package:train/todo_train/models/edit_model.dart';
import 'package:train/todo_train/models/get_all_model.dart';
import 'package:train/todo_train/params/get_all_todos/get_all_todos_params.dart';

class TodoRepository {
  final InitApi remoteDataSource = InitApi();

  TodoRepository();
  //get all todos
  Future<GetAllTodoModel?> getAllTodos(GetAllParams params) async {
    try {
      final remote = await remoteDataSource.get(params);
      final data = ApiModel<GetAllTodoModel>.fromJson(
        remote,
        parser: GetAllTodoModel.fromJson,
      );

      return data.data;
    } on Exception catch (e) {
      return GetAllTodoModel();
    }
  }

  //create todo
  Future<TodoModel?> createTodo(GetAllParams params) async {
    try {
      final remote = await remoteDataSource.post(params);
      final data = ApiModel<TodoModel>.fromJson(
        remote,
        parser: TodoModel.fromJson,
      );
      return data.data;
    } on Exception catch (e) {
      return TodoModel(id: -1, userId: -1, completed: false, todo: 'error');
    }
  }

  //Edit todo
  Future<TodoModel?> editTodo(GetAllParams params) async {
    try {
      final remote = await remoteDataSource.put(params);
      final data = ApiModel<TodoModel>.fromJson(
        remote,
        parser: TodoModel.fromJson,
      );
      return data.data;
    } on Exception catch (e) {
      return TodoModel(id: -1, userId: -1);
    }
  }

  //Delete todo
  Future<DeleteTodoModel?> deleteTodo(GetAllParams params) async {
    try {
      final remote = await remoteDataSource.put(params);
      final data = ApiModel<DeleteTodoModel>.fromJson(
        remote,
        parser: DeleteTodoModel.fromJson,
      );
      return data.data;
    } on Exception catch (e) {
      return DeleteTodoModel(id: -1, userId: -1);
    }
  }
}
