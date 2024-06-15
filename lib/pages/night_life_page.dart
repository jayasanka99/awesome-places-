import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/natural_page/places.dart';

class NightLifePage extends StatelessWidget {
  const NightLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Night Life",
          style: TextStyle(color: mainOrange, fontSize: 24),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, // Set the back button color to black
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTxtColor, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Places(
                title: "Nightlife Place - 1",
                imagePath: "assets/night1.png",
                isCornerRounded: true,
                bgColor: secondaryOrange,
                titleColor: secondaryOrange,
                description:
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              const SizedBox(
                height: 20,
              ),
              Places(
                title: "Nightlife Place - 2",
                imagePath: "assets/night2.png",
                isCornerRounded: true,
                bgColor: secondaryOrange,
                titleColor: secondaryOrange,
                description:
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
