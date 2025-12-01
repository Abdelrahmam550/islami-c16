import 'package:flutter/material.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';
import 'package:islami_c16/ui/onboarding_screen/widgets/fifth_screen.dart';
import 'package:islami_c16/ui/onboarding_screen/widgets/first_screen.dart';
import 'package:islami_c16/ui/onboarding_screen/widgets/fourth_screen.dart';
import 'package:islami_c16/ui/onboarding_screen/widgets/second_screen.dart';
import 'package:islami_c16/ui/onboarding_screen/widgets/third_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Image.asset(
            AssetsManager.islami,
            fit: BoxFit.fitWidth,
            height: screenHeight * 0.15,
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 1,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() => index = value);
              },
              children: const [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
                FourthScreen(),
                FifthScreen(),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (i) => Row(
                children: [
                  CustomIndicator(Active: index == i),
                  const SizedBox(width: 5),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                index > 0
                    ? TextButton(
                        onPressed: () {
                          if (index > 0) {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          }
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: ColorManager.goldColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    : const SizedBox(),
                TextButton(
                  onPressed: () {
                    if (index < 4) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.of(context).pushReplacementNamed("home");
                    }
                  },
                  child: Text(
                    index == 4 ? "Finish" : "Next",
                    style: TextStyle(
                      color: ColorManager.goldColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final bool Active;

  const CustomIndicator({super.key, required this.Active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Active ? ColorManager.goldColor : Colors.grey,
      ),
      width: Active ? 20 : 10,
      height: 10,
    );
  }
}
