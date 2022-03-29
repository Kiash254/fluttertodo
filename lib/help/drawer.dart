// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/screens/admin.dart';
import 'package:task/screens/bio.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/cateroies_scree.dart';
import 'package:task/screens/profile.dart';
import 'package:task/screens/settings.dart';

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
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => Settings())));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Profile())));
              },
            ),
            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('Admin'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Admin())));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_outline),
              title: Text('Developer Bio'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Bio()));
              },
            )
          ],
        ),
      ),
      decoration: BoxDecoration(color: Colors.blueAccent),
    );
  }
}
