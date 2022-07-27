import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/controller/firebase_auth_state.dart';
import 'package:quiz_first/controller/user_model_state.dart';
import 'package:quiz_first/view/screens/auth_screen.dart';
import 'package:quiz_first/view/widgets/rounded_avatar.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
                    Column(
                      children: [
                        Text(
                          // '${FirebaseAuth.instance.currentUser!.email}',
                          '${(context.watch<UserModelState>().userModel == null) ? "userModel is null" : context.watch<UserModelState>().userModel!.username}',
                          style: TextStyle(fontFamily: 'SDneoB', fontSize: 20),
                        ),
                        Text('${FirebaseAuth.instance.currentUser!.email}'),
                      ],
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {
                        // context.read<FirebaseAuthState>().signOut();
                        Provider.of<FirebaseAuthState>(context, listen: false)
                            .signOut();
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
