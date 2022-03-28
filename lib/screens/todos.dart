import 'package:flutter/material.dart';

class Todoscreen extends StatefulWidget {
  const Todoscreen({Key? key}) : super(key: key);

  @override
  State<Todoscreen> createState() => _TodoscreenState();
}

class _TodoscreenState extends State<Todoscreen> {
  var TodoController = TextEditingController();
  var TodoDescription = TextEditingController();
  var TodoDate = TextEditingController();
  var TodoName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Todo'),
      ),
      body: Column(
        children: [
          TextField(
            controller: TodoController,
            decoration: const InputDecoration(
                hintText: 'Title', labelText: 'Write Todo Title'),
          ),
          TextField(
            controller: TodoName,
            decoration: const InputDecoration(
                hintText: 'Name', 
                labelText: 'Write Todo Name'),
          ),
          TextField(
            controller: TodoDescription,
            decoration: const InputDecoration(
                hintText: 'Description', 
                labelText: 'Write Todo Description'),
          ),
          TextField(
            controller: TodoDate,
            decoration:
                const InputDecoration(hintText: 'Date', 
                labelText: 'Write Todo Date',
                prefixIcon:InkWell(
                 onTap: child: Icon(Icons.calendar_today),

                )
                ),
          ),
        ],
      ),
    );
  }
}
