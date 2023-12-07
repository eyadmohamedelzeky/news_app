import 'package:flutter/material.dart';
import 'package:new_app/core/localization/localization.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.localization.app_bar_title_part_one,
          style: const TextStyle(color: Colors.black),
        ),
        Text(
          context.localization.app_bar_title_part_two,
          style: const TextStyle(color: Colors.amber),
        ),
      ],
    );
  }
}
