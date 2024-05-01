import 'package:flutter/material.dart';

class WightAge extends StatelessWidget {
  const WightAge({
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
            Text(
              'weight'.toUpperCase(),
            ),
            const Text('60'),
            const Row(
              children: [
             Icon(Icons.remove_circle),
             Icon(Icons.add_circle)
              ],
            )
          ],
        ),
      ),
    );
  }
}
