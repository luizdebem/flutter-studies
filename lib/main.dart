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
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.alternate_email),
          color: Colors.amber
        )
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
