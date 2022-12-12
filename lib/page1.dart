// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        shadowColor: Colors.purple[500],
      ),
      body: /*Padding(padding: EdgeInsets.all(90.0), child: Text('Hello'))*/
          Container(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              margin: const EdgeInsets.all(30.0),
              color: Colors.grey[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('Hello world !'),
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    child: const Text('Click me'),
                  ),
                  Container(
                    color: Colors.cyan,
                    padding: const EdgeInsets.all(30.0),
                    child: const Text('INSIDE CONTAINER'),
                  ),
                ],
              )),
    );
  }
}
