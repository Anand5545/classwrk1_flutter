import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: const Color.fromARGB(255, 119, 150, 165),
    body: Center(
      child: Column(
        children: [
            Text("Welcome to Home",
            style: GoogleFonts.satisfy(
              color: const Color.fromARGB(255, 242, 203, 63),
              fontSize: 30,
              fontWeight: FontWeight.w100
            ),
            )
        ],
      ),
    ),
   );
  }
  
}