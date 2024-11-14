import 'dart:async';
import 'package:flutter/material.dart';
// import 'PhoneScreen.dart';
import 'signupscreen.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({super.key});

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => const Signupscreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff7f50fe),
        child: const Column(
          children: [
            // Centered Column content
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Loading App......',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // Positioned at the end
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Welcome to my App",
                style: TextStyle(
                    color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
