import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountEmail: Text("Jaituteja@gmail.com"),
                    accountName: Text("Jai"),
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/mypng.png"),
                    ))),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
