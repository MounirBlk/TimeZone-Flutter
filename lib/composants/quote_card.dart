// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:timezone/classes/quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key, required this.quote, required this.delete});
  final Quote quote;
  final VoidCallback delete; //Function

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
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(height: 8.0),
              ElevatedButton.icon(
                onPressed: delete, // ou onPressed: () => delete()
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                label: const Text(
                  'Delete quote',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'IndieFlower'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
