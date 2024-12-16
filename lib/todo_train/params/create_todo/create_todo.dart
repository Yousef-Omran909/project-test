import 'package:train/constant.dart';
import 'package:train/todo_train/params_model_Standard/params_model_standard.dart';

import '../params_model.dart';

class CreateTodoParams extends ParamsModel<CreateTodoParamsBody> {
  CreateTodoParams({super.body}) : super(baseUrl: kUrl);

  @override
  RequestType? get requestType => RequestType.post;

  @override
  String? get url => 'todos/add';

  @override
  Map<String, dynamic> get urlParams => body?.toJson()??{};

  @override
  List<Object?> get props => [url, urlParams, requestType, body];
}

//headers: { 'Content-Type': 'application/json' },

class CreateTodoParamsBody extends BaseBodyModel {
  CreateTodoParamsBody({this.todo, this.complete, this.userId});
  final String? todo;
  final bool? complete;
  final int? userId;
  @override
  Map<String, dynamic> toJson() => {
    'todo': todo,
    'completed': complete,
    'userId': userId,
  };
  CreateTodoParamsBody copyWith({
    final String? todo,
    final bool? complete,
    final int? userId
})=>CreateTodoParamsBody(
      todo: todo??this.todo,
      complete: complete??this.complete,
      userId: userId??this.userId);
}