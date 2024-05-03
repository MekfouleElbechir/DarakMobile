import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/constants.dart';
import 'package:interface_pfe/screens/home/best_offer.dart';
import 'package:interface_pfe/screens/home/category.dart';
import 'package:interface_pfe/screens/home/toprecommend.dart';
import '../../widget/bottom_nav_bar.dart';
import 'package:interface_pfe/widget/search_bar.dart';

import '../../widget/constants.dart';
import 'best_offer.dart';
import 'category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileAndMenu(),
            IntroductionText(),
            const MySearchBar(),
            const Category(),
            const SizedBox(height: 20,),
            const TopRecommended(),
            const BestOffer(),
          ],
        ),
      ),
    );
  }

  Container IntroductionText() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello Raihan!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
              fontSize: 16,
            ),
          ),
          Text(
            "Find your sweet Home",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: titleTextColor,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  Padding profileAndMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/icons/menu.svg"),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
            radius: 20, // Adjust the size of the circle avatar
          ),
        ],
      ),
    );
  }
}
