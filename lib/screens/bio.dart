// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Bio extends StatefulWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(
          'Developer Bio',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/sam.jpg'))),
              child: Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  'Developer Kiash',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          Text(
              'Currently learing backaned Server side and frontend  Cliet Side '),
          Container(
            decoration: BoxDecoration(),
            child: ListTile(
              title: Text('Click hear to view my Updated python Roadmap'),
            ),
          ),
          ListTile(
              title: Text('Click here to see my Flutter learning progress')),
          ListTile(
            title: Text('Click here to see my Django learning Progress'),
          ),
          ListTile(
            title: Text('Click here to see my React JS learing Progress '),
          ),
          ListTile(
            title:
                Text('click here to see my Django REST APi learning progress'),
          ),
          ListTile(
            title: Text('FaceBook'),
          ),
          ListTile(
            title: Text('Twitter'),
          ),
          ListTile(
            title: Text('Instagram'),
          ),
          ListTile(
            title: Text('Linked'),
          ),
          ListTile(
            title: Text('GitHub Account'),
          )
        ],
      ),
    );
  }
}
