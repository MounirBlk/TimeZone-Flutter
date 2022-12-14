// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  String timezone;
  bool isDaytime;

  WorldTime(
      {required this.location,
      this.time = '',
      required this.flag,
      required this.url,
      this.timezone = '',
      this.isDaytime = false});

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse(
          'https://worldtimeapi.org/api/timezone/$url')); //https://jsonplaceholder.typicode.com/todos/1
      Map data = jsonDecode(response.body); // this requires import dart:convert
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      timezone = data['timezone'];
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
