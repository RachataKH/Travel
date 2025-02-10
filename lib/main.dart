import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mytravel/Home_screen.dart';

void main() {
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
      home: HomeScreen(),
    );
  }
}
