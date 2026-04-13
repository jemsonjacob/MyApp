import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomEnd,
            colors: [
              Colors.deepPurpleAccent.shade400,

              Colors.purple,
              Colors.deepPurpleAccent.shade700,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 250),
            Icon(Icons.bolt, color: Colors.white60, size: 100),
            Text('My App', style: TextStyle(color: Colors.white, fontSize: 35)),
            SizedBox(height: 30),
            CircularProgressIndicator(strokeWidth: 4, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
