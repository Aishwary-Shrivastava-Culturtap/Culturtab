import 'package:flutter/material.dart';
import 'page1/star.dart';
import 'page1/form.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;
  var screenHeight = 0.0, screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    thumbnail(h) => Center(
          // padding: const EdgeInsets.fromLTRB(100 * 0.13, 0, 100 * 0.13, 0),
          child: Image(
            image: AssetImage(
              'img/1/girl.png',
            ),
            height: 300,
            // width: 2,
          ),
        );

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: true,//use this
      appBar: AppBar(
        centerTitle: true,

        // leadingWidth: 100,
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        // leading: Container(
        //   padding: const EdgeInsets.fromLTRB(26, 12, 0, 0),
        //   child: Row(
        //     children: [
        // Text(
        //   "<",
        //   style: TextStyle(
        //     fontSize: 22,
        //     fontWeight: FontWeight.bold,
        //     color: Color.fromARGB(255, 0, 0, 0),
        //   ),
        // ),
        // TextButton(
        //   child: Text(
        //     "Back",
        //     style: TextStyle(
        //       fontSize: 18,
        //       fontWeight: FontWeight.bold,
        //       color: Color.fromARGB(255, 0, 0, 0),
        //     ),
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        // const Icon(
        //   Icons.arrow_back_ios,
        //   color: Colors.black,
        // ),
        //   Container(
        //     child: const Text(
        //   'Back',
        //   style: TextStyle(
        //       fontSize: 19,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black),
        // )),
        // ],
        //   ),
        // ),

        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),
        //   color: Color.fromARGB(255, 0, 0, 0),
        //   tooltip: 'Menu Icon',
        //   onPressed: () {},
        // ),

        toolbarHeight: 105,
        elevation: 0.00,

        title: Image.asset('img/1/logo.png', fit: BoxFit.cover),
      ),

      body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                thumbnail(screenHeight),
                ratings,
                MyCustomForm(screenWidth),
              ],
            ),
          )

          // body: Center(
          //   child: TextButton(
          //     onPressed: () async {
          //       var message = await Navigator.push(context,
          //           MaterialPageRoute(builder: (context) {
          //         return const SecondPage(title: 'SecondPage');
          //       }));
          //       print(message);
          //     },
          //     child: const Text('Next'),
          //   ),
          ),
    );
  }
}



// NOTE

// 

// Most of the time we use MaterialPageRoute to navigate between pages/screens, but at times when we want more control to add things like custom transitions, then we can use PageRouteBuilder.