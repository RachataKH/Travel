import 'package:flutter/material.dart';
import 'package:mytravel/constant/color.dart';

class ProflieWidget extends StatelessWidget {
  const ProflieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const CircleAvatar(
        backgroundImage: AssetImage('image/Toon.jpg'),
        radius: 30,
      ),
      const Spacer(),
      Icon(
        Icons.menu,
        size: 25,
        color: primaryColors,
      )
    ]);
  }
}
