import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomForm extends StatefulWidget {
  var w;

  MyCustomForm(this.w);
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// ==========================

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  var w;
  final TextEditingController controller = TextEditingController();

  // final ctrl = TextEditingController();
  bool searching = false;
  // @override
  // void initState() {
  //   super.initState();
  //   controller.addListener(() {});

  //   /// Instantiate the PageController in initState.
  // }

  // TextEditingController nameTextEditingController = TextEditingController();
  // String _labelText = "";

  // @override
  // void initState() {
  //   super.initState();
  //   nameTextEditingController.addListener(_hasStartedTyping);
  // }

  // void _hasStartedTyping() {
  //   setState(() {
  //     if (nameTextEditingController.text.isNotEmpty) {
  //       _labelText = 'Name';
  //     } else {
  //       _labelText = "";
  //     }
  //   });
  // }

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
          // ),==============================================

          Container(
            padding: const EdgeInsets.fromLTRB(50, 16, 50, 10),
            child: Text('Please enter your ',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600)
                // TextStyle(
                //   color: Colors.black,
                //   fontWeight: FontWeight.bold,
                //   fontFamily: 'Roboto',
                //   letterSpacing: 0.5,
                //   fontSize: 16,
                // ),
                ),
          ),
          // ),==============================================

          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text('Name ',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400)
                // TextStyle(
                //   color: Colors.black,
                //   fontFamily: 'Roboto',
                //   letterSpacing: 0.5,
                //   fontSize: 16,
                // ),
                ),
          ),
          // ),==============================================

          Container(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: controller,
              onChanged: (String value) async {
                if (value != '') {
                  setState(() {
                    searching = true;
                  });
                } else {
                  setState(() {
                    searching = false;
                  });
                }
              },
              scrollPadding: EdgeInsets.only(bottom: 90),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromARGB(249, 249, 249, 249),
                hintText: 'Enter Your Name',
                labelText: 'Ex : kishor kumar ',
              ),
            ),
          ),
          // ),==============================================

          Container(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: SizedBox(
                height: 50, //height of button
                // width: 300, //width of button
                width: double.infinity, //width of button equal to parent widget

                child: ElevatedButton(
                  onPressed: searching
                      ? () {
                          Navigator.pushNamed(context, '/second');
                        }
                      : null,
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
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
                ),
              ))
        ],
      ),
    );
  }
}
