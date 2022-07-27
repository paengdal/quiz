import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_first/controller/firebase_auth_state.dart';
import 'package:quiz_first/model/user_model.dart';
import 'package:quiz_first/repo/user_network_repository.dart';
import 'package:quiz_first/util/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModelState extends ChangeNotifier {
  UserModel? _userModel;
  StreamSubscription<UserModel>? _currentStreamSub;
  UserModel? get userModel => _userModel;

  set userModel(UserModel? userModel) {
    _userModel = userModel;
    notifyListeners();
  }

  set currentStreamSub(StreamSubscription<UserModel> currentStreamSub) =>
      _currentStreamSub = currentStreamSub;

  clear() {
    if (_currentStreamSub != null) {
      _currentStreamSub!.cancel();
      _currentStreamSub = null;
      _userModel = null;
    }
  }
}
