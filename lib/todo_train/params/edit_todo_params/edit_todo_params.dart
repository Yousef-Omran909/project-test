import 'package:train/constant.dart';
import 'package:train/todo_train/params_model_Standard/params_model_standard.dart';

import '../params_model.dart';

class EditTodoParams extends ParamsModel<EditTodoParamsBody> {
  EditTodoParams({super.body}) : super(baseUrl: kUrl);

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

class EditTodoParamsBody extends BaseBodyModel {
  EditTodoParamsBody({required this.id,this.complete});
  final num? id;
  bool? complete;
  @override
  Map<String, dynamic> toJson() => {
    'completed': complete,
  };
  EditTodoParamsBody copyWith({
    final bool? complete,
  })=>EditTodoParamsBody(
    id: id,
    complete: complete??this.complete
      );

}