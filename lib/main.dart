import 'package:flutter/material.dart';
import 'package:garv/login_page.dart';
import 'package:garv/home_page.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context)=>LoginPage(),
    HomePage.tag: (context)=>HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'RobotoMono',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

