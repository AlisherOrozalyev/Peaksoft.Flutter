import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatefulWidget {
   const CardWidget({
    super.key,
  });


  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        padding: const EdgeInsets.only(left: 18.97, right: 48.29),
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
                const SizedBox(width: 13.8),
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
