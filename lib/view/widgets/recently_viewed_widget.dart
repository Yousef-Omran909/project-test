import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:train/view/widgets/recently_viewed_card.dart';

import 'our_services_card.dart';

class RecentlyViewedWidget extends StatelessWidget {
  const RecentlyViewedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*0.7,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: RecentCiewedCard(),
            );
          }),
    );
  }
}

