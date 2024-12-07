import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentCiewedCard extends StatelessWidget {
  const RecentCiewedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/Recent.png")),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          RecentlyViewedColumn()
        ],
      ),
    );
  }
}

class RecentlyViewedColumn extends StatelessWidget {
  const RecentlyViewedColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Landing Page"),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                child: Image.asset("assets/images/Eli.png"),
              ),
              SizedBox(
                width: 3,
              ),
              Text("Username"),
              Spacer(),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("4.9")
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("das asdsadas sdfas dsada dsad asdasd"),
          SizedBox(
            height: 5,
          ),
          Text(
            "Form:15000 S.P",
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
