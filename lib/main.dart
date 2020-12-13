import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
          child: Text(
            'Welcome to my App!',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.grey[600],
                fontFamily: 'IndieFlower'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('bom dia');
          },
          child: Text('?'),
          backgroundColor: Colors.red[600],
        ),
      ),
    ));
