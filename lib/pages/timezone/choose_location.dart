import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // jsonDecode();

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    Response res = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(res.body);
    print(data['userId']);
  }

  @override
  void initState() {
    super.initState();
    print('initState() triggered');
    getData();
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
        ));
  }
}
