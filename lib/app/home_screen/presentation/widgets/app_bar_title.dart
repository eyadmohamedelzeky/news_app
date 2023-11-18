import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News ',
          style: TextStyle(color: Colors.black),
        ),
        Text(
          'Clould',
          style: TextStyle(color: Colors.amber),
        ),
      ],
    );
  }
}
