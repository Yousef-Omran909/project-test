import 'package:train/todo_train/models/custom_model.dart';

class EditTodoModel extends ApiContentModel {
  late final num id;
  late final String todo;
  late final bool completed;
  late final num userId;

  EditTodoModel(
      {required this.id,
      this.todo = '',
      this.completed = false,
      required this.userId});

  EditTodoModel.fromJson(Map<String, dynamic> json) {
    id = num.parse((json['id'] ?? 0).toString());
    todo = json['todo'];
    completed = json['completed'].toString() == 'true';
    userId = num.parse((json['userId'] ?? 0).toString());
  }
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['todo'] = todo;
    data['completed'] = completed;
    data['userId'] = userId;
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) {
    EditTodoModel.fromJson(json);
  }
}
