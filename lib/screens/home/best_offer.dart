import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/constants.dart'; // Updated import


class BestOffer extends StatelessWidget {
  const BestOffer({Key? key}); // Fixed syntax for the constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Best Offer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: titleTextColor,
                ),
              ),
              const Spacer(),
              const Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/best_house.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Added crossAxisAlignment
                      children: [ // Removed const from this line to avoid const mismatch
                        Text(
                          "The Moon House",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "P455, Chhatak, Sylhet",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black26), // Removed const from BoxDecoration
                    child: SvgPicture.asset("assets/icons/heart.svg"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
