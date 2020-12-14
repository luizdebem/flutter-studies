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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Hello Row'),
          FlatButton(
              onPressed: () {}, color: Colors.amber, child: Text('Click me')),
          Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('Estou dentro dum container'))
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
