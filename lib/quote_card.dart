import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote; // final por que essa classe é Stateless;
  final Function delete;

  QuoteCard({this.quote, this.delete}); // construtor (named) atribuindo o quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[600])),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
            SizedBox(height: 8),
            FlatButton.icon(
              onPressed: () {
                this.delete();
              },
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}

// todo: Tirar dúvida sobre organização de pastas - components, pages, classes...
