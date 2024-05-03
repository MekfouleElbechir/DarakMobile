import 'package:flutter/material.dart';


import '../../model/house.dart';
import '../../widget/constants.dart';

class Category extends StatefulWidget {
  const Category({Key? key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10); // Added separator between items
        },
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: selectedIndex == index ? primaryColor : Colors.transparent,
                  ),
                ),
              ),
              child: Text(
                categoryList[index],
                style: TextStyle(
                  color: selectedIndex == index ? primaryColor : bodyTextColor,
                  fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal,
                  fontSize: selectedIndex == index ? 16 : 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
