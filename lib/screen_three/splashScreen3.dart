
import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'login3.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 2),
  //           ()=>Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context)=>MyHomePage()))
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff038c8c), Color(0xff666dad)],
          ),
        ),
        child: AnimatedSplashScreen(
           backgroundColor: Color(0xff666dad),
          splash:
          Image.network("https://i1.sndcdn.com/artworks-HjidtoxmYlSUdHWo-y6zizg-t500x500.jpg",
            height: 150, width: 150,),


          splashTransition: SplashTransition.scaleTransition,
          nextScreen: LoginScreen(),

        ),
      ),


    );
  }
}


