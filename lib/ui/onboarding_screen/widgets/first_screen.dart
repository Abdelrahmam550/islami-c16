import 'package:flutter/material.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child:Column(
        children: <Widget>[
          Image.asset(AssetsManager.welcome,
          fit: BoxFit.fitWidth,
          height: screenHeight*0.35,),
          const SizedBox(height: 40,),
         const  Text("Welcome To Islami App",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: ColorManager.goldColor,
          ),)
        ],
      ),
    );
  }
}
