import 'package:flutter/material.dart';
import 'page3/star.dart';
import 'page3/form.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ======================================

        appBar: AppBar(
          centerTitle: true,

          leadingWidth: 100,
          // centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: Container(
            padding: const EdgeInsets.fromLTRB(26, 16, 0, 0),
            child: Row(
              children: [
                Text(
                  "<",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                TextButton(
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                // IconButton(
                //     icon: const Icon(
                //       Icons.arrow_back_ios,
                //       color: Colors.black,
                //     ),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     }
                //     // const Icon(

                //     //   Icons.arrow_back_ios,
                //     //   color: Colors.black,
                //     ),
                // Container(
                //     child: const Text(
                //   'Back',
                //   style: TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.black),
                // )),
              ],
            ),
          ),

          toolbarHeight: 105,
          elevation: 0.00,

          title: Image.asset('img/1/logo.png', fit: BoxFit.cover),
        ),
        body: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  thumbnail,
                  ratings,
                  MyCustomForm(),
                ],
              ),
            )));
  }
}

final thumbnail = Center(
  // padding: const EdgeInsets.fromLTRB(50, 16, 50, 10),
  child: const Image(
    image: AssetImage(
      'img/3/lap.png',
    ),
    height: 297.19,
    //  : 2,
  ),
);

// NOTE

// Most of the time we use MaterialPageRoute to navigate between pages/screens, but at times when we want more control to add things like custom transitions, then we can use PageRouteBuilder.
