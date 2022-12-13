// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:timezone/page1.dart';
import 'package:timezone/page2.dart';
import 'package:timezone/page3.dart';
import 'package:timezone/profil_card.dart';
import 'package:timezone/quote_list.dart';
import 'package:timezone/example.dart';
import 'package:timezone/world_time_pages/choose_location.dart';
import 'package:timezone/world_time_pages/home.dart';
import 'package:timezone/world_time_pages/loading.dart';

void main() => runApp(MaterialApp(
      //home: Home(), // WE CAN DELETE IT AFTER SETUP ROUTES SYSTEM
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    )); //MainPage()

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Timezone application',
          style: TextStyle(
              fontFamily: 'IndieFlower',
              fontSize: 20.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        shadowColor: Colors.purple[500],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fond.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Hello guys !',
                  style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Page1();
                    }));
                  }),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigoAccent),
                  ),
                  child: const Text('Page 1 ROW'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Page2();
                    }));
                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: const Text('Page 2 COLUMN'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                OutlinedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Page3();
                    }));
                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text('Page 3 EXPANDED'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfilCard();
                    }));
                  }),
                  icon: const Icon(
                    Icons.dashboard_outlined,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  label: const Text(
                    'Profil Card',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const QuoteList();
                    }));
                  }),
                  icon: const Icon(
                    Icons.dashboard_outlined,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  label: const Text(
                    'Quotes',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Example();
                    }));
                  }),
                  icon: const Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  label: const Text(
                    'Example',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                /*IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.send),
                  color: Colors.green[500],
                )*/
                /*Image.asset('assets/images/fond.jpg'),*/
                /*Image.network(
                    'https://images.unsplash.com/photo-1670654271343-c3d8c90f1831?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),*/
                /*const Image(image: AssetImage('assets/images/fond.jpg')),*/
                /*const Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1670654271343-c3d8c90f1831?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')),*/
              ]),
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
    );
  }
}
