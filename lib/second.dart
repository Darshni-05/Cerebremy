import 'package:well_being/HomePageDashBoard.dart';
import 'package:well_being/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff9f8f4),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color(0xff388d86),
                  width: width,
                  height: height*0.20,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 125.0),
                    child: Text('Create Account',
                      style: GoogleFonts.bitter(
                          fontSize: 25.0,
                          color: Colors.white,
                        fontWeight: FontWeight.w500
                          ),
                    ),
                  ),
                  //Image.asset('assets/play.png',fit: BoxFit.fill,),

                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       Text('Signup',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                //     ],
                //   ),
                // ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right:25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      //borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xfff9f8f4),
                        hintText: 'Username',
                        hintStyle: GoogleFonts.bitter(),
                        suffixIcon: Icon(Icons.person,
                        color: Colors.black,),
                        border: InputBorder.none
                        //OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(20.0),
                        //),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right:25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                     // borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xfff9f8f4),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.bitter(),
                        suffixIcon: Icon(Icons.email,
                        color: Colors.black,),
                        border:InputBorder.none
                        //OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.0),
                        //),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right:25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                     // borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xfff9f8f4),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.bitter(),
                        suffixIcon: Icon(Icons.visibility_off,
                        color: Colors.black),
                        border: InputBorder.none
                        //OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.0),
                       // ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right:25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      //borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xfff9f8f4),
                        hintText: 'Phone Number',
                        hintStyle: GoogleFonts.bitter(),
                        suffixIcon: Icon(Icons.phone,
                        color: Colors.black ),
                        border: InputBorder.none
                        //OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.0),
                        //),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Text('Stay Logged In',
                      //   style: GoogleFonts.bitter(fontSize: 12.0),),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage()));
                        },
                        child: Text('Sign Up',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bitter(
                              // fontSize: 22.0,
                                color: Colors.white)),
                        style:
                        ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff388d86)
                        ),
                      ),







                      // ElevatedButton(
                      //   onPressed: (){
                      //     Navigator.push(context,MaterialPageRoute(builder: (context)=> dashboard()));
                      //   },
                      //   child: Text('Sign Up',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //   )),
                      //   // ElevatedButton.styleFrom(
                      //   // backgroundColor: Colors.purple,
                      //   // ),
                      //
                      // ),
                    ],
                  ),
                ),
                SizedBox(height:20.0),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  },
                  child: Text.rich(
                    TextSpan(
                        text: 'Already have an account? ',
                        style: GoogleFonts.bitter(),
                        children: [
                          TextSpan(
                            text: 'Sign In.',
                            style: GoogleFonts.bitter(
                              color: Color(0xff388d86),
                            ),
                          ),
                        ]
                    ),
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