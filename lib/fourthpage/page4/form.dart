import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// ==========================

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

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
          //     'Please enter your',
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
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: const Text(
              'Fetched Location ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'your location',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                labelText: 'Enter location ',
              ),
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
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 141, 59),
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      child: const Text(
                        'NEXT',
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/fifth');
                      }
                      //parameters of Button class
                      ))),
        ],
      ),
    );
  }
}
