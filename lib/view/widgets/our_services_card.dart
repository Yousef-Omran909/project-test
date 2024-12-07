import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OurServicesCard extends StatelessWidget {
  const OurServicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/Group.svg',
            semanticsLabel: 'lang',
            // width: 30,
          ),
          SizedBox(height: 5,),
          Text("Graphics &\nDesign")
        ],
      ),
    );
  }
}
