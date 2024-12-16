
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../constant.dart';
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
  Future<dynamic> post(ParamsModel params)async{
    try {
      var response = await dio.post(kUrl+(params.url??''),data: params.urlParams);
      if(response.statusCode==200||response.statusCode==201){
        print(response.statusCode);
        Fluttertoast.showToast(
            msg: "This is a Toast message",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            textColor: Colors.green,
            fontSize: 16.0
        );
        var data=response.data;
        print("///////////////////////////////////");
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