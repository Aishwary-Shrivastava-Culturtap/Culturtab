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
      padding: const EdgeInsets.fromLTRB(0, 100 * 0.4, 0, 10),
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(50, 16, 50, 10),
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
            child:   TextField(
              controller: controller,

              onChanged: (String value) async {
                if (value != Null) {
                  setState(() {
                    searching = true;
                  });
                }
              },scrollPadding: EdgeInsets.only(bottom: 110),
              decoration: InputDecoration(
                hintText: ' Ex : 9088-79-0488',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                labelText: 'Enter Number ',
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
                    style: ElevatedButton.styleFrom(
                      // primary: Color.fromARGB(255, 255, 141, 59),
                      minimumSize: const Size.fromHeight(50), 
                      backgroundColor: searching == true
                            ? Color.fromARGB(255, 255, 141, 59)
                            : Color.fromARGB(248, 0, 0, 0),// NEW
                    ),
                    
                    child: Text('NEXT',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w900)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    }),
              ))
        ],
      ),
    );
  }
}
