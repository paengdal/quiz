import 'package:get/get.dart';
import 'package:quiz_first/model/user_model.dart';

class UserModelController extends GetxController {
  late Rx<UserModel> _userModel;

  Rx<UserModel> get userModel => _userModel;

  set userModel(Rx<UserModel> userModel) {
    _userModel = userModel;
  }
}
