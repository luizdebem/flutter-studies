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
      body: Row(
        children: [
          // Expanded(child: Image.asset('assets/bob-esponja.jpg'), flex: 1),
          Expanded(
            flex: 2,
            child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.cyan,
                child: Text('2/4')),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: Text('1/4')),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text('1/4')),
          )
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
