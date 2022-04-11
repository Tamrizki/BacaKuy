import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './detail_controller.dart';
import 'component/ayat_item.dart';

class DetailScreen extends StatelessWidget {
  final controller = Get.find<DetailController>();
  final List<bool> isSelected = [];
  dynamic argumentData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print("${argumentData}");
    controller.fetchAyat(argumentData[0]["number"]);
    return Scaffold(
      appBar: detailAppBar(),
      body: SafeArea(child: GetBuilder<DetailController>(
        builder: (_) {
          return Container(
            child: ListView.builder(
              itemCount: controller.listAyat.length,
              itemBuilder: (context, index) => AyatItem(
                ayat: controller.listAyat[index],
                isId: controller.isId.value,
              ),
            ),
          );
        },
      )),
    );
  }

  AppBar detailAppBar() {
    return AppBar(
      title: Text('${argumentData[1]["surah"]}'),
      actions: [
        GestureDetector(
          onTap: () => controller.setIdMode(),
          child: Obx(
            () => Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color:
                        (controller.isId.value) ? Colors.white : Colors.grey,
                    width: 5.0,
                  )),
              child: Text(
                'ID',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                        (controller.isId.value) ? Colors.white : Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}

