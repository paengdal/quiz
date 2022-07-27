import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_first/controller/firebase_auth_state.dart';
import 'package:quiz_first/controller/user_model_state.dart';
import 'package:quiz_first/model/user_model.dart';
import 'package:quiz_first/repo/user_network_repository.dart';
import 'package:quiz_first/util/logger.dart';
import 'package:quiz_first/view/screens/auth_screen.dart';
import 'package:quiz_first/view/screens/feed_screen_old.dart';
import 'package:logger/logger.dart';
import 'package:quiz_first/view/home_page.dart';
import 'package:quiz_first/view/home_page_get.dart';
import 'package:quiz_first/view/widgets/my_progress_indicator.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(
              child: Center(
                child: Text('Something went wrong. Plz try again later.'),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MyApp();
          }

          return CircularProgressIndicator();
        });
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Widget? currentWidget;
  FirebaseAuthState _firebaseAuthState = FirebaseAuthState();

  @override
  Widget build(BuildContext context) {
    _firebaseAuthState.watchAuthChange();
//중요!!!!! 반드시 있어야 한다!!!!! 없으면 회원가입/로그인 버튼을 눌러도 반응이 없음.

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FirebaseAuthState>.value(
            value: _firebaseAuthState),
        ChangeNotifierProvider<UserModelState>(
          create: (_) => UserModelState(),
        ),
      ],
      child: GetMaterialApp(
        title: 'Quiz App',
        theme: ThemeData(
            fontFamily: 'SDneoL',
            primarySwatch: createMaterialColor(
              Color(0xFF000000),
            ),
            textTheme: TextTheme(button: TextStyle(fontSize: 16))),
        home: Consumer<FirebaseAuthState>(
            builder: (context, firebaseAuthState, child) {
          switch (firebaseAuthState.firebaseAuthStatus) {
            case FirebaseAuthStatus.signout:
              _clearUserModel(context);
              currentWidget = AuthScreen();
              break;
            case FirebaseAuthStatus.signin:
              _initUserModel(firebaseAuthState, context);
              currentWidget = HomePage();
              break;
            default:
              currentWidget = MyProgressIndicator();
            // currentWidget = CircularProgressIndicator(
            //   color: Colors.white,
            // );
          }

          return AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            // switchInCurve: Curves.easeInOutBack,
            // switchOutCurve: Curves.easeInOut,
            child: currentWidget,
          );
        }),
      ),
    );
  }

  void _initUserModel(
      FirebaseAuthState firebaseAuthState, BuildContext context) {
    UserModelState userModelState =
        Provider.of<UserModelState>(context, listen: false);

    userNetworkRepository
        .getUserModelStream(firebaseAuthState.user.uid)
        .listen((usrMl) {
      userModelState.userModel = usrMl;
    });
  }

  void _clearUserModel(BuildContext context) {
    UserModelState userModelState =
        Provider.of<UserModelState>(context, listen: false);
    userModelState.clear();
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
