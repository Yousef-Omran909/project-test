import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:train/todo_train/models/custom_model.dart';
import '../../constant.dart';
import '../params/params_model.dart';

class InitApi {
  static Dio dio = Dio();
  //Get
  Future<Map<String, dynamic>> get(ParamsModel params) async {
    try {
      var response = await dio.get(kUrl + (params.url ?? ''),
          queryParameters: params.urlParams);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var data = jsonDecode(response.data.toString());
        print(data);
        return data;
      } else {
        print(response.statusCode);
        return {};
      }
    } catch (e) {
      print(e.toString());
      return {};
    }
  }

  //post
  Future<Map<String, dynamic>> post(ParamsModel params) async {
    try {
      var response =
          await dio.post(kUrl + (params.url ?? ''), data: params.urlParams);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.statusCode);
        var data = response.data;
        print(data);
        return data;
      } else {
        print(response.statusCode);
        return {};
      }
    } catch (e) {
      print(e.toString());
      return {};
    }
  }

  //put
  Future<Map<String, dynamic>> put(ParamsModel params) async {
    try {
      var response = await dio.put(kUrl + (params.url ?? ''),
          queryParameters: params.urlParams);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.statusCode);
        var data = response.data;
        print(data);
        return data;
      } else {
        print(response.statusCode);
        return {};
      }
    } catch (e) {
      print(e.toString());
      return {};
    }
  }

  //delete
  Future<Map<String, dynamic>> delete(ParamsModel params) async {
    try {
      var response =
          await dio.delete(kUrl + (params.url ?? ''), data: params.urlParams);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.statusCode);
        var data = response.data;
        print(data);
        return data;
      } else {
        print(response.statusCode);
        return {};
      }
    } catch (e) {
      print(e.toString());
      return {};
    }
  }

  // statement(Response res) async {
  //   if (res.statusCode == 200) {
  //     return res.data;
  //   } else {}
  // }
}
