import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
   const CardWidget({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
  });
  final String image;
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding:  const EdgeInsets.only(left: 18.97, right: 48.29),
        height: 55,
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.32),
          border: Border.all(color: Colors.white, width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Card(
                  child: SvgPicture.asset(
                    (image),
                    width: 45,
                    height: 35,
                  ),
                ),
                 const SizedBox(width: 13.8),
                 Text(
                  text,
                  style: const TextStyle(
                      color: Color(0xff303345),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
             Text(
              text1,
              style: const TextStyle(
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
