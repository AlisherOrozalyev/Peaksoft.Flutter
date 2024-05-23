
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TemperatureViewWidget extends StatelessWidget {
  const TemperatureViewWidget({
    super.key, required this.temp,
  });
  final double temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/svg_images/cludy.svg'),
        const Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '19',
                      style: TextStyle(
                        color: Color(0xff303345),
                        fontSize: 74.17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      " \u2103",
                      style: TextStyle(
                        color: Color(0xff303345),
                        fontSize: 27.7,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
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
