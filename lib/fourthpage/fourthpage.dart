import 'package:flutter/material.dart';
// import '../../secondpage/secondpage.dart';
import 'page4/star.dart';
import 'page4/form.dart';
import 'page4/signup4.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,

          leadingWidth: 90,
          // centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: Container(
            padding: const EdgeInsets.fromLTRB(26, 16, 0, 0),
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }
                    // const Icon(

                    //   Icons.arrow_back_ios,
                    //   color: Colors.black,
                    ),
                Container(
                    child: Text(
                  'Back',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
              ],
            ),
          ),

          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios),
          //   color: Color.fromARGB(255, 0, 0, 0),
          //   tooltip: 'Menu Icon',
          //   onPressed: () {},
          // ),
          // we are here to help you about (){};

          toolbarHeight: 120.2,
          elevation: 0.00,

          title: Image.asset('img/1/logo.png', fit: BoxFit.cover),
        ),
        body: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  thumbnail,
                  ratings4,
                  MyCustomForm(),
                ],
              ),
            ))

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
        // ),
        );
  }
}

final thumbnail = Container(
  padding: const EdgeInsets.fromLTRB(50, 16, 50, 10),
  child: const Image(
    image: AssetImage(
      'img/4/loc.png',
    ),
    height: 297.19,
    // width: 2,
  ),
);

// NOTE

// Most of the time we use MaterialPageRoute to navigate between pages/screens, but at times when we want more control to add things like custom transitions, then we can use PageRouteBuilder.
