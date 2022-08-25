import 'package:get/get.dart';
import 'package:paidwik/Screen/login.dart';
import 'package:paidwik/Screen/signup.dart';
import 'package:paidwik/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.loging,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.sigUp,
      page: () => const SignUpScreen(),
    ),
  ];
}
