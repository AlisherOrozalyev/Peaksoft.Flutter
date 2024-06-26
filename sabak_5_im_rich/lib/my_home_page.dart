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
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffECB90B),
        title: const Text('Тапшырма 3'),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
               "I'm Rich",
               style: TextStyle(
               fontSize: 48,
                fontWeight: FontWeight.w400,
                fontFamily: 'Sofia-Regular'
                
               )
             ),
            Center(child: Image.asset('assets/images/almaz.png')),
          ],
        ),
      ),
    );
  }
}
