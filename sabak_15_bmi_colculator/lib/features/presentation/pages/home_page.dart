import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const Column(
        children: [
          SizedBox(
            width: 150,
            height: 177,
            child: Card(
              child: Column(children: [
                Text('data'),
              ]),
            ),
          ),
        ],
      ),
    );
  }



















  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Center(
        child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
