import 'package:flutter/material.dart';

class MyProgressIndicator extends StatelessWidget {
  const MyProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.teal,
        ),
      ),
    );
  }
}
