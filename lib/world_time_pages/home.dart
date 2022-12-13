// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home screen',
          style: TextStyle(fontFamily: 'IndieFlower'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[200],
        shadowColor: Colors.purple[500],
        elevation: 0.0,
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/location'),
            icon: Icon(
              Icons.edit_location,
              color: Colors.white,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo),
            ),
            label: const Text(
              'Edit Location',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ],
      )),
    );
  }
}
