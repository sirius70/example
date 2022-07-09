import 'dart:async';
import 'package:flutter/material.dart';

import 'logSign.dart';




class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;
  _SplashScreenState() {
    new Timer(const Duration(milliseconds: 2500), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Login1()),
                (route) => false);
      });
    });

    new Timer(Duration(milliseconds: 15), () {
      setState(() {
        _isVisible = true; //shows fade effect and navigating to login page
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Color(0xff956AA2), Color(0xff412F47)
          ],
          // begin: const FractionalOffset(0, 0),
          // end: const FractionalOffset(1.0, 0.0),
          //stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 2000),
        child: Center(
          child: Container(
            height: 100.0,
            width: 100.0,
            child: CircleAvatar(
              backgroundImage:
              NetworkImage('https://i1.sndcdn.com/artworks-HjidtoxmYlSUdHWo-y6zizg-t500x500.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
