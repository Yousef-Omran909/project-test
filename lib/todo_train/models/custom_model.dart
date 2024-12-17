class ApiModel<ModelType extends ApiContentModel> {
  late final ModelType Function(Map<String, dynamic>)? parser;
  late final String msg;
  late final int code;
  late final bool success;
  late final ModelType? data;
  ApiModel(
      {required this.msg,
      required this.code,
      required this.success,
      required this.data});

  ApiModel.fromJson(Map<String, dynamic> json, {this.parser}) {
    msg = json['msg'] ?? '';
    code = json['code'] ?? 200;
    success = json['success'] ?? true;
    if (parser != null) {
      data = parser?.call(json['data'] ?? {});
    }
    //data = data.fromJson(json['data']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = Map<String, dynamic>();
    json['msg'] = msg;
    json['code'] = code;
    json['success'] = success;
    json['data'] = data?.toJson();

    return json;
  }
}

abstract class ApiContentModel {
  ApiContentModel();
  Map<String, dynamic> toJson();
  fromJson(Map<String, dynamic> json);
}
