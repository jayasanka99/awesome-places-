import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../shared/custom_btn.dart';
import '../shared/input.dart';

class BookingForm extends StatelessWidget {
  const BookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "User Name",
          style: TextStyle(
              color: Color(0xff6E7A76),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const TxtInput(hintTxt: "Jon Doe"),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Country",
          style: TextStyle(
              color: Color(0xff6E7A76),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const TxtInput(hintTxt: "Canada"),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Team Size",
          style: TextStyle(
              color: Color(0xff6E7A76),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: mainColor),
              child: const Center(
                child: Text(
                  "3",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add or Remove team members",
                  style: TextStyle(color: mainTxtColor, fontSize: 21),
                ),
                const Row(
                  children: [
                    CustomBtn(btnText: "Add +", btnColor: Color(0xff06FFA5),btnWidth: 135),
                    SizedBox(width: 5,),
                    CustomBtn(btnText: "Remove -", btnColor: mainRed,btnWidth: 135),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Divider(
          color: mainTxtColor.withOpacity(0.3),
          thickness: 2,),
        SizedBox(height: 20,),
        Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around "
            "the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
        style: TextStyle(color: mainTxtColor,fontSize: 18),),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment:MainAxisAlignment.end,
          children: [
            CustomBtn(btnText: " Submit ", btnColor: thirdCategoryColor),
          ],
        ),
      ],
    );
  }
}
