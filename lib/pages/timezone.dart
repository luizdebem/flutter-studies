import 'package:flutter/material.dart';
import '../components/Sidebar/sidebar.dart';

class Timezone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        drawer: Sidebar());
  }
}
