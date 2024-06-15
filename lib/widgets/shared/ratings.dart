import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xffCACACA).withOpacity(0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.star,color: thirdCategoryColor,size: 40,),
          const Icon(Icons.star,color: thirdCategoryColor,size: 40,),
          const Icon(Icons.star,color: thirdCategoryColor,size: 40,),
          const Icon(Icons.star,color: thirdCategoryColor,size: 40,),
          Icon(Icons.star,color: const Color(0xff3B3636).withOpacity(0.75),size: 40,),
        ],
      ),
    );
  }
}
