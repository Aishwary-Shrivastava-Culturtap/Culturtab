import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ratings;
    //    MaterialApp(
    //   title: 'Flutter layout demo',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Flutter layout demo'),
    //     ),
    //     body:  ratings  ,

    //   ),
    // );
  }
}

var stars = Row(
  // mainAxisSize: MainAxisSize.min,
  children: const [
    Icon(
      Icons.crop_16_9_rounded,
      color: Color.fromARGB(255, 255, 141, 59),
    ),
    Icon(
      Icons.crop_16_9_rounded,
      color: Color.fromARGB(255, 255, 141, 59),
    ),
    Icon(
      Icons.crop_16_9_rounded,
      color: Colors.black,
    ),
    Icon(Icons.crop_16_9_rounded, color: Colors.black),
  ],
);

final ratings = Container(
  // padding: const EdgeInsets.all(20),
  // alignment: Alignment.centerLeft,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: stars,
      ),
      Container(
        // alignment: Alignment(0, 7),
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
        child: Text(
          'SIGNUP ',
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w900),

          // style: TextStyle(
          //   color: Colors.black,
          //   fontWeight: FontWeight.w800,
          //   fontFamily: 'Roboto',
          //   letterSpacing: 0.5,
          //   fontSize: 20,
          // ),
        ),
      ),
      Container(
        // alignment: Alignment(0, 7),
        padding: const EdgeInsets.fromLTRB(50, 3, 0, 100 * 0.012),
        child: Text(
          'Start your Adventure now ! ',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
          // style:
          // TextStyle(
          //   fontSize: 14,
          //   color: Colors.black,
          //   // fontWeight: FontWeight.bold,
          //   fontFamily: 'Roboto',
          //   letterSpacing: 0.5,
          // ),
        ),
      )
    ],
  ),
);
