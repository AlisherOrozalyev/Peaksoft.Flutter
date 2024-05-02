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
                color:  const Color(0xff0b0120),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.arrow_back,
                        color: Colors.white,
                        size: 32,
                       ),
                        
                        Text('Ден-соолук индекси(BMI)',
                            style: AppTextStyles.heightStyle),
                      ],
                    ),
                    const Text('Жыйынтык', style: AppTextStyles.heightStyle),
                    Column(
                      children: [
                        const Text(
                          'Нормалдуу',
                          style: TextStyle(
                              color: Color(0xff08E82C),
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          '24.2',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Сиздин дене салмагыныз нормалдуу. Азаматсыз!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        ElevatedButton(
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
