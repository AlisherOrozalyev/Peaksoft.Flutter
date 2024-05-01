import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/constants/app_text_styles.dart';

class WightAge extends StatelessWidget {
  const WightAge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        shadowColor: Colors.white,
        color: const Color(0xff0b0120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'weight'.toUpperCase(),
              style: AppTeaxtStyle.bodyStyle,
            ),
            const Text(
              '60',
              style: AppTeaxtStyle.numStyle,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.remove_circle,
                  color: Color(0xff5C5858),
                  size: 45,
                ),
                Icon(
                  Icons.add_circle,
                  color: Color(0xff5C5858),
                  size: 45,
                )
              ],
            )
          ],
        ),
      ),
      
    );
    
  }
}
