import 'package:flutter/material.dart';
import 'package:tutorial/pages/LoginPage.dart';
import 'pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.homeRoute,
      routes: {
        HomePage.homeRoute: (context) => HomePage(),
        LoginPage.login: (context) => LoginPage()
      },
    );
  }
}
