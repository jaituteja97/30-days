import 'package:flutter/material.dart';
import 'package:tutorial/CustomDrawer.dart';

class HomePage extends StatelessWidget {
  static const String homeRoute = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Catelog App"),
          centerTitle: true,
        ),
        body: Column(
          children: [],
        ));
  }
}
