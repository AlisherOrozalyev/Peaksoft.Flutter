
import 'package:flutter/material.dart';

class TemperatureViewWidget extends StatelessWidget {
  const TemperatureViewWidget({
    super.key, required this.temp, required this.text, required this.icon,
  });
  final String text;
  final double temp;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(icon),
         Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    text,
                      style: const TextStyle(
                        color: Color(0xff303345),
                        fontSize: 74.17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      " \u2103",
                      style: TextStyle(
                        color: Color(0xff303345),
                        fontSize: 27.7,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    
                    'Rainy',
                    style: TextStyle(
                      color: Color(0xff303345),
                      fontSize: 24.17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
