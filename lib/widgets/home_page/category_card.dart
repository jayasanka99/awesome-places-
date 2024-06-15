import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../pages/natural_wonders_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.bgColor,
      required this.cardWidth,
      required this.title, required this.navigateTo});

  final Color bgColor;
  final double cardWidth;
  final String title;
  final WidgetBuilder navigateTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: navigateTo),
        );
      },
      child: Container(
        height: 100,
        width: cardWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: categoryTxtColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
