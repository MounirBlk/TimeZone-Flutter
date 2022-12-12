// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:timezone/page1.dart';
import 'package:timezone/page2.dart';
import 'package:timezone/page3.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timezone application'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        shadowColor: Colors.purple[500],
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hello guys !',
                style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Page1();
                  }));
                }),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigoAccent),
                ),
                child: const Text('Page 1 ROW'),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Page2();
                  }));
                }),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: const Text('Page 2 COLUMN'),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Page3();
                  }));
                }),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: const Text('Page 3'),
              ),
              ElevatedButton.icon(
                onPressed: (() {
                  print('Mail send !');
                }),
                icon: const Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                label: const Text(
                  'Mail me',
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
