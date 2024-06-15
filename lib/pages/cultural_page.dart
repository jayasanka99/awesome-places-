import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/shared/custom_btn.dart';
import '../widgets/shared/input.dart';
import '../widgets/shared/ratings.dart';

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Cultural",
          style: TextStyle(color: mainRed, fontSize: 24,fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, // Set the back button color to black
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTxtColor, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/culture.png",
                  width: double.infinity,
                  fit: BoxFit.cover,),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTxtColor, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Rate this Place",
                style: TextStyle(color: mainRed, fontSize: 24,fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Ratings(),
              const SizedBox(
                height: 20,
              ),
              Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  style: TextStyle(color: mainTxtColor, fontSize: 20),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Send Feedback",
                style: TextStyle(color: mainRed, fontSize: 24,fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
               const TxtInput(hintTxt: "Enter Feedback"),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomBtn(btnColor: thirdCategoryColor, btnText: "Submit",),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
