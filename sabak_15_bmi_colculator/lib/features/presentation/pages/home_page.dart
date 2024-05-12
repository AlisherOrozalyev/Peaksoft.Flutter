import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/domain/my_diolog.dart';
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
  int height = 180;
  int weight = 60;
  int age = 25;
  bool isMale = false;

  void maleFemaleFun() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
   
 

    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemaleCard(
                    text: 'male',
                    icon: Icons.male,
                    onTap: () => maleFemaleFun(),
                    color: isMale ? Colors.white : Colors.blueAccent),
                MaleFemaleCard(
                    text: 'female',
                    icon: Icons.female,
                    onTap: () => maleFemaleFun(),
                    color: isMale ? Colors.blueAccent : Colors.white),
              ],
            ),
            HeightCard(
              text: height.toString(),
              widget: Slider(
                  activeColor: Colors.blueAccent,
                  inactiveColor: Colors.white24,
                  thumbColor: Colors.redAccent,
                  min: 0,
                  max: 250,
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height = value.toInt();
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WightAgeCard(
                  text: 'weight',
                  kemituu: () {
                    setState(() {
                      weight--;
                    });
                  },
                  koshuu: () {
                    setState(() {
                      weight++;
                    });
                  },
                  text1: weight.toString(),
                ),
                WightAgeCard(
                  text: 'age',
                  kemituu: () {
                    setState(() {
                      age--;
                    });
                  },
                  koshuu: () {
                    setState(() {
                      age++;
                    });
                  },
                  text1: age.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
        final result = weight / ((height / 100) * (height / 100));

        if (result < 18.5 && result > 0) {
          print('Салмактын жоктугу');
          showMyDiolog(context,'Салмактын жоктугу' , result.roundToDouble(), width);
        } else if (result > 18.5 && result < 24.9) {
          print('Нормалдуу');
                    showMyDiolog(context,'Нормалдуу' , result.roundToDouble(), width);

        } else if (result > 25 && result < 30) {
          print('Ашыкча салмак');
        showMyDiolog(context,'Ашыкча салмак' , result.roundToDouble(), width);

        } else if (result > 30 && result < 35) {
          print('Семируу');
        showMyDiolog(context,'Семируу' , result.roundToDouble(), width);

        } else {
          print('Ден-соолукту кара');
       showMyDiolog(context,'Ден-соолукту кара' , result.roundToDouble(), width);

          
        }
      }),
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
