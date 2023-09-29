import 'package:flutter/cupertino.dart';
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
      body: Column(
        children: [
          Center(
            child: Image.asset('images/apex-legends_photo_01.jpg'),
          ),
          SizedBox(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
