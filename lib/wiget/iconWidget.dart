import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.title,
    required this.color,
    required this.icon,
  });

  final String title;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.tealAccent.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          height: 60,
          width: 60,
          padding: EdgeInsets.all(0.0),
          child: Icon(
            icon,
            size: 30,
            color: color,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
              color: color, fontSize: 20, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
