import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami_c16/core/PrefsManager.dart';
import 'package:islami_c16/core/resources/ColorManager.dart';
import 'package:islami_c16/core/resources/RoutesManager.dart';
import 'package:islami_c16/ui/hadeth_details/screen/hadeth_details_screen.dart';
import 'package:islami_c16/ui/home/screen/home_screen.dart';
import 'package:islami_c16/ui/quran_details/screen/quran_details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ui/onboarding_screen/screens/on_boarding_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsManager.init();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? finishedOnBoarding = prefs.getBool("finishedOnBoarding");

  runApp(MyApp(finishedOnBoarding: finishedOnBoarding ?? false));

}

class MyApp extends StatelessWidget {
  final bool finishedOnBoarding;
  const MyApp({super.key, required this.finishedOnBoarding});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(TextStyle(
            color: ColorManager.whiteColor,
            fontWeight: FontWeight.w700,
            fontSize: 12
          ))
        )
      ),
      routes: {
        RoutesManager.homeRoute:(context) => HomeScreen(),
        RoutesManager.quranRoute:(context)=>QuranDetailsScreen(),
        RoutesManager.hadethRoute:(context)=>HadethDetailsScreen(),
        RoutesManager.onboardingRoute:(context)=>OnBoardingScreen(),
      },
      initialRoute: finishedOnBoarding ? RoutesManager.homeRoute : RoutesManager.onboardingRoute,
    );
  }
}

