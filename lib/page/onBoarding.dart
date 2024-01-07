import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/img/Logo.png',
            height: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Text(
                'GENERATE',
                style: GoogleFonts.bebasNeue(
                  fontSize: 54,
                  color: const Color(0xff545974),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SECURE',
                style: GoogleFonts.bebasNeue(
                  fontSize: 54,
                  color: const Color(0xffFC5185), //0xffFC5185
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'PASSWORDS.',
                style: GoogleFonts.bebasNeue(
                  fontSize: 54,
                  color: const Color(0xff545974),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Improve your online security with Cipher Pass! Say goodbye to weak passwords. Get the most secure and unbreakable password.',
                style: GoogleFonts.poppins(
                    fontSize: 16, color: const Color(0xffBABABA)),
              ),
              const SizedBox(height: 32),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // ElevatedButton(
                      //   onPressed: () {
                      //     // Register
                      //   },
                      //   child: Text('REGISTER'),
                      //   style: ElevatedButton.styleFrom(
                      //       primary: Colors.white,
                      //       side: const BorderSide(
                      //         width: 1.0,
                      //         color: Colors.red,
                      //       ),
                      //       textStyle: GoogleFonts.bebasNeue(
                      //           fontSize: 16, color: Colors.black)),
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          // Register
                        },
                        child: Text(
                          'REGISTER',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 16,
                            color: const Color(0xffFC5185), // Warna teks
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(
                              255, 255, 255, 255), // Warna latar belakang
                          side: const BorderSide(
                            width: 1.0,
                            color: Color(0xffFC5185),
                          ),
                          textStyle: GoogleFonts.bebasNeue(
                            fontSize: 16,
                            color: Colors.white, // Warna teks ketika ditekan
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Mengatur border radius
                          ),
                        ),
                      ),

                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('LOGIN'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffFC5185),
                          // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                          textStyle: GoogleFonts.bebasNeue(fontSize: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Mengatur border radius
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
