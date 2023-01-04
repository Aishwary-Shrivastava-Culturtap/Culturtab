import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ratings;
  }
}

var stars = Row(
  children: const [
    Icon(
      Icons.crop_16_9_rounded,
      color: Color.fromARGB(255, 255, 141, 59),
    ),
    Icon(
      Icons.crop_16_9_rounded,
      color: Colors.black,
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
        padding: const EdgeInsets.fromLTRB(50, 2, 50, 9),
        child: stars,
      ),
      Container(
        // alignment: Alignment(0, 7),
        padding: const EdgeInsets.fromLTRB(50, 6, 50, 10),
        child: Text('SIGNUP ',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w900, fontSize: 22)
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
        padding: const EdgeInsets.fromLTRB(50, 3, 0, 10),
        child: Text(' Explore, Update, Guid & Earn ! ',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 19)

            // style: TextStyle(
            //   fontSize: 14,
            //   color: Colors.black,
            //   // fontWeight: FontWeight.bold,
            //   fontFamily: 'Roboto',
            //   letterSpacing: 0.5,
            // ),
            ),
      ),
      Row(
        children: [
          Container(
            // alignment: Alignment(0, 7),
            padding: const EdgeInsets.fromLTRB(50, 3, 0, 10),
            child: Text(' Already User ?  ',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 19)

                // style: TextStyle(
                //   fontSize: 14,
                //   color: Colors.black,
                //   // fontWeight: FontWeight.bold,
                //   fontFamily: 'Roboto',
                //   letterSpacing: 0.5,
                // ),
                ),
          ),
          Container(
            // alignment: Alignment(0, 7),
            padding: const EdgeInsets.fromLTRB(40, 3, 0, 10),
            child: Text('Sign in',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                    color: Color.fromARGB(255, 255, 141, 59))

                // style: TextStyle(
                //   fontSize: 14,
                //   color: Colors.black,
                //   // fontWeight: FontWeight.bold,
                //   fontFamily: 'Roboto',
                //   letterSpacing: 0.5,
                // ),
                ),
          )
        ],
      )
    ],
  ),
);
