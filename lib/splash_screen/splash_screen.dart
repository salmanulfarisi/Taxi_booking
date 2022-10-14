import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taxi_booking/authentication/auth.dart';
import 'package:taxi_booking/global.dart/global.dart';
import 'package:taxi_booking/main_screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      if (fauth.currentUser != null) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AuthSelect()));
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/driver.jpg'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Uber & inDrive app',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
