import 'package:flutter/material.dart';
import 'package:quiz_first/view/widgets/sign_in_form.dart';
import 'package:quiz_first/view/widgets/sign_up_form.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget signUpForm = SignUpForm();
  Widget signInForm = SignInForm();
  Widget? currentWidget;

  @override
  void initState() {
    if (currentWidget == null) currentWidget = signUpForm;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: currentWidget,
              switchInCurve: Curves.easeInOut,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Colors.grey[200]!,
                    ),
                  ),
                ),
                height: 40,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (currentWidget is SignUpForm) {
                        currentWidget = signInForm;
                      } else {
                        currentWidget = signUpForm;
                      }
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      text: (currentWidget is SignInForm)
                          ? '아직 계정이 없으신가요?'
                          : '이미 가입된 계정이 있습니다.',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                      children: [
                        TextSpan(
                          text: (currentWidget is SignInForm)
                              ? '  회원가입'
                              : '  로그인',
                          style: TextStyle(
                            color: Colors.blue,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
