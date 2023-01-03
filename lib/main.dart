import 'package:flutter/material.dart';
import 'package:my_app/fifthpage/fifthpage.dart';
import 'package:my_app/firstpage/firstpage.dart';
import 'package:my_app/fourthpage/fourthpage.dart';
import 'package:my_app/secondpage/secondpage.dart';
import 'package:my_app/thirdpage/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(title: "first"),
        '/second': (context) => Secondpage(title: "second"),
        '/third': (context) => const ThirdPage(title: "three"),
        '/fourth': (context) => const FourthPage(title: "fourth"),
        '/fifth': (context) => const FifthPage(title: "fifth"),
      },
    );
  }
}
