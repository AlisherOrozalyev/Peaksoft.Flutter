import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = Random();
 int firstDice1 = 1;
  int secondtDice2 = 5;

  void activing() {
    setState(() {
      firstDice1 = random.nextInt(6) + 1;
      secondtDice2 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(child: Text('Тапшырма 5')),
      ),
      body: Center(
        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            if (firstDice1 == 6 && secondtDice2 == 6) 
            const Text('Super',
            style: TextStyle(
              fontSize: 20,fontWeight: 
              FontWeight.w600),
              ),
            
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: (Row(
                  children: [
                    
                    Expanded(
                      child: Image.asset(
                        'assets/image/dice$firstDice1.png',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Image.asset('assets/image/dice$secondtDice2.png'),
                    ),
                  ],
                )),
              ),
            ),SizedBox(height: 20,),
            ElevatedButton.icon(
              onPressed: () {
                activing();
              },
              icon: const Icon(Icons.tab),
              label: const Text('Play'),
            )
          ],
        ),
      ),
    );
  }
}
