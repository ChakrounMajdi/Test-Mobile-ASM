import 'package:get/get.dart';
import 'package:test_mobile_asm/controller/covid_list_controller.dart';
import 'package:test_mobile_asm/controller/forgot_password_controller.dart';
import 'package:test_mobile_asm/controller/login_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => CovidListController(), fenix: true);
    Get.lazyPut(() => ForgotPasswordController(), fenix: true);
  }
}
