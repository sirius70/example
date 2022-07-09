import 'package:example/screen_one/reset_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'logSign.dart';

class Log1 extends StatelessWidget {
  const Log1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 400,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child:CircleAvatar(
                        backgroundImage: NetworkImage("https://logowik.com/content/uploads/images/985_google_g_icon.jpg"),
                      ),
                    ),


                    Padding(padding: EdgeInsets.all(20),
                      child:CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Facebook_logo_36x36.svg/2048px-Facebook_logo_36x36.svg.png"),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 10,),

                Container(
                  child: Text(
                    "----------OR----------",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
//  child: Padding( padding: EdgeInsets.only(left: 20, right: 20)),
                  height: 50,
                  width: 375,
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
                      textInputAction: TextInputAction.next,
                    ),
                  ),

                ),
                SizedBox(height: 10,),

                Container(
//  child: Padding( padding: EdgeInsets.only(left: 20, right: 20)),
                  height: 50,
                  width: 375,
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

                ),
                SizedBox(height: 20,),

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

                    child: const Text('SIGN IN', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),),
                  ),
                ),),


                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'TROUBLE SIGNING IN?',
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => forgotPassword1()));
                              },
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),

                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "DON'T HAVE AN ACCOUNT?"),
                          TextSpan(
                            text: '  Sign Up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login1()));
                              },
                            style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),


      ],);
  }
}



BackgroundImage(){
  return
    // ShaderMask(
    //   shaderCallback: (bounds) => LinearGradient(
    //       colors: [Color(0xff038c8c), Color(0xff666dad)],
    //       begin: Alignment.bottomCenter,
    //       end: Alignment.center
    //   ).createShader(bounds),
    //   blendMode: BlendMode.dstATop,
    //   child:
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhmxL7uDk0ciX2-qKZ6V0F0Gp5quZuSQOlmgK_m_Lug9QuP57lLQa-SvkkxZc-9-gH6EE&usqp=CAU"
          ),
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(
          //     Colors.black54,
          //     BlendMode.dstATop)
        ),
      ),
      // ),
    );
}


