// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body); // this requires import dart:convert
    print(data);
    print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('[Loading] InitState function ran');
  }

  @override
  void dispose() {
    super.dispose();
    print('[Loading] Dispose function ran');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Loading',
          style: TextStyle(fontFamily: 'IndieFlower'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[200],
        shadowColor: Colors.purple[500],
        elevation: 0.0,
      ),
      body: Column(children: []),
    );
  }
}
