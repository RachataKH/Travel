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
          title: 'Forrest',
          color: primaryColors,
          icon: Icons.forest,
        ),
        SizedBox(
          width: 120,
        ),
        IconWidget(
            title: 'Mountain', color:primaryColors, icon: Icons.filter_hdr),
        SizedBox(
          width: 120,
        ),
        IconWidget(
            title: 'National Park', color:primaryColors, icon: Icons.fence),
        SizedBox(
          width: 120,
        ),
        IconWidget(
          title: 'Pools', color: primaryColors, icon: Icons.water_drop),
        SizedBox(
          width: 120,
        ),
        IconWidget(
          title: 'Ocean', color: primaryColors, icon: Icons.waves
          ),
      ],
    );
  }
}
