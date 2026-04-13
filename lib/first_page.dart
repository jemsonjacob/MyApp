import 'package:flutter/material.dart';

class FirstProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //currently evidayanu nilkune enu buildcontext vazhi ariyam

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: AlignmentGeometry.bottomRight,
              begin: AlignmentGeometry.topLeft,
              colors: [Colors.black, Colors.yellow, Colors.green],
            ),
            //for bg image
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: NetworkImage(
            //     'https://images.unsplash.com/photo-1631631480669-535cc43f2327?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            //   ),
            // ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage('assets/gbird.jpg'),
                ),
                Text(
                  "Hello",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ); //material app for
  }
}
