import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSTSPage extends StatefulWidget {
  const LoginSTSPage({super.key});

  @override
  State<LoginSTSPage> createState() => _LoginSTSPageState();
}

class _LoginSTSPageState extends State<LoginSTSPage> {
  TextEditingController password = TextEditingController();
  bool obsecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: GoogleFonts.aboreto(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Ke Akun Anda",
              style: GoogleFonts.poppins(fontSize: 25, color: Colors.black),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 400,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 400,
              height: 50,
              child: TextField(
                controller: password,
                obscureText: obsecured,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecured = !obsecured;
                      });
                    },
                    icon: Icon(
                      obsecured ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum Punya Akun?", style: TextStyle(color: Colors.black54)),
                Text(" Sign Up", style: TextStyle(color: Colors.blueAccent,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
