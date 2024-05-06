import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/constants/app_text_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                color: const Color(0xff0b0120),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Ден-соолук индекси(BMI)',
                              style: AppTextStyles.heightStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Жыйынтык',
                              style: AppTextStyles.heightStyle)),
                      Column(
                        children: [
                          const SizedBox(
                            height: 58,
                          ),
                          Container(
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  'Нормалдуу',
                                  style: TextStyle(
                                      color: Color(0xff08E82C),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                                Text(
                                  '24.2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 80,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  'Сиздин дене салмагыныз нормалдуу. Азаматсыз!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 3.4,
                                ),
                              ],
                            ),
                          ), 
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width, 38)),
                            onPressed: () {},
                            child: const Text(
                              'Кайра эсепте',
                              style: AppTextStyles.bodyStyle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        height: 80.0,
        color: Colors.red,
        child: const Center(
          child: Text(
            'CALCULATOR',
            style: AppTextStyles.heightStyle,
          ),
        ),
      ),
    );
  }
}
