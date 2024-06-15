import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/natural_page/places.dart';
import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Natural Wonders",
          style: TextStyle(color: mainGreen, fontSize: 24),
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
                title: "Nature Wonders Place-1",
                imagePath: "assets/nature1.png",
                isCornerRounded: false,
                bgColor: secondaryGreen,
                titleColor: secondaryGreen,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              const SizedBox(
                height: 20,
              ),
              Places(
                title: "Nature Wonders Place-2",
                imagePath: "assets/nature2.png",
                isCornerRounded: false,
                bgColor: secondaryGreen,
                titleColor: secondaryGreen,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              const SizedBox(
                height: 20,
              ),
              Places(
                title: "Nature Wonders Place-3",
                imagePath: "assets/nature3.png",
                isCornerRounded: false,
                bgColor: secondaryGreen,
                titleColor: secondaryGreen,
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
