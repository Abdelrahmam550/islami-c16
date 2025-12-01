import 'package:flutter/material.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child:Column(
        children: <Widget>[
          Image.asset(AssetsManager.bearish,
            fit: BoxFit.fitWidth,
            height: screenHeight*0.35,),
          const SizedBox(height: 40,),
          const  Text("Bearish",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: ColorManager.goldColor,
          ),),
          const SizedBox(height: 40,),
          const  Text("Praise the name of your Lord, the Most High",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorManager.goldColor,
          ),),

        ],
      ),
    );
  }
}
