import 'package:flutter/material.dart';
import 'package:tutorial/pages/Home_Page.dart';

class LoginPage extends StatefulWidget {
  static const String login = "/loginPage";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Welcome $name",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      name = val;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, HomePage.homeRoute);
                    },
                    child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(changeButton ? 30 : 8),
                          // shape: changeButton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          color: Colors.deepPurple,
                        ),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //      Navigator.pushNamed(context, HomePage.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
