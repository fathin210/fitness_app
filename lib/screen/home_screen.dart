import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning 🔥",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Pramuditya Uzumaki",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              TextField(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Popular Workouts",
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
