import 'package:get/get.dart';
import 'package:tsukimon/models/user.dart';

class UserController extends GetxController {
  final Rx<UserModel> _userModel = UserModel().obs;
  RxBool isLoading = false.obs;

  UserModel get user => _userModel.value;

  set user(UserModel value) => _userModel.value = value;

  void clear() {
    _userModel.value = UserModel();
    isLoading.value = false;
  }
}