// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        shadowColor: Colors.purple[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.indigo,
                  child: const Text(
                    'HELLO',
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.orange,
                  child: const Text('WORLD',
                      style: TextStyle(color: Colors.white)))
            ],
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.blue,
              child: const Text('ONE')),
          Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.red,
              child: const Text('TWO')),
          Container(
              padding: const EdgeInsets.all(40.0),
              color: Colors.green,
              child: const Text('THREE')),
        ],
      ),
    );
  }
}
