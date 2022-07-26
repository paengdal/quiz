import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/controller/firebase_auth_controller.dart';
import 'package:quiz_first/view/screens/auth_screen.dart';
import 'package:quiz_first/view/widgets/rounded_avatar.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.fromLTRB(common_xl_gap, 0, common_xs_gap, 0),
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    RoundedAvatar(
                      avatarSize: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${FirebaseAuth.instance.currentUser!.email}',
                      // '${Get.find<FirebaseAuthController>().userModel.username}',
                      style: TextStyle(fontFamily: 'SDneoB', fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {
                        Get.find<FirebaseAuthController>().signOut();
                      },
                      icon: Icon(CupertinoIcons.escape),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: common_l_gap),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
