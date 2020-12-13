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
        child: Image.asset('assets/bob-esponja.jpg') // assets definidos em pubspec.yaml
        // child: Image.network('https://avatars0.githubusercontent.com/u/37565843?s=460&u=25228add319047862c1b98724ab4a40bd5c18752&v=4')
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
