import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Image.asset("assets/images/Group.png",width: 50,),
        SvgPicture.asset(
          'assets/images/Group.svg',
          semanticsLabel: 'My SVG Image',
          width: 40,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/lang.svg',
              semanticsLabel: 'lang',
              width: 30,
            ),
            SizedBox(width: 3,),
            Text("English",style: TextStyle(fontSize: 20),),
            SizedBox(width: 5,),
            Icon(Icons.notification_add,size: 30)
          ],
        ),
      ],
    );
  }
}
