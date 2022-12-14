// ignore_for_file: avoid_print, prefer_const_constructors, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:timezone/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void getData() async {
    String started = await Future.delayed(Duration(seconds: 3), () {
      return 'started';
    });
    print(started);
  }

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    //navigate to home screen page
    Navigator.pop(context, {
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
        title: Text(
          'Choose location',
          style: TextStyle(fontFamily: 'IndieFlower'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[200],
        shadowColor: Colors.purple[500],
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                color: Colors.purple[100],
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(
                    locations[index].location,
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IndieFlower',
                    ),
                  ),
                  subtitle: Text(
                    '[URL] ${locations[index].url}',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IndieFlower',
                    ),
                  ),
                  leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/${locations[index].flag}')),
                ),
              ),
            );
          }),
    );
  }
}
