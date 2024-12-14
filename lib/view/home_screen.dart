import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:train/view/widgets/custom_appbar.dart';
import 'package:train/view/widgets/custom_row.dart';
import 'package:train/view/widgets/our_services_widget.dart';
import 'package:train/view/widgets/recently_viewed_widget.dart';
import 'package:train/view/widgets/custom_text_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Column(
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 12,
                  ),
                  CustomTextForm(),
                  SizedBox(
                    height: 30,
                  ),
                  CustomRow(text1: "Our Services", text2: "View All"),
                  SizedBox(
                    height: 20,
                  ),
                  OurServices(),
                  SizedBox(
                    height: 38,
                  ),
                  CustomRow(text1: "Recently Viewed", text2: "View All"),
                  SizedBox(
                    height: 20,
                  ),
                  RecentlyViewedWidget()
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                color: Colors.grey,
                child: Text("data"),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
