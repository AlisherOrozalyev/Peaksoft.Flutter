import 'package:flutter/material.dart';

class CityNameWidget extends StatelessWidget {
  const CityNameWidget({
    super.key, required this.name,
  });
final String name;
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Bishkek,\nKyrgyzstan',
            style: TextStyle(
                color: Color(0xff313341),
                fontSize: 34.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Tue, Jun 30',
            style: TextStyle(
                color: Color(0xff313341),
                fontSize: 15.52,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
