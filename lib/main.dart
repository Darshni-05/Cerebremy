import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'second.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    bool isChecked=false;
    return Scaffold(
        backgroundColor: Color(0xFF388d86),
        body: Container(
            height:height,
            width:width,
            child:SingleChildScrollView(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top:130, bottom: 70),
                      width: width,
                      //height: 240,
                      child: Center(
                        child: Text("CEREBREMY",
                            style: GoogleFonts.lobster(
                                fontSize: 50,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom:15.0),
                      width: width,
                      //height: height*0.45,
                      child: Center(
                        child: Text("Sign In",
                            style: GoogleFonts.bitter(
                                fontSize: 25,
                                color: Colors.white70
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:25.0, right: 25.0),
                      child: Container(
                       // padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: TextField( decoration:
                        InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                            hintText: 'Username',
                            hintStyle: GoogleFonts.bitter(fontSize: 18,
                                ),
                            filled: true, //<-- SEE HERE
                            fillColor: Color(0xfff9f8f4),
                            suffixIcon:Icon(Icons.person_rounded,
                            color: Colors.black),
                            border: InputBorder.none
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0,left:25.0, right: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration:InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                                filled: true, //<-- SEE HERE
                                fillColor: Color(0xfff9f8f4),
                                hintText:'Password',
                                hintStyle: GoogleFonts.bitter(fontSize: 18,
                                    ),
                                suffixIcon:Icon(Icons.visibility_off,
                                color: Colors.black ),
                                border: InputBorder.none

                            )
                        ),
                      ),
                    ),
                    //SizedBox(height:30.0),

                    Padding(padding: const EdgeInsets.all(10.0),
                        child: Row(mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              //height:50.0,
                              width: 207.0,
                              child: (

                                  CheckboxListTile(
                                    selectedTileColor: Colors.white,
                                    title: Text('Stay Signed In',
                                      style: GoogleFonts.bitter(
                                          color: Colors.white,
                                          fontSize: 12.0
                                      ),
                                    ),
                                    checkColor: Colors.white,
                                    activeColor: Colors.white,
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity.leading,
                                  )
                              ),
                            ),
                          ],


                        )
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SignInButton.mini(
                          buttonType: ButtonType.twitter,
                          buttonSize: ButtonSize.large,
                          btnColor: Colors.transparent,
                          elevation: 0.0,
                          onPressed: () {},
                        ),

                        SignInButton.mini(
                          buttonType: ButtonType.apple,
                          buttonSize: ButtonSize.large,
                          btnColor: Colors.transparent,
                          elevation: 0.0,
                          onPressed: () {
                          },
                        ),
                        SignInButton.mini(
                          // buttonType
                          buttonType: ButtonType.google,
                          buttonSize: ButtonSize.large,
                          btnColor: Colors.transparent,
                          elevation: 0.0,
                          onPressed: () {
                          },
                        ),
                        SignInButton.mini(
                          buttonType: ButtonType.facebook,
                          buttonSize: ButtonSize.large,
                          btnColor: Colors.transparent,
                          elevation: 0.0,
                          onPressed: () {},
                        ),

                      ],
                    ),


                    SizedBox(height: 20.0,),


                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Second()));
        },
                      child: Icon(Icons.check,
                      color: Colors.black,
                        size: 22.0
                      ),
                      style:
                      ElevatedButton.styleFrom(
                          primary: Color(0xFFf9f8f4),
                          shape:  CircleBorder(),
                        side: BorderSide(
                            width: 2.0,
                            color: Colors.black),
                          padding: EdgeInsets.all(20.0)
                      ),

                    ),
                    SizedBox(height:20.0),
                    Text('Create Account',
                      style: GoogleFonts.bitter(
                          color: Colors.white,
                          fontSize: 16.0
                      ),),
                  ],
                )
            )
        )
    );
  }
}
