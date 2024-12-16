import 'package:train/constant.dart';
import 'package:train/todo_train/params_model_Standard/params_model_standard.dart';

import '../params_model.dart';

class DeleteTodoParams extends ParamsModel<DeleteTodoParamsBody> {
  DeleteTodoParams({super.body}) : super(baseUrl: kUrl);

  @override
  RequestType? get requestType => RequestType.delete;

  @override
  String? get url => 'todos/${body?.id??1}';

  @override
  Map<String, dynamic> get urlParams => body?.toJson()??{};

  @override
  List<Object?> get props => [url, urlParams, requestType, body];
}

//headers: { 'Content-Type': 'application/json' },

class DeleteTodoParamsBody extends BaseBodyModel {
  DeleteTodoParamsBody({required this.id});
  final int id;
  @override
  Map<String, dynamic> toJson() => {};
}