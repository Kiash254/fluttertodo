import 'package:flutter/material.dart';

class Staff extends StatefulWidget {
  const Staff({Key? key}) : super(key: key);

  @override
  State<Staff> createState() => _StaffState();
}

class _StaffState extends State<Staff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to The admin panel'),
      ),
      body: Center(
        child: Text('make your recommendations'),
      ),
    );
  }
}
