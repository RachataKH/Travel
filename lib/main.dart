import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mytravel/Home_screen.dart';
import 'package:mytravel/Screen/onboardingscreen.dart';


bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;

  runApp(const MyTravel());
}

class MyTravel extends StatelessWidget {
  const MyTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.lexendTextTheme()),
      title: "My Traveloka 4.0",
      home: show ? OnBoardingScreen() : HomeScreen(),
    );
  }
}
