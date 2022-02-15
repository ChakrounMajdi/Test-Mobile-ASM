import 'package:get/get.dart';
import 'package:test_mobile_asm/views/covid_list_view.dart';
import 'package:test_mobile_asm/views/forgot_password_view.dart';
import 'package:test_mobile_asm/views/login_view.dart';

class AppPages {
  static const LOGIN = '/login';
  static const FORGOT_PASSWORD = '/forgotpassword';
  static const COVID = '/covid';

  static const INITIAL = LOGIN;

  static final routes = [
    GetPage(
      name: LOGIN,
      page: () => LoginView(),
      // binding: LoginBinding(),
    ),
    GetPage(
      name: FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
    ),
    GetPage(
      name: COVID,
      page: () => CovidListView(),
    ),
  ];
}
