import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        padding: EdgeInsets.only(left: 18.97, right: 48.29),
        height: 45,
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.32),
          border: Border.all(color: Colors.white, width: 0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Card(
                  child: SvgPicture.asset(
                    'assets/svg_images/umbrella.svg',
                    width: 45,
                    height: 35,
                  ),
                ),
                SizedBox(width: 13.8),
                const Text(
                  'RainFall',
                  style: TextStyle(
                      color: Color(0xff303345),
                      fontSize: 12.7,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const Text(
              '3cm',
              style: TextStyle(
                  color: Color(0xff303345),
                  fontSize: 12.7,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
