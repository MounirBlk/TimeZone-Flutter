// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:timezone/classes/quote.dart';
import 'package:timezone/composants/quote_card.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'This is the quote text 1',
        author: 'Oscar wilde 1',
        color: 'blue'),
    Quote(
        text: 'This is the quote text 2',
        author: 'Oscar wilde 2',
        color: 'green'),
    Quote(
        text: 'This is the quote text 3',
        author: 'Oscar wilde 3',
        color: 'red'),
  ];

  Widget QuoteTemplate(quote) => QuoteCard(quote: quote); //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        shadowColor: Colors.purple[500],
        elevation: 0.0,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
