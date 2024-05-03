import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Updated import


import '../../widget/constants.dart';

class HouseDetail extends StatelessWidget {
  const HouseDetail({Key? key}); // Fixed syntax for the constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              itemDetail("assets/icons/bedroom.svg", "5 Bathroom \n3 Master Bedroom"),
              itemDetail("assets/icons/bathroom.svg", "5 Bathroom \n3 Toilet"),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              itemDetail(
                  "assets/icons/kitchen.svg", "2 Kitchen \n120 sqft"), // Corrected the icon filename
              itemDetail("assets/icons/parking.svg", "2 Parking \n180 sqft"),
            ],
          ),
        ],
      ),
    );
  }

  Expanded itemDetail(String image, String text) => Expanded( // Added data types for image and text parameters
    child: Row(
      children: [
        SvgPicture.asset(image, height: 30,), // Added height property
        const SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14, color: bodyTextColor),
        )
      ],
    ),
  );
}
