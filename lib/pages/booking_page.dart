import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/ratings.dart';
import 'package:flutter/material.dart';

import '../widgets/booking_page/booking_form.dart';
import '../widgets/booking_page/vehicle_card.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Lets Book A Tour!",
          style: TextStyle(color: mainColor, fontSize: 24),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, // Set the back button color to black
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: mainTxtColor, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select a vehicle",
                style: TextStyle(
                    color: mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VehicleCard(imagePath: "assets/car.png", name: "Car"),
                  VehicleCard(imagePath: "assets/bike.png", name: "Bike"),
                  VehicleCard(imagePath: "assets/bus.png", name: "Bus"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Selected Place",
                style: TextStyle(
                    color: mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/culture.png",
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Selected Place",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Ratings(),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Fill The Details",
                style: TextStyle(
                    color: mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              BookingForm(),
            ],
          ),
        ),
      ),
    );
  }
}
