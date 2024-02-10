import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart'; // Add this import for the loading spinner
import 'package:lottie/lottie.dart';
import 'package:uidesign/pages/social_media.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Social(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
              color: Colors.pink[300],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '\$',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.pink[200],
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              toolbarHeight: 100,
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/cad4c767-5669-42f0-b2cf-92a3ed3f31fc.jpg',
                ),
                backgroundColor: Colors.pinkAccent,
              ),
              title: Text(
                'Aurhan',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.pink[100],
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Collect Dairy Reward Now!',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Lottie.asset(
                          'images/Animation - 1706216059171.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.orangeAccent[100],
                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(50),
                      ),
                      ),
                      width: 150,

                      child: Lottie.asset(
                        'images/Animation - 1706210787174.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      width: 150,

                      child: Lottie.asset(
                        'images/Animation - 1706218293258.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.purple[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      width: 150,

                      child: Lottie.asset(
                        'images/Animation - 1706218717633.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.green[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      width: 150,

                      child: Lottie.asset(
                        'images/Animation - 1706218868319.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Wrap(
              children: [
                Text(
                  'All Features',
                  style: TextStyle(fontSize: 25),
                ),
                Wrap(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orangeAccent[100],
                          child: Image(
                            image: AssetImage('images/download (16).png'),
                            width: 20,
                          ),
                          radius: 20,
                        ),
                        SizedBox(height: 5),
                        Text('Offers', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.pink[100],
                            child: Image(
                              image: AssetImage('images/download (17).png'),
                              width: 40,
                            ),
                            radius: 40,
                          ),
                        ),

                        Text('Videos', style: TextStyle(fontSize: 8)),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.deepPurple[200],
                            child: Image(
                              image: AssetImage('images/download (19).png'),
                              width: 20,
                            ),
                            radius: 20,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Refer', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent[200],
                        child: Image(
                          image: AssetImage('images/download (20).png'),
                          width: 20,
                        ),
                        radius: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Tuttorial', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Wrap(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: Image(
                        image: AssetImage('images/download (21).png'),
                        width: 30,
                      ),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.lime,
                      child: Image(
                        image: AssetImage('images/download (23).png'),
                        width: 30,
                      ),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Image(
                        image: AssetImage('images/download (23).jpg'),
                        width: 30,
                      ),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Image(
                      image: AssetImage('images/images (2).png'),
                      width: 30,
                    ),
                    radius: 20,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.lime,
                    child: Image(
                      image: AssetImage('images/images (16).jpg'),
                      width: 30,
                    ),
                    radius: 20,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.limeAccent,
                    child: Image(
                      image: AssetImage('images/download (24).png'),
                      width: 30,
                    ),
                    radius: 20,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Wrap(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Image(
                        image: AssetImage('images/images (16).jpg'),
                        width: 30,
                      ),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage('images/images (13).jpg'),
                        width: 30,
                      ),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage('images/images (17).jpg'),
                        width: 30,
                      ),
                      radius: 20,
                    ),
                  ),
                ],
              ),
            ),
      ]
            //
    ),

        bottomNavigationBar: GNav(
          rippleColor: Colors.grey,
          hoverColor: Colors.grey,
          haptic: true,
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(color: Colors.black, width: 1),
          tabBorder: Border.all(color: Colors.grey, width: 1),
          tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)],
          curve: Curves.easeOutExpo,
          duration: Duration(milliseconds: 900),
          gap: 8,
          color: Colors.grey[800],
          activeColor: Colors.purple,
          iconSize: 24,
          tabBackgroundColor: Colors.purple.withOpacity(0.1),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabs: [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Likes',
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',

            ),

          ],
        ),
      ),

    );
  }
}
