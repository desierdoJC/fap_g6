import 'package:flutter/material.dart';

import 'welcome_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Color(0XFFE8DFDF),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}



