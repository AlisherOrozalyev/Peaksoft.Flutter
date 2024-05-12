 import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/constants/app_text_styles.dart';

Future<void> showMyDiolog(BuildContext context,String text, double result, double width) async {
         return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            color: const Color(0xff0b0120),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Card(
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                                color: Colors.white, size: 25),
                            SizedBox(width: 15),
                            Text(
                              'Сиздин ден соолук индексиниз BMI',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Жыйынтык', style: AppTextStyles.heightStyle),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child:  Column(
                          children: [
                            Text(
                             text,
                              style: const TextStyle(
                                  color: Color(0xff08E82C),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 36,
                            ),
                             Text(
                              result.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const Text(
                              'Сиздин дене салмагыныз нормалдуу. Азаматсыз!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            const CircularProgressIndicator.adaptive(),
                            const SizedBox(
                              height: 3.4,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 38),
                        ),
                        onPressed: () => Navigator.pop(context),
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
    }