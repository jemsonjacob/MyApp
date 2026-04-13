import 'package:flutter/material.dart';
import 'package:sample/pages/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
        child: Padding(
          padding: EdgeInsets.only(top: 150, left: 15, right: 15, bottom: 320),
          child: Container(
            // height: 200,
            // width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.transparent),
              color: Colors.white.withValues(alpha: 0.15),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.25),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.25),
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility, color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: width > 600 ? 300 : double.infinity,
                  height: width > 600 ? 150 : 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent.shade400,
                      elevation: 60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
