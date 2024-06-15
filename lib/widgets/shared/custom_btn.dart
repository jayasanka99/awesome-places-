import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.btnText,
      required this.btnColor,
      this.btnWidth});

  final String btnText;
  final Color btnColor;
  final double? btnWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:btnWidth ,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          btnText,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
