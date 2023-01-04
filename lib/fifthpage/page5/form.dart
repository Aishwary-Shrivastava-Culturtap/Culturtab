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
          // Container(
          //   padding: const EdgeInsets.fromLTRB(50, 16, 50, 10),
          //   child: const Text(
          //     'Please enter your ',
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //       fontFamily: 'Roboto',
          //       letterSpacing: 0.5,
          //       fontSize: 16,
          //     ),
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 70, 50, 2),
            child: Text(
              'Fetch Location ',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w500),
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
              scrollPadding: EdgeInsets.only(bottom: 170),
              decoration: InputDecoration(
                hintText: 'Enter your location',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                labelText: 'Enter location ',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 100 * 0.75),
            child: Text(
              'EDIT ',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Color(0xffE76063)),
              //  TextStyle(
              //   color: Colors.black,
              //   fontFamily: 'Roboto',
              //   letterSpacing: 0.5,
              //   fontSize: 16,
              // ),
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: SizedBox(
                  height: 50, //height of button
                  // width: 300, //width of button
                  width:
                      double.infinity, //width of button equal to parent widget

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled))
                            return Color.fromARGB(255, 0, 0, 0);
                          return Color.fromARGB(255, 255, 141,
                              59); // Use the component's default.
                        },
                      ),
                    ),
                    onPressed: searching
                        ? () {
                            // Navigator.pushNamed(context, '/fifth');
                          }
                        : null,

                    child: Text(
                      'DONE',
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    //parameters of Button class
                  ))),
        ],
      ),
    );
  }
}
