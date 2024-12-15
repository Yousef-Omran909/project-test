
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:train/todo_train/params/get_all_todos_params.dart';

import '../../constant.dart';
import '../models/get_all_model.dart';
import '../params/params_model.dart';

class InitApi{
  Dio dio=Dio();
  //Get
  Future<dynamic> get(ParamsModel params)async{
    try {
      var response = await dio.get(kUrl+(params.url??''),queryParameters:params.urlParams);
      if(response.statusCode==200){
        print(response.statusCode);
        var data=response.data;
        print(data);
        return data;
      }
      else{
        print(response.statusCode);
        return null;
      }
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}