import 'package:flutter/material.dart';

class TxtInput extends StatelessWidget {
  const TxtInput({super.key, required this.hintTxt});

  final String hintTxt;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle:TextStyle(color: Colors.grey.shade500,fontSize: 18,fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      ),
    );
  }
}
