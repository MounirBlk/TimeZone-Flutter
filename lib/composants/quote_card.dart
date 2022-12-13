// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:timezone/classes/quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key, required this.quote});
  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Container(
        color: Colors.red[200],
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
