import 'package:baca_kuy/screen/detail/detail_controller.dart';
import 'package:get/instance_manager.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() => DetailController());
  }
  
}