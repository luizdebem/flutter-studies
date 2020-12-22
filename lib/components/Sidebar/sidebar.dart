import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.grey[800],
            child: DrawerHeader(
              child: Center(
                  child: Text(
                'Estudos em Flutter!',
                style: TextStyle(fontSize: 28),
              )),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/timezone');
            },
            child: Text(
              'Weather App',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
