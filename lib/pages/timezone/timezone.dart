import 'package:flutter/material.dart';
import '../../components/Sidebar/sidebar.dart';

class Timezone extends StatefulWidget {
  @override
  _TimezoneState createState() => _TimezoneState();
}

class _TimezoneState extends State<Timezone> {
  @override
  Widget build(BuildContext context) {
    String cityName = '';
    String temperature = '';
    if (ModalRoute.of(context).settings.arguments != null) {
      Map data = ModalRoute.of(context).settings.arguments;
      cityName = data['cityName'];
      temperature = data['temperature'] + '° C';
    }
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Weather App'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        drawer: Sidebar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.amberAccent[200],
                ),
                label: Text('Edit Location',
                    style: TextStyle(color: Colors.amberAccent[200])),
              ),
              Text(
                cityName,
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                temperature,
                style: TextStyle(color: Colors.white, fontSize: 58),
              )
            ],
          ),
        ));
  }
}
