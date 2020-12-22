import 'package:flutter/material.dart';
import 'package:myapp_flutter/components/Sidebar/sidebar.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  
  @override
  void initState() {
    super.initState();
    print('initState() triggered');
  }

  @override
  Widget build(BuildContext context) {
    print('build() triggered');
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Choose location'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Text('Counter: $counter'),
      ),
    );
  }
}
