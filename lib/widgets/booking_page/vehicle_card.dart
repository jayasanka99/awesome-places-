import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({super.key, required this.name, required this.imagePath});

 final String name;
 final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Image.asset(imagePath,
                width: 100, height: 100, fit: BoxFit.cover),
            const SizedBox(
              height: 10,
            ),
            Text(name, style: TextStyle(color: mainColor, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
