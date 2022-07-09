import 'package:example/screen_one/reset1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgotPassword1 extends StatelessWidget {
  const forgotPassword1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot password",style: TextStyle(color: Colors.white),),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: <Color>[
                  Color(0xff956AA2), Color(0xff412F47)]),
          ),
        ),
      ),

      body:  SingleChildScrollView(child:Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70,),
            Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeUm-iRMJPWV6zTdnye25EEAAq2YXSyBAkkmKbmPePyZMHNIIOP-cj-Bib5ZJ7P5hIGTA&usqp=CAU") ,
    )
              )
            ),

            SizedBox(height: 50,),

            Text("FORGOT YOUR", textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 10,),
            Text("PASSWORD?", textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Text("lorem ipsum dolor idt amet, \nconsecuter adiabnasing", textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  letterSpacing: 2,
              ),
            ),

            SizedBox(height: 50,),
            Container(
//  child: Padding( padding: EdgeInsets.only(left: 20, right: 20)),
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.black87,
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
                  textInputAction: TextInputAction.done,
                ),
              ),

            ),

            SizedBox(height: 190,),

            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Container(

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
                borderRadius: BorderRadius.circular(25),
              ),

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  reset1()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(110, 35)),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
// elevation: MaterialStateProperty.all(3),
                  shadowColor:
                  MaterialStateProperty.all(Colors.transparent),
                ),

                child: const Text('SEND', textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),),
              ),
            ),
            ),
    //),
        ],

),
    ));
  }
}

