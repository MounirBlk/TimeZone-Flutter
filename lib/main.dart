// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Timezone application'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        shadowColor: Colors.purple[500],
      ),
      body: const Center(
        child: Text(
          'Hello guys !',
          style: TextStyle(
              fontFamily: 'IndieFlower',
              fontSize: 20.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          print('Click');
        }),
        backgroundColor: Colors.purple[500],
        splashColor: Colors.green,
        hoverColor: Colors.indigo,
        child: const Text('Click'),
      ),
    )));
