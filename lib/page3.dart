// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        shadowColor: Colors.purple[500],
      ),
      body: Container(
        color: Colors.grey[400],
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Image.asset('assets/images/fond.jpg'),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.amber,
                child: const Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.brown,
                child: const Text('3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
