import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart'; // Import SpinKit
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/pages/watch_time.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Service',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WatchTime(),));
    });
  }

  int _currentIndex = 0;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.pink[200],
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
              leading:IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.black,),),
              title: Column(
                children: [
                  Text(
                    'Social Media service',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/Video-Player-PNG-Image.png'),
                        width: 130,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: isLiked ? Colors.red : Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                          Text('Video Player'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 130,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/images (16).jpg'),
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: isLiked ? Colors.red : Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                          Text('Media '),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/download (25).jpg'),
                        width: 130,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: isLiked ? Colors.red : Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                          Text('Likes'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Container(
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/12048929.png'),
                        width: 130,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              color: isLiked ? Colors.red : Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                          Text('Subscriber'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  // Function to show SpinKitCircle and navigate to the next screen after a delay
