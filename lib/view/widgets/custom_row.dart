import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  CustomRow({super.key, required this.text1,required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$text1",style: TextStyle(fontSize: 20),),
        Text("$text2",style: TextStyle(fontSize: 16,color: Colors.blue),)
      ],
    );
  }
}
