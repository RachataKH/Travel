import 'package:flutter/material.dart';
import 'package:mytravel/constant/color.dart';

class SearchABar extends StatelessWidget {
  const SearchABar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          hintText: 'Spot Area',
          hintStyle: TextStyle(color: secondaryColors.withOpacity(0.5)),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(
            Icons.search,
            size: 25,
            color: secondaryColors,
          )),
    );
  }
}
