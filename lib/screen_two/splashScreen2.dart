import 'dart:async';

import 'package:example/main.dart';
import 'package:example/screen_two/login2.dart';
import 'package:example/screen_two/register2.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
        ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>LoginPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4B96CD), Color(0xff4C5C66)],
            begin: Alignment.topRight,
            end: Alignment.bottomRight
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                children: [
                  SizedBox(height: 200,),
                  Image.network("https://i1.sndcdn.com/artworks-HjidtoxmYlSUdHWo-y6zizg-t500x500.jpg",
              height: 150, width: 150,),
                  SizedBox(height: 50,),
            Text("tagline tagline tagline \ntagline tagline ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
              textAlign: TextAlign.center,
            ),
                ]
            ),
            SizedBox(height: 250,),
            CircularProgressIndicator(),
          ],
        ),

      ),
    );
  }
}
