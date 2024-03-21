import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.counterForSecondPage});
 final  int counterForSecondPage;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Card(
                color: Colors.grey,
                child: Center(
                  child: Text(
                    counterForSecondPage.toString(),
                    style: const TextStyle(fontSize: 25.0,
                    color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            
        ],),
      ),
    );
  }
}