import 'package:flutter/material.dart';
import '../../components/Sidebar/sidebar.dart';

class Timezone extends StatefulWidget {
  @override
  _TimezoneState createState() => _TimezoneState();
}

class _TimezoneState extends State<Timezone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('World Time App'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        drawer: Sidebar(),
        body: Column(
          children: [
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location, color: Colors.amberAccent[200],),
              label: Text('Edit Location', style: TextStyle(color: Colors.amberAccent[200])),
            )
          ],
        ));
  }
}
