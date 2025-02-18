import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key, 
    required this.onTap, 
    required this.labelText,
  });

  final Function()? onTap;  // The callback function that will be called when the button is tapped
  final String labelText;  // The label text displayed on the button

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,  // Directly use the onTap callback here
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            labelText,  // Use the provided labelText
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
