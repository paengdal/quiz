import 'package:flutter/material.dart';

class QuizDetailScreen extends StatelessWidget {
  const QuizDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text('퀴즈 상세 페이지'),
      ),
    );
  }
}
