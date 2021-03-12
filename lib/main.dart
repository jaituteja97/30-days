import 'package:flutter/material.dart';
import 'package:tutorial/pages/LoginPage.dart';
import 'package:tutorial/widgets/Themes.dart';
import 'pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      initialRoute: LoginPage.login,
      routes: {
        HomePage.homeRoute: (context) => HomePage(),
        LoginPage.login: (context) => LoginPage()
      },
    );
  }
}
