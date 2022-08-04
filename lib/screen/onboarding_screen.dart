import 'package:fitness_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Fungsi memberikan shader pada masking, kemudian diberikan linear gradient untuk memberikan kesan kabut
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.transparent,
              ],
            ).createShader(bounds),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/Image (1).png"),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: Container(
                    color: Color(0xffBBF246),
                    width: 71,
                    height: 14,
                  ),
                ),
                Text(
                  "Wherever You Are Health Is Number One",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "There is no instant way to a healthy life",
            style: GoogleFonts.lato(color: Color(0xff8B8F92)),
          ),
          Ink(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
              splashColor: Color(0xffBBF246),
              borderRadius: BorderRadius.circular(10),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
