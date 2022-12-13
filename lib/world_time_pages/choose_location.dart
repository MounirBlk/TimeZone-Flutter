// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    String name = '';
    name = await Future.delayed(Duration(seconds: 3), () {
      return 'mario';
    });
    print('1-name: $name');
    name = await Future.delayed(Duration(seconds: 3), () {
      return 'luigi';
    });
    print('2-name: $name');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('[ChooseLocation] InitState function ran');
  }

  @override
  void dispose() {
    super.dispose();
    print('[ChooseLocation] Dispose function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('[ChooseLocation] Build function ran');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose location',
          style: TextStyle(fontFamily: 'IndieFlower'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[200],
        shadowColor: Colors.purple[500],
        elevation: 0.0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
        child: Text('counter is $counter'),
      ),
    );
  }
}
