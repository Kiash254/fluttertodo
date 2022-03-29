// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 50),
              child: Text(
                'ASISITIVE',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded),
              title: Text('Caller ID and Spam'),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                'GENERAL',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('Accessbilty'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Assited dialing'),
            ),
            ListTile(
              leading: Icon(Icons.block),
              title: Text('Blocked numbers'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Calling Acconts'),
            ),
            ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text('Call recording'),
            ),
            ListTile(
              leading: Icon(Icons.display_settings),
              title: Text('Display options'),
            ),
            ListTile(
              leading: Icon(Icons.maps_home_work),
              title: Text('Near Places'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Quick response'),
            ),
            ListTile(
              leading: Icon(Icons.voice_chat),
              title: Text('Sounds and Vibrations'),
            ),
            ListTile(
              leading: Icon(Icons.voicemail),
              title: Text('Voicemain'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                'ADAVNCED',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Caller ID announcement'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Flip to Silence'),
            )
          ],
        ));
  }
}
