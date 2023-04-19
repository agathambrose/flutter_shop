import 'package:flutter/material.dart';

import '../constants.dart';

//To manage state, we need to use a statful widget for our categories
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
  ];
  //By default our first item on the list will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index
                          ? kTextColor
                          : kTextLightColor),
                ),
                Container(
                  margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
                  height: 2,
                  width: 30,
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                )
              ],
            )),
      );
}
