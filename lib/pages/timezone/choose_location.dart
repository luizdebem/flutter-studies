import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'dart:convert'; // jsonDecode();

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  Future<Map> getData(String city) async {
    String API_KEY = DotEnv().env['WEATHER_API_KEY'];
    String URL_API =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$API_KEY&units=metric';
    Response res = await get(URL_API);
    Map data = jsonDecode(res.body);
    return data;
  }

  @override
  void initState() {
    super.initState();
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            maxLength: 35,
            expands: false,
            decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.amberAccent),
                counterStyle: TextStyle(color: Colors.amberAccent),
                hintText: 'Enter a city!',
                fillColor: Colors.white),
            onFieldSubmitted: (String city) async {
              try {
                Map data = await getData(city);
                if (data['cod'] == 200) {
                  Navigator.pushReplacementNamed(context, '/timezone', arguments: {
                    'cityName': data['name'],
                    'temperature': data['main']['temp'].toString()
                  });
                } else {
                  // TODO tratar erros;
                }
              } catch (err) {
                // TODO tratar erros;
              }
            },
          ),
        ),
      ),
    );
  }
}
