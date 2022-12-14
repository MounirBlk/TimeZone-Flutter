// ignore_for_file: avoid_print, prefer_const_constructors, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:timezone/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
      'timezone': instance.timezone
    });
  }

  @override
  void initState() {
    super.initState();
    print('[Loading] InitState function ran');
    setupWorldTime();
  }

  @override
  void dispose() {
    super.dispose();
    print('[Loading] Dispose function ran');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
