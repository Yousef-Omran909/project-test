
import 'package:train/constant.dart';
import 'package:train/todo_train/params/params_model.dart';

class GetAllParams extends ParamsModel<GetAllParamsBody> {
  const GetAllParams({super.body}) : super(baseUrl: kUrl);

  @override
  RequestType? get requestType => RequestType.get;

  @override
  String? get url => 'todos';

  @override
  Map<String, String> get urlParams => body?.toJson()??{};

  @override
  List<Object?> get props => [url, urlParams, requestType, body];

}

class GetAllParamsBody extends BaseBodyModel {
  GetAllParamsBody();
  //final int page;

  @override
  Map<String, String> toJson() => {};
}