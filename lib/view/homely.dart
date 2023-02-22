import 'package:flutter/material.dart';

class HomelyPage extends StatefulWidget {
  const HomelyPage({Key? key}) : super(key: key);

  @override
  _HomelyPageState createState() => _HomelyPageState();
}

class _HomelyPageState extends State<HomelyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Text('The Pinnacle'),
          Container(
            height: 30,
            color: Colors.teal,
          ),
          Container(
            color: Colors.black,
            height: 30,
            width: 50,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: const Card(
              child: Text('center of card 1'),
              color: Colors.blue,
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: const Card(
              color: Colors.pink,
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: const Card(
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
