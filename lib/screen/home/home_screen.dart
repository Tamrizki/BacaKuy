import 'package:baca_kuy/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import 'component/surat_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BacaKuy"),
      ),
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return (controller.isLoading)
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.listSurah.length,
                    itemBuilder: (context, index) => SuratItem(
                          surat: controller.listSurah[index],
                          onTap: () => Get.toNamed(
                            AppRoutes.DETAIL,
                            arguments: [
                              {"number": controller.listSurah[index].nomor},
                              {"surah": controller.listSurah[index].nama}
                            ],
                          ),
                        ));
          },
        ),
      ),
    );
  }
}
