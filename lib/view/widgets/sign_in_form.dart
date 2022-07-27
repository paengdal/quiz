import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/constants/input_deco.dart';
import 'package:quiz_first/controller/firebase_auth_state.dart';
import 'package:quiz_first/util/logger.dart';
import 'package:get/get.dart';
import 'package:quiz_first/view/home_page.dart';
import 'package:quiz_first/view/widgets/or_divider.dart';
import 'package:extended_image/extended_image.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _pwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(common_l_gap),
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    decoration: textInputDeco('이메일'),
                    validator: (text) {
                      if (text!.isNotEmpty && text.contains('@')) {
                        return null;
                      } else {
                        return '정확한 이메일 주소를 입력해주세요';
                      }
                    },
                  ),
                  SizedBox(
                    height: common_xs_gap,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _pwController,
                    decoration: textInputDeco('비밀번호(3자리 이상)'),
                    validator: (text) {
                      if (text!.isNotEmpty && text.length > 2) {
                        return null;
                      } else {
                        return '패스워드를 확인해주세요';
                      }
                    },
                  ),
                  SizedBox(
                    height: common_xs_gap,
                  ),
                  BtnSmtLogin(
                    formKey: _formKey,
                    emailController: _emailController,
                    pwController: _pwController,
                    context: context,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '비밀번호 찾기',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  OrDivider(),
                  BtnLoginFB(),
                  SizedBox(
                    height: common_xs_gap,
                  ),
                  BtnLoginGG(),
                  SizedBox(
                    height: common_xs_gap,
                  ),
                  BtnLoginKaKao(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BtnSmtLogin extends StatelessWidget {
  const BtnSmtLogin({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController pwController,
    required BuildContext context,
  })  : _formKey = formKey,
        _emailController = emailController,
        _pwController = pwController,
        context = context,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _pwController;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size.fromHeight(
            50,
          ),
          // 버튼 자체를 Container로 감싸고 height를 50으로 줘도 동일한 결과를 보임
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(common_xxxl_gap),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.teal),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Get.off(() => HomePage());
          context.read<FirebaseAuthState>().login(
              email: _emailController.text,
              password: _pwController.text,
              context: context);
        }
      },
      child: Text(
        '로그인',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class BtnLoginKaKao extends StatelessWidget {
  const BtnLoginKaKao({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid),
        ),
        minimumSize: MaterialStateProperty.all(
          Size.fromHeight(
            50,
          ),
          // 버튼 자체를 Container로 감싸고 height를 50으로 줘도 동일한 결과를 보임
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(common_xxxl_gap),
          ),
        ),
      ),
      onPressed: () {},
      icon: ExtendedImage.asset(
        'assets/imgs/kakao_logo.png',
        width: 30,
        height: 30,
      ),
      label: Text(
        '카카오톡으로 로그인',
        style: TextStyle(
            // color: Color(0xFF3a75eb),
            color: Colors.black),
      ),
    );
  }
}

class BtnLoginGG extends StatelessWidget {
  const BtnLoginGG({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid),
        ),
        minimumSize: MaterialStateProperty.all(
          Size.fromHeight(
            50,
          ),
          // 버튼 자체를 Container로 감싸고 height를 50으로 줘도 동일한 결과를 보임
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(common_xxxl_gap),
          ),
        ),
      ),
      onPressed: () {},
      icon: ExtendedImage.asset(
        'assets/imgs/google_logo_500.png',
        width: 30,
        height: 30,
      ),
      label: Text(
        '구글 계정으로 로그인',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

class BtnLoginFB extends StatelessWidget {
  const BtnLoginFB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid),
        ),
        minimumSize: MaterialStateProperty.all(
          Size.fromHeight(
            50,
          ),
          // 버튼 자체를 Container로 감싸고 height를 50으로 줘도 동일한 결과를 보임
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(common_xxxl_gap),
          ),
        ),
      ),
      onPressed: () {
        context.watch()<FirebaseAuthState>().loginWithFacebook(context);
      },
      icon: ExtendedImage.asset(
        'assets/imgs/f_logo_144.png',
        width: 30,
        height: 30,
      ),
      label: Text(
        '페이스북으로 로그인',
        style: TextStyle(
            // color: Color(0xFF3a75eb),
            color: Colors.black),
      ),
    );
  }
}
