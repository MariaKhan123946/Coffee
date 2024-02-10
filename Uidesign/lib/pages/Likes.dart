 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/pages/followers.dart';


class Likes extends StatefulWidget {
const Likes({super.key});

@override
State<Likes> createState() => _WatcTimeState();
}

class _WatcTimeState extends State<Likes> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Followers(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              height: 100,
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
                leading: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.black,size: 20,),),
                title: Column(
                  children: [
                    Text(
                      'Likes',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
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
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Title',
                        hintText: 'Enter Likes  Title ',
                        filled: true,
                        fillColor: Colors.grey[100],
                        suffixIcon: Icon(
                          Icons.arrow_upward,
                        ),
                        hintStyle: TextStyle(color: Colors.purple[100]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        )),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Likes',
                        hintText: 'Enter Numbder of likes',
                        filled: true,
                        fillColor: Colors.grey[100],
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        hintStyle: TextStyle(color: Colors.red),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        )),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: ' post Video Link',
                        hintText: 'Enter post video  link',
                        filled: true,
                      fillColor: Colors.grey[100],
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        hintStyle: TextStyle(color: Colors.red),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        )),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Coins  ',
                        hintText: 'Enter coins ',
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintStyle: TextStyle(color: Colors.red),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Status',
                        hintText: 'Published',
                        filled: true,
                        fillColor: Colors.grey[100],
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        hintStyle: TextStyle(color: Colors.red),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        )),
                  ),
                ),
              ]
          )
      ),
      ),
    );
  }
}