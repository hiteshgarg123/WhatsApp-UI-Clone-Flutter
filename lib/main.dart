import 'package:flutter/material.dart';

import './screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0XFF075E54),
        accentColor: Color(0XFF25D366),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
          ),
          button: TextStyle(
            color: Colors.white,
          ),
        ),
        bottomAppBarColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
