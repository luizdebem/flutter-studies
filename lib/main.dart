import 'package:flutter/material.dart';
import 'components/Quote/quote.dart';
import 'components/Quote/quote_card.dart';
import 'components/Sidebar/sidebar.dart';

void main() => runApp(MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      drawer: Sidebar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
      ),
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/iamshaunjp/flutter-beginners-tutorial/lesson-15/ninja_id/assets/thumb.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text('NAME',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              SizedBox(height: 10),
              Text('Chun Li',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('CURRENT NINJA LEVEL',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              SizedBox(height: 10),
              Text('$ninjaLevel',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('chunli@dev.com',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                          letterSpacing: 1))
                ],
              ),
              SizedBox(height: 30),
              Text('FAVORITE QUOTES',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              SizedBox(height: 10),
              Column(
                children: quotes
                    .map((quote) => QuoteCard(
                        quote: quote,
                        delete: () {
                          setState(() {
                            quotes.remove(quote);
                          });
                        }))
                    .toList(), // (o toList() é por que o children da Column é sempre uma lita de widgets.)
              )
            ],
          ),
        ),
      ),
    );
  }
}
