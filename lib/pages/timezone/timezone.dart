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
        appBar: AppBar(
          title: Text('World Time App'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        drawer: Sidebar(),
        body: Text('Home of Wold Time App')
        );
  }
}
