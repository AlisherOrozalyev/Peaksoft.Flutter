import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 198, 69),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 198, 69),
        title: const Center(
          child: Text(
            'Тапшырма 3',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "I'm Rich",
            style: TextStyle(
            fontSize: 48,
             fontWeight: FontWeight.w400
             
            ),
          ),
          Image.asset('assets/image/almaz.png'),
        ],
      ),
    );
  }
}
