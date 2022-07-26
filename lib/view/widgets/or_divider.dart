import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          thickness: 1,
          height: 51,
        ),
        Container(
          color: Colors.white,
          height: 3,
          width: 60,
        ),
        Text(
          '또는',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
