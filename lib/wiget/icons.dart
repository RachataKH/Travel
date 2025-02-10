import 'package:flutter/material.dart';
import 'package:mytravel/constant/color.dart';
import 'package:mytravel/wiget/iconWidget.dart';

class IconTab extends StatelessWidget {
  const IconTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconWidget(
          title: 'Forest',
          color: forestColor,
          icon: Icons.forest,
        ),
        SizedBox(
          width: 120,
        ),
        IconWidget(title: 'Coast', color: riverColor, icon: Icons.water_drop),
        SizedBox(
          width: 120,
        ),
        IconWidget(
            title: 'Mountain', color: mountainColor, icon: Icons.filter_hdr),
        SizedBox(
          width: 120,
        ),
        IconWidget(
            title: 'Volcano',
            color: volcanoColor,
            icon: Icons.local_fire_department),
        SizedBox(
          width: 120,
        ),
        IconWidget(title: 'Ocean', color: oceanColor, icon: Icons.waves),
      ],
    );
  }
}
