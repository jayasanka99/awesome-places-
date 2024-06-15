import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Places extends StatelessWidget {
  const Places(
      {super.key,
      required this.title,
      required this.titleColor,
      required this.imagePath,
      required this.description,
      required this.bgColor, required this.isCornerRounded});

  final String title;
  final Color titleColor;
  final String imagePath;
  final String description;
  final Color bgColor;
  final bool isCornerRounded;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: bgColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: titleColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              // Using Ternary Operators
              isCornerRounded
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imagePath,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Image.asset(
                      imagePath,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
              const SizedBox(
                height: 30,
              ),
              Text(
                description,
                style: TextStyle(color: mainTxtColor, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
