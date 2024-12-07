import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:train/view/widgets/custom_appbar.dart';
import 'package:train/view/widgets/custom_row.dart';
import 'package:train/view/widgets/our_services_widget.dart';
import 'package:train/view/widgets/text_form.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(height: 25,),
                CustomTextForm(),
                SizedBox(height: 35,),
                CustomRow(text1: "Our Services", text2: "View All"),
                SizedBox(height: 25,),
                OurServices(),
                SizedBox(height: 35,),
                CustomRow(text1: "Recently Viewed", text2: "View All"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
