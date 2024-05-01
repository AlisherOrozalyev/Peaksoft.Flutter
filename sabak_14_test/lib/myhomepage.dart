import 'package:flutter/material.dart';
import 'package:sabak_13_test/constants/app_text_styless.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: myAppBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Кыргызстанда 7 область барбы?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),

          )
        ],
      ),
    );
  }







  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: const Center(
        child: Text('Тапшырма 7', style: AppTextStyles.titleTextStyle),
      ),
    );
  }
}
