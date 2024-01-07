import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ), // Menambahkan jarak dengan AppBar
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOGIN',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 42,
                    color: const Color(0xff545974),
                  ),
                ),
                Text(
                  'Let’s get you set up with a new account!',
                  style: GoogleFonts.poppins(color: const Color(0xffBABABA)),
                ),
              ],
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: const Color(
                    0xffF4F4F4), // Sesuaikan warna latar belakang sesuai keinginan
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility,
                    color: Colors.grey, // Sesuaikan warna ikon sesuai keinginan
                  ),
                  onPressed: () {
                    // Implementasi untuk memperlihatkan/menyembunyikan password
                    // Anda dapat menggunakan sebuah state untuk mengatur apakah password harus ditampilkan atau disembunyikan.
                  },
                ),
              ),
              obscureText: true,
            ),

            const SizedBox(height: 8.0),
            Center(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Menengahkan secara vertikal
                children: [
                  TextButton(
                    onPressed: () {
                      // Open password recovery screen
                    },
                    child: Text('Forgot Password',
                        style: GoogleFonts.poppins(
                            color: const Color(0xffBABABA))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFC5185),
                      textStyle: GoogleFonts.bebasNeue(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height:
                          8.0), // Menambahkan jarak antara button dan TextButton
                  TextButton(
                    onPressed: () {
                      // Navigate to register screen
                    },
                    child: Text('Don\'t have an account yet?',
                        style: GoogleFonts.poppins(color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {
                      // Open password recovery screen
                    },
                    child: Text('REGISTER',
                        style: GoogleFonts.poppins(
                            color: const Color(0xffBABABA))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
