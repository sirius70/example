
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_widget.dart';

class register1 extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _register1State();
  }
}

class _register1State extends State<register1>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
           SizedBox(height: 50,),

           Container(
             padding: EdgeInsets.only(left: 40,),
               child:
                 Text("REGISTER",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 30,
                   letterSpacing: 2
                   ),)

           ),

            SizedBox(height: 40,),
            Center(child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.person, color: Colors.white, size: 23,),
                    ),
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),

            ),),

            SizedBox(height: 30),
            Center(child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.phone, color: Colors.white, size: 23,),
                    ),
                    border: InputBorder.none,
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
              ),

            ),),

            SizedBox(height: 30,),

            Center(child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.mail, color: Colors.white, size: 23,),
                    ),
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),

            ),),

            SizedBox(height: 30,),

            Center(child: Container(
//  child: Padding( padding: EdgeInsets.only(left: 20, right: 20)),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.key, color: Colors.white, size: 23,),
                    ),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                ),
              ),

            ),),

            SizedBox(height: 80,),

            Center (child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
//stops: [0.0, 1.0],
                  colors: [
                    Color(0xff956AA2), Color(0xff412F47)
                  ],
                ),
// color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(10),
              ),

              child: ElevatedButton(
                onPressed: () {

                },

                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(300, 35)),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
// elevation: MaterialStateProperty.all(3),
                  shadowColor:
                  MaterialStateProperty.all(Colors.transparent),
                ),

                child: const Text('SIGN UP', textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),),
              ),
            ),),

          ],
        ),
      ),
    );
  }

}