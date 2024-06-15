import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class LandmarkCard extends StatelessWidget {
  const LandmarkCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: const Color(0xffF5F5F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(
              title,
              style: TextStyle(
                  color: secondaryBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              description,
              style: TextStyle(
                  color: mainTxtColor,
                  fontSize: 20,
                ),
            ),
          ),
          const SizedBox(
            height: 10,)
        ],
      ),
    );
  }
}
