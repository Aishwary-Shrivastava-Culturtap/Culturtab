import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// ==========================

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  bool searching = false;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(50, 1, 50, 1),
            child: Text(
              'Earn by assisting nearby tourist ! ',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w400),

              // style: TextStyle(
              //   color: Colors.black,
              //   // fontWeight: FontWeight.bold,
              //   fontFamily: 'Roboto',
              //   letterSpacing: 0.5,
              //   fontSize: 16,
              // ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 43, 50, 4),
            child: Text(
              'ENTER OTP',
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.w900),

              // style: TextStyle(
              //   fontWeight: FontWeight.bold,
              //   color: Colors.black,
              //   fontFamily: 'Roboto',
              //   letterSpacing: 0.5,
              //   fontSize: 26,
              // ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 1, 50, 10),
            child: Text(
              'It should be autofilled or type manually! ',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w400),

              // style: TextStyle(
              //   color: Colors.black,
              //   fontFamily: 'Roboto',
              //   letterSpacing: 0.5,
              //   fontSize: 16,
              // ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: controller,
              onChanged: (String value) async {
                if (value != Null) {
                  setState(() {
                    searching = true;
                  });
                }
              },
              scrollPadding: EdgeInsets.only(bottom: 180),
              decoration: InputDecoration(
                hintText: 'OTP',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                labelText: 'Enter OTP ',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 2),
            child: Text(
              'Did\'t receive it ? ',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          // const Text(
          //     'Didn\'t receive it?',
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontFamily: 'Roboto',
          //       letterSpacing: 0.5,
          //       fontSize: 16,
          //     ),
          //   ),
          // ),

          Container(
              padding: const EdgeInsets.fromLTRB(50, 2, 50, 10),
              child: Text(
                'RESEND',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffE76063)),
              )),
          // style: TextStyle(
          //   color: Color.fromARGB(255, 255, 5, 5),
          //   fontFamily: 'Roboto',
          //   letterSpacing: 0.5,
          //   fontSize: 16,
          // ),

          Container(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: SizedBox(
                height: 50, //height of button
                // width: 300, //width of button
                width: double.infinity, //width of button equal to parent widget

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: searching == true
                          ? Color.fromARGB(255, 255, 141, 59)
                          : Color.fromARGB(248, 0, 0, 0),
                      // primary: Color.fromARGB(255, 255, 141, 59),
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    child: Text(
                      'NEXT',
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffffffff)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fifth');
                    }),
              ))
        ],
      ),
    );
  }
}
