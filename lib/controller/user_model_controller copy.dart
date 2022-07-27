import 'package:get/get.dart';
import 'package:quiz_first/model/user_model.dart';

class UserModelController extends GetxController {
  Rx<UserModel>? _userModel;
  // var _userModel = UserModel();

  Rx<UserModel>? get userModel => _userModel;

  set userModel(Rx<UserModel>? userModel) {
    _userModel = userModel;
  }
  // UserModel? _userModel;

  // UserModel? get userModel => _userModel;

  // set userModel(UserModel? userModel) {
  //   _userModel = userModel;
  // }
  // late Rx<UserModel> _userModel;

  // Rx<UserModel> get userModel => _userModel;

  // set userModel(Rx<UserModel> userModel) {
  //   _userModel = userModel;
  // }
}
