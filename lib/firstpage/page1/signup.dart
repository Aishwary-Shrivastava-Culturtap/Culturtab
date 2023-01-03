import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatefulWidget {
  var w;
  MyWidget({super.key, this.w});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var w;

  _MyWidgetState({this.w});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

ratings(var w) => Container(
      height: w * 0.4,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //    enter     /,
          Text('Signup',
              // style:
                  // GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400)

              // TextStyle(
              //   color: Colors.black,
              //   fontWeight: FontWeight.w800,
              //   fontFamily: GoogleFonts.poppins( fontSize: 4),
              //   letterSpacing: 0.5,
              //   fontSize: 20,
              // ),
              ),

          Text(
            'Explore',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
