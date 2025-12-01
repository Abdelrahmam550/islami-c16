import 'package:flutter/material.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Image.asset(
            AssetsManager.readquran,
            fit: BoxFit.fitWidth,
            height: screenHeight * 0.35,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Reading the Quran",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: ColorManager.goldColor,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Read,and your Lord is the Most Generous",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: ColorManager.goldColor,
            ),
          )
        ],
      ),
    );
  }
}
