import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pw_generator/page/onBoarding.dart';
import 'package:pw_generator/page/login.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
// import 'onBoarding.dart';
// import 'package:google_fonts/google_fonts.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => splashScreenState();
}

class splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushNamed(context, '/home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/Logo.png',
              height: 100,
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Chiper',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 32,
                    color: const Color(0xffFC5185),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Pass',
                  style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: const Color(0xff545974),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
