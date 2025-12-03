import 'package:flutter/material.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';
import 'package:islami_c16/ui/sebha_details/sebha_details_screen.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.sebhaBack), fit: BoxFit.fill),
      ),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                AssetsManager.islamiLogo,
                width: width * 0.75,
                fit: BoxFit.fitWidth,
              )),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: ColorManager.whiteColor),
          ),
          const SizedBox(
            height: 16,
          ),
          SebhaDetailsScreen()

        ]),
      )),
    );
  }
}
