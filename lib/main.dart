import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(20),
              color: Colors.cyan,
              child: Text('one')),
          Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('two')),
          Container(
              padding: EdgeInsets.all(40),
              color: Colors.amber,
              child: Text('three'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('bom dia');
        },
        child: Text('?!'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
