import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintText: "search services",
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: Container(
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder()));
  }
}
// import 'package:flutter/material.dart';

// class CustomTextForm extends StatelessWidget {
//   const CustomTextForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(5),
//       height: 48,
//       decoration: BoxDecoration(border: Border.all()),
//       child: TextFormField(
//           decoration: InputDecoration(
//         fillColor: Colors.white,
//         hintText: "search services",
//         hintStyle: TextStyle(color: Colors.grey),
//         suffixIcon: Container(
//             margin: EdgeInsets.only(right: 10),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10), color: Colors.blue),
//             child: Image.asset("assets/images/search.png")),
//       )),
//     );
//   }
// }
