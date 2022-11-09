import 'package:flutter/material.dart';
import 'package:newtest/modules/profile_page.dart';

import 'modules/home_page.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [
    MyHomePage(),
    ProfilePage()
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: pages[0],
    );
  }
}
