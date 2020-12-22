import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    // simulando uma requisição..
    await Future.delayed(Duration(seconds: 3), () { // tipo o setTimeout, vai rodar a função após os segundos.
      print('Response from HTTP Request');
    });
    print('Linha após a "requisição"');
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
