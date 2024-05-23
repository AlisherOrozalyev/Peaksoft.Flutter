import 'package:flutter/material.dart';

class WheatherDaysWidget extends StatelessWidget {
  const WheatherDaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                      color: Color(0xff313341),
                      fontSize: 13.8,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 100),
                Text(
                  'Tomorrow',
                  style: TextStyle(
                      color: Color(0xff313341),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 70),
                Row(
                  children: [
                    Text(
                      'Next 7 Days',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 13.8,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xff000000),
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
