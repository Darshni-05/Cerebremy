import 'package:flutter/material.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMaterial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: SafeArea(
        //height: height,
        //width: width,
        child: Container(
        child: Column(
      children:[
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 10.0),
          child: Align(
          alignment: Alignment.topLeft,
          child: Text('Welcome',
                  style: GoogleFonts.bitter(
                          fontSize: 28,
                          color: Colors.grey,

                        )
                      ),
                    ),
                   ),
          SizedBox(height: 2.0),
          Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                   child: Text('How can we help you today?',
                      style: GoogleFonts.bitter(

                         color: Colors.black,
                          fontSize: 30,
                           fontWeight: FontWeight.w500
                            )),
                         ),
                      ),
    SizedBox(height: 15.0),
                IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                    Padding(padding: EdgeInsets.only(left: 15.0)),
                    Flexible(child:
                    Column(
                        children: [
                          DecoratedBox(
                                decoration: BoxDecoration(
                                 gradient: LinearGradient(
                                   colors: [
                                     Colors.green[500]!.withOpacity(0.7),
                                     Colors.green[400]!.withOpacity(0.7),
                                     Colors.green[300]!.withOpacity(0.7),
                                       ],
                           ),
                                        borderRadius: BorderRadius.circular(20),

                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 2,
                                          offset: Offset(0, 3),
                                          spreadRadius: 2
                                      ) //blur radius of shadow
                                    ]

    ),

                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ElevatedButton(
                                onPressed: () {},

                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Icon(Icons.movie, size: 80,),
                                    SizedBox(height: 25.0),
                                    Text('Movie' + '\nRecommendation',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.bitter(fontSize: 16.0)),
                                  ],
                                ),

                                style:

                                ElevatedButton.styleFrom(
                                  elevation: 10,
                                  fixedSize: const Size(180, 210),
                                  primary: Colors.transparent,
                                  onSurface: Colors.transparent,
                                  shadowColor: Colors.transparent.withOpacity(
                                      0.1),
                                  shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(35.0),),
                                ),

                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          DecoratedBox(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.pink[500]!.withOpacity(0.7),
                                    Colors.pink[400]!.withOpacity(0.7),
                                    Colors.pink[300]!.withOpacity(0.7),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),

                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.pink,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                      spreadRadius: 2
                                  ) //blur radius of shadow
                                ]

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.family_restroom, size: 80,),
                                      SizedBox(height: 10.0),
                                      Text('Attachment',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.bitter(fontSize: 22.0)),
                                    ],
                                  ),
                                  style:
                                  ElevatedButton.styleFrom(
                                    fixedSize: const Size(180, 160),
                                    primary: Colors.transparent,
                                    onSurface: Colors.transparent,
                                    shadowColor: Colors.transparent.withOpacity(
                                        0.1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          35.0),),
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),

                          DecoratedBox(

                            decoration: BoxDecoration(

                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange[500]!.withOpacity(0.7),
                                    Colors.orange[400]!.withOpacity(0.7),
                                    Colors.orange[300]!.withOpacity(0.7),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),

                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.orange,
                                      offset: Offset(0, 3),
                                      spreadRadius: 2,
                                      blurRadius: 2) //blur radius of shadow
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                  0),
                              child: ElevatedButton(
                                onPressed: () {},

                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.mood, size: 80,),
                                    SizedBox(height: 10.0),
                                    Text('Personal Mood Tracker',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.bitter(fontSize: 20.0),
                                    ),
                                  ],
                                ),
                                style:
                                ElevatedButton.styleFrom(
                                  fixedSize: const Size(180, 180),
                                  primary: Colors.transparent,
                                  onSurface: Colors.transparent,
                                  shadowColor: Colors.transparent.withOpacity(
                                      0.1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35.0),),
                                ),
                              ),
                            ),
                          ),
                        ],
                    ),
                    ),
                Padding(padding: EdgeInsets.only(left: 15.0,)),
                Flexible(child:
                Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue[500]!.withOpacity(0.7),
                              Colors.blue[400]!.withOpacity(0.7),
                              Colors.blue[300]!.withOpacity(0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),

                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.blue,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2) //blur radius of shadow
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.chat, size: 80,),
                                SizedBox(height: 10.0),
                                Text('Chat',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.bitter(fontSize: 22.0)),
                              ],
                            ),
                            style:
                            ElevatedButton.styleFrom(
                              fixedSize: const Size(180, 160),
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),),
                            )
                        ),
                      ),
                    ),


                    SizedBox(height: 15.0),

                    DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple[500]!.withOpacity(0.7),
                              Colors.purple[400]!.withOpacity(0.7),
                              Colors.purple[300]!.withOpacity(0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),

                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.purple,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2) //blur radius of shadow
                          ]

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.psychology, size: 80,),
                                SizedBox(height: 15.0),
                                Text('Personalized Mental Health Solution',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.bitter(fontSize: 20.0)),
                              ],
                            ),
                            style:
                            ElevatedButton.styleFrom(
                              fixedSize: const Size(180, 210),
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),),
                            )
                        ),
                      ),
                    ),



                    SizedBox(height: 15.0),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF8F8F),
                              Color(0xFFFFA8A8),
                              Color(0xFFFFC1C1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),

                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color(0xFFFF8F8F),
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2) //blur radius of shadow
                          ]

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.newspaper, size: 80,),
                                SizedBox(height: 15.0),
                                Text('Wholesome News',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.bitter(fontSize: 20.0)),
                              ],
                            ),
                            style:
                            ElevatedButton.styleFrom(
                              fixedSize: const Size(180, 180),
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0)
                  ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            )
          )
          )
        ),
    );
  }
}


class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<Widget> pages;

  BottomNavBar({required this.currentIndex, required this.onTap, required this.pages});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //onTap: colo,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon:Icon(Icons.home_sharp,
                  color: Color(0xff388d86)
              ) ,
              icon: Icon(Icons.home_sharp,
                color: Colors.grey,),
              label: 'Page 1',
            ),
            BottomNavigationBarItem(
              activeIcon:Icon(Icons.book_sharp,
                  color: Color(0xff388d86)
              ) ,
              icon: Icon(Icons.book_sharp,
                color: Colors.grey,),
              label: 'Page 2',
            ),
            BottomNavigationBarItem(
              activeIcon:Icon(Icons.dashboard,
                  color: Colors.black
              ) ,
              icon: Icon(Icons.dashboard,
                color: Colors.grey,),
              label: 'School',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.settings,
            //     color: Colors.grey,),
            //   label: 'Home',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.face,
            //     color: Colors.grey,),
            //   label: 'Home',
            // ),
          ],
          currentIndex: widget.currentIndex,
          //selectedItemColor: Colors.amber[800],
          onTap: widget.onTap,
        ),
      );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  static List<Widget> _widgetOptions = <Widget>[
    HomePageMaterial(),
    Page1(),
    Page2(),
    //Page3(),
  ];
  @override
  bool get wantKeepAlive => true;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => _widgetOptions.elementAt(index)),
    // );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
          Stack(
                children: <Widget>[
            PageView(
              controller: _pageController,
            children: <Widget>[
                HomePageMaterial(),
                IndexedStack(
                index: _selectedIndex,
                children: _widgetOptions,
              ),
       // ..._widgetOptions,
            ],
              onPageChanged: _onPageChanged,
    //     onPageChanged: (index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // },
    ),
    Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: BottomNavBar(
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    pages: _widgetOptions,
    ),
    ),
    ],
    ),


    );

    //return Scaffold(

  }
}
