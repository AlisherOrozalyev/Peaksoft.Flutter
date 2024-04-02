import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Random Бул капыстан келуучу результат
  Random random = Random();
 int firstDice1 = 1;
  int secondtDice2 = 5;

// Void Activing Бул функцияны кыскартат
  void activing() {
    setState(() {
      firstDice1 = random.nextInt(6) + 1;
      secondtDice2 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scafold Бул проекттинин актай баракчасы
    return Scaffold(
      // backgroundColor бул AppBar
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(child: Text('Тапшырма 5')),
      ),
      body: Center(
        // Column Бул ойдодолн ылдый ортолотуп берет
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
              // Pading Бул торт капталдан кызып берет
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: (
                  // Row Бул сол капталдан он капталга ортолотуп берет
                  Row(
                  children: [
                    // Expandent Бул контейнердин бир туру
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
            ),
            const SizedBox(height: 20,),
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
