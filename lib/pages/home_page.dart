import 'package:awesome_places/pages/landmark_page.dart';
import 'package:awesome_places/pages/natural_wonders_page.dart';
import 'package:awesome_places/pages/night_life_page.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/home_page/category_card.dart';
import 'package:flutter/material.dart';

import 'booking_page.dart';
import 'cultural_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 30,
                            color: mainTxtColor,
                          ),
                        ),
                        const Text(
                          "Places",
                          style: TextStyle(
                              fontSize: 60,
                              color: mainColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: mainColor),
                    )
                  ],
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(color: mainTxtColor, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/main.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                      fontSize: 20,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryCard(
                      bgColor: secondaryGreen,
                      cardWidth: 185,
                      title: "Natural Wonders",
                      navigateTo: (context) =>  const NaturalWondersPage(),
                    ),
                    CategoryCard(
                      bgColor: secondaryOrange,
                      cardWidth: 185,
                      title: "Night Life",
                      navigateTo: (context) => const NightLifePage(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryCard(
                      bgColor: secondaryBlue,
                      cardWidth: 185,
                      title: "Landmarks",
                      navigateTo: (context) => const LandmarkPage(),
                    ),
                    CategoryCard(
                      bgColor: secondaryRed,
                      cardWidth: 185,
                      title: "Cultural",
                      navigateTo: (context) => const CulturalPage(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CategoryCard(
                  bgColor: thirdCategoryColor,
                  cardWidth: double.infinity,
                  title: "Book For A Ride Today!",
                  navigateTo: (context) => const BookingPage(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
