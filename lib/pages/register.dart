import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyActions: true,
        backgroundColor: Colors.purple.shade200,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomEnd,
            colors: [
              Colors.purple.shade300,
              Colors.white,
              Colors.purple.shade300,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 25, vertical: 80),
          child: Column(
            children: [
              Text(
                "Register",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Full Name'),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: width > 600 ? 300 : double.infinity,
                height: width > 600 ? 150 : 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade800,
                    elevation: 60,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
