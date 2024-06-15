import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/landmarks_page/landmark_card.dart';

class LandmarkPage extends StatelessWidget {
  const LandmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Landmarks",
          style: TextStyle(color: mainBlue, fontSize: 24),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, // Set the back button color to black
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTxtColor, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const LandmarkCard(title: "Landmarks Place-1",
                  imagePath: "https://www.usnews.com/object/image/00000169-5e06-df95-a57d-7ec6e0e70000/16-leaning-tower-of-pisa-getty.jpg?update-time=1706735236094&size=responsive640",
              description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
           const LandmarkCard(title: "Landmarks Place-2",
                  imagePath: "https://www.pandotrip.com/wp-content/uploads/2018/03/Colosseum-in-Rome-at-sunrise.jpg",
              description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
            ],
          ),
        ),
      ),
    );
  }
}
