import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_colculator/features/presentation/constants/app_text_styles.dart';

class WightAgeCard extends StatelessWidget {
  const WightAgeCard({
    super.key, required this.text, this.koshuu, this.kemituu, required this.text1,
  });

final String text;
final void Function()? koshuu;
final void Function()? kemituu;
final String text1;

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
              text.toUpperCase(),
              style: AppTextStyles.bodyStyle,
            ),
             Text(
              text1.toString(),
              style: AppTextStyles.numStyle,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: kemituu,
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Color(0xffffffff),
                    size: 45,
                  ),
                ),
                IconButton(
                  onPressed: koshuu,
                  icon: const Icon(
                    Icons.add_circle,
                    color: Color(0xffffffff),
                    size: 45,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    );
    
  }
}
