import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/widgets/height_card.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/widgets/male_female_card.dart';

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
          Row(
            children: [
              MaleFemaleCard(),
              MaleFemaleCard(),
            ],
          ),
          HeightCard(),
            Row(
            children: [
              MaleFemaleCard(),
              MaleFemaleCard(),
            ],
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

