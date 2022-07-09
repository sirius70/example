
import 'package:example/screen_one/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen_two/splashScreen2.dart';
import 'screen_three/splashScreen3.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent
      ));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  Color _primaryColor = Color(0xff038c8c);
  Color _accentColor = Color(0xff666dad);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.lightBlue,
      ),
      home:
      //SplashScreen2(),
     MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                      (route) => false);
            },
                child: Text("splash screen 1")
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => SplashScreen2()),
                          (route) => false);
                },
                child: Text("splash screen 2")
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => SplashScreen3()),
                          (route) => false);
                },
                child: Text("splash screen 3")
            ),
          ],
        ),
      ),
    );
  }
}
