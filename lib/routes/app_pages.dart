import 'package:baca_kuy/routes/app_routes.dart';
import 'package:baca_kuy/screen/detail/detail_binding.dart';
import 'package:baca_kuy/screen/detail/detail_screen.dart';
import 'package:baca_kuy/screen/home/home_binding.dart';
import 'package:baca_kuy/screen/home/home_screen.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static var pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: AppRoutes.DETAIL,
        page: () => DetailScreen(),
        binding: DetailBinding())
  ];
}
