// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/services/categories.dart';
import 'package:task/services/services_cat.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  var _categoryNamecontroler = TextEditingController();
  var _categoryDescription = TextEditingController();
  var _categoryStore = TextEditingController();
  var _categoryorederdby = TextEditingController();
  var _categoryPhone = TextEditingController();

  final _category = cat;
  final _categoryservice = Categrieservices();
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            title: Text("Categories  form"),
            content: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                TextField(
                  controller: _categoryNamecontroler,
                  decoration: InputDecoration(
                      hintText: 'Enter Decoration Items',
                      labelText: 'Categories'),
                ),
                TextField(
                  controller: _categoryDescription,
                  decoration: InputDecoration(
                      hintText: 'Decorations', labelText: 'Decorations'),
                ),
                TextField(
                  controller: _categoryStore,
                  decoration: InputDecoration(
                      hintText: 'Store Number', labelText: 'Store Number'),
                ),
                TextField(
                  controller: _categoryorederdby,
                  decoration: InputDecoration(
                      hintText: 'Odered By', labelText: 'Ordered by'),
                ),
                TextField(
                  controller: _categoryPhone,
                  decoration: InputDecoration(
                      hintText: 'Phone Number', labelText: 'Phone Number'),
                )
              ],
            )),
            actions: <Widget>[
              FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    // _category.name._categoryNamecontroler.text;
                    // _category.= _categoryDescription.text;
                    // _category. = _categoryStore.text;
                    // _category. = _categoryorederdby.text;
                    // _category. = _categoryPhone.text;
                    // _categoryservice.saveCategory(_category);
                  },
                  child: Text('Save')),
              FlatButton(
                  color: Colors.red,
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'))
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          color: Colors.blue,
          elevation: 0.0,
        ),
        title: Text('Categories'),
      ),
      body: Center(
        child: Text('List Of categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
