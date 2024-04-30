import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 176,
      child: Card(
        child: Column(
          children: [
            Text('Height'.toUpperCase()),
            const Text('10'),
            const Text('cm'),
            Slider(
              min: 0,
              max: 150,
              value: 75,
             onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
