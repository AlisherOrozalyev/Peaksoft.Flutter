import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromARGB(255, 240, 213, 59) ,
        appBar: 
        AppBar(backgroundColor:Color.fromARGB(255, 240, 213, 59),
          title: const Center(
            child: Text('Тапшырмы №3'),
            ),
            shadowColor:Colors.black,
            elevation: 10,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("I'm rich",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w400,
              fontFamily: 'Sofia-Regular.ttf'
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}