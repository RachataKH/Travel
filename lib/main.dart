import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytravel/Screen/onboardingscreen.dart';
import 'package:mytravel/Screen/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING')??true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.aDLaMDisplayTextTheme()),
      title: "My Travel",
      // home: const HomeScreen(),
      home: show ?const OnBoardingScreen() : SignUpPage(),
      // HomeScreen(),
    );
  }
}