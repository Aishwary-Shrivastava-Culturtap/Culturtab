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
  bool correct = false;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    bool isValidPhoneNumber(String string) {
      // Null or empty string is invalid phone number
      if (string == null && string.isEmpty) {
        return false;
      }
      if (controller.text.length != 10) {
        return false;
      }

      // You may need to change this pattern to fit your requirement.
      // I just copied the pattern from here: https://regexr.com/3c53v
      const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
      final regExp = RegExp(pattern);

      if (!regExp.hasMatch(string)) {
        return false;
      }
      return true;
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(0, 100 * 0.3, 0, 10),
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
            child: Text(
              'Please enter your ',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),

              // style:
              //  TextStyle(
              //   color: Colors.black,
              //   fontWeight: FontWeight.bold,
              //   fontFamily: 'Roboto',
              //   letterSpacing: 0.5,
              //   fontSize: 16,
              // ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text(
              'Mobile Number ',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w400),

              // TextStyle(
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
                    isValidPhoneNumber(controller.text)
                        ? correct = true
                        : correct = false;

                    // if (isValidPhoneNumber(controller.text))
                  });
                }
              },
              scrollPadding: EdgeInsets.only(bottom: 110),
              decoration: InputDecoration(
                hintText: 'Enter Mobile Number  ',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                labelText: 'Ex : 9088-79-0488 ',
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: SizedBox(
                height: 50, //height of button
                // width: 300, //width of button
                width: double.infinity, //width of button equal to parent widget

                child: ElevatedButton(
                  // style: ElevatedButton.styleFrom(
                  //   // primary: Color.fromARGB(255, 255, 141, 59),
                  //   minimumSize: const Size.fromHeight(50),
                  //   backgroundColor: searching == true
                  //         ? Color.fromARGB(255, 255, 141, 59)
                  //         : Color.fromARGB(248, 0, 0, 0),// NEW
                  // ),

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled))
                          return Color.fromARGB(255, 0, 0, 0);
                        return Color.fromARGB(
                            255, 255, 141, 59); // Use the component's default.
                      },
                    ),
                  ),
                  onPressed: correct
                      ? () {
                          Navigator.pushNamed(context, '/third');
                        }
                      : null,

                  child: Text('NEXT',
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255))),
                  //

                  // Navigator.pushNamed(context, '/third');
                ),
              ))
        ],
      ),
    );
  }
}
