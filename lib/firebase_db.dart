

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirebaseDB extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<FirebaseDB> {
  final DatabaseReference _database = FirebaseDatabase.instance.reference();
  final TextEditingController _textController = TextEditingController();
  String _formData = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _textController,
                decoration: InputDecoration(labelText: 'Enter Data in Firebase DB'),
                onChanged: (value) {
                  _formData = value;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formData.isNotEmpty) {
                    _submitFormData();
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitFormData() {
    final newEntryRef = _database.child('formData').push();
    newEntryRef.set({'article': _formData}).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Data submitted successfully!'),
        ),
      );
      _textController.clear();
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error submitting data: $error'),
        ),
      );
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}