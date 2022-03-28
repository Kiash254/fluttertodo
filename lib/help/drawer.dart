// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/cateroies_scree.dart';

class Navigaton extends StatefulWidget {
  const Navigaton({Key? key}) : super(key: key);

  @override
  State<Navigaton> createState() => _NavigatonState();
}

class _NavigatonState extends State<Navigaton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/kiash.jpg'),
                ),
                accountName: Text("KIASH KIASH"),
                accountEmail: Text("KIASH@gmail.com")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Categories()));
              },
            )
          ],
        ),
      ),
      decoration: BoxDecoration(color: Colors.blueAccent),
    );
  }
}
