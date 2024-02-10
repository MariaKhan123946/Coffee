import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/pages/website.dart';
class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Service',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WatchTime(),
    );
  }
}


class WatchTime extends StatefulWidget {
  const WatchTime({super.key});

  @override
  State<WatchTime> createState() => _WatchTimeState();
}

class _WatchTimeState extends State<WatchTime> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Website (),));
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
                icon: Icon(Icons.arrow_back,color: Colors.black,size: 20,),),
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
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Title',
                        hintText: 'Enter video Title',
                        filled: true,
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
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
                        labelText: 'TumbNail',
                        hintText: 'Enter Choose File',
                        filled: true,
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
                        labelText: 'Main Watching Time (second)',
                        hintText: 'Enter Website link',
                        filled: true,
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
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Coins',
                      hintText: 'Enter Coins',
                      filled: true,
                      hintStyle: TextStyle(color: Colors.red),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'video Type',
                        hintText: 'Video Type',
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        hintStyle: TextStyle(color: Colors.red),
                        filled: true,
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
                        labelText: 'video Link',
                        hintText: 'video Link',
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        hintStyle: TextStyle(color: Colors.red),
                        filled: true,
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
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      hintStyle: TextStyle(color: Colors.deepPurple[100]),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
//   _showSpinKitAndNavigate() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Container(
//             height: 100,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SpinKitCircle(
//                   size: 50,
//                   color: Colors.blue,
//                 ),
//                 SizedBox(height: 10),
//                 Text('Loading...'),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//
//     // Add a delay before navigating to the next screen
//     Timer(Duration(seconds: 3), () {
//       // Close the SpinKitCircle dialog
//       Navigator.pop(context);
//
//       // Navigate to the next screen
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => WatchTime()),
//       );
//     });
//   }
// }
//
