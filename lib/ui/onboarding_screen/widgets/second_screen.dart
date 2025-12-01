import 'package:flutter/material.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Image.asset(
            AssetsManager.mosquebourd,
            fit: BoxFit.fitWidth,
            height: screenHeight * 0.35,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Welcome To Islami ",
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
            "We Are Very Excited To Have You In Our Community",
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
