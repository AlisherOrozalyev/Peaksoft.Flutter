import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueAccent,
      appBar:AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child:  Text('Тапшырма 7',
          style: TextStyle(
            color: Colors.white),
            ),
            ),
      ) ,
    );
  }
}