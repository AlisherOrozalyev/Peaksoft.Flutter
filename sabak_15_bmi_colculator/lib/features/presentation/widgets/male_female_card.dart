import 'package:flutter/material.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        child: Column(
          
          children: [
          const Icon(
            Icons.male,
            size: 70,
          ),
          Text(
            'male'.toUpperCase(),
            style: const TextStyle(
                color: Color(0xffCECCD2),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ]),
      ),
    );
  }
}
