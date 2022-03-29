// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: ListView(
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/photoman.jpg')),
                shape: BoxShape.circle,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              'SAMUEL KIANDO WAINAINA',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              'codewithkiash@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              '0714128629',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              '39544609',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Text('Conrol Panel')),
              ),
              Container(
                width: 150,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                child: Text(
                  'Subscriptions',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 162, 177, 170),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text('My account'),
                ),
              ),
              Container(width: 180),
              Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 130, 150, 160)),
                child: Text('Sigh out'),
              )
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              "Growing and Glowing Software developer",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              'Every day is a learing day',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  color: Colors.greenAccent),
            ),
          ),
          Text(
            'Road To destination Is  always Under  Construction',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 35,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
