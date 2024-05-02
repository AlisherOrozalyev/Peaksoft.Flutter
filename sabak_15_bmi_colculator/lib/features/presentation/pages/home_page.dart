import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/widgets/caltulate_button.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/widgets/height_card.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/widgets/male_female_card.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/widgets/weight_age_card.dart';

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
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemaleCard(text: 'male', icon: Icons.male,),
                MaleFemaleCard(text: 'female', icon: Icons.female,),
              ],
            ),
            const HeightCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              WightAgeCard(text: 'weight',
                kemituu: (){},
                koshuu: (){}),
                
              WightAgeCard(text: 'weight',
                kemituu: (){},
                koshuu: (){}),
                

              ],
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
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
