import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/controller/user_model_state.dart';
import 'package:quiz_first/repo/user_network_repository.dart';
import 'package:quiz_first/util/logger.dart';
import 'package:quiz_first/view/screens/feed/quiz_detail_screen.dart';
import 'package:quiz_first/view/widgets/quiz_post.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.plus_app,
                      color: Colors.black87,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.ellipsis_circle,
                      color: Colors.black87,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.bell,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            QuizPost(),
          ],
        ),
      ),
    );
  }
}
