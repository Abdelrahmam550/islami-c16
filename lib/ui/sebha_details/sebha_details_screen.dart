import 'package:flutter/cupertino.dart';
import 'package:islami_c16/core/resources/AssetsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';

class SebhaDetailsScreen extends StatefulWidget {
  const SebhaDetailsScreen({super.key});

  @override
  State<SebhaDetailsScreen> createState() => _SebhaDetailsScreenState();
}

class _SebhaDetailsScreenState extends State<SebhaDetailsScreen> {
  final List<String> tasbeh = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];
  double angle = 0;
  int currentIndex = 1;
  int currentTasbehIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const Row(),
          Image(
            image: AssetImage(
              AssetsManager.sebhaHead,
            ),
          ),
          Positioned.fill(
            top: height * 0.09,
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                    onTap: _rotateSebha,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image(
                        image: AssetImage(AssetsManager.sebhaBody),
                      ),
                    )),
                Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tasbeh[currentTasbehIndex],
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                    const Row(),
                    Text(
                      currentIndex.toString(),
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  void _rotateSebha() {
      angle += 16;
      currentIndex++;
      if (currentIndex > 33) {
        currentIndex = 1;
        currentTasbehIndex++;
        if (currentTasbehIndex >= tasbeh.length) {
          currentTasbehIndex = 0;
        }
      }
    setState(() {

    });
  }
}
