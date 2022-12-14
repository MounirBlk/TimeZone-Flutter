// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    try {
      if (ModalRoute.of(context)!.settings.arguments != Null) {
        data = data.isNotEmpty
            ? data
            : ModalRoute.of(context)!.settings.arguments as Map;
      }
    } catch (e) {
      data = data;
    }
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color textColor = data['isDaytime'] ? Colors.black : Colors.white;
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          'Home screen',
          style: TextStyle(fontFamily: 'IndieFlower'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[200],
        shadowColor: Colors.purple[500],
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'isDaytime': result['isDaytime'],
                        'flag': result['flag'],
                        'timezone': result['timezone']
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[400]),
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontFamily: 'IndieFlower',
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        color: textColor,
                        fontSize: 30.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IndieFlower',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  data['time'],
                  style: TextStyle(
                    color: textColor,
                    fontSize: 70.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  data['timezone'],
                  style: TextStyle(
                    color: textColor,
                    fontSize: 30.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
