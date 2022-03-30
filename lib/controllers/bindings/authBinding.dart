import 'package:get/get.dart';
import 'package:tsukimon/controllers/authController.dart';
import 'package:tsukimon/controllers/userController.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.put<UserController>(UserController(), permanent: true);
  }
}