
import 'package:train/constant.dart';
import 'package:train/todo_train/params/params_model.dart';

class GetParamsById extends ParamsModel<GetParamsIdBody> {
  const GetParamsById({super.body}) : super(baseUrl: kUrl);

  @override
  RequestType? get requestType => RequestType.get;

  @override
  String? get url => 'todos/${body?.id??0}';

  @override
  Map<String, String> get urlParams => body?.toJson()??{};

  @override
  List<Object?> get props => [url, urlParams, requestType, body];

}

class GetParamsIdBody extends BaseBodyModel {
  GetParamsIdBody({required this.id});
  final int id;

  @override
  Map<String, String> toJson() => {};
}