import 'package:baca_kuy/models/surah.dart';
import 'package:baca_kuy/provider/surah_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<SurahResponse> listSurah = [];
  bool isLoading = true;

  @override
  void onInit() {
    SurahProvider().getSurahList(
        onSuccess: (dataSurah) {
          listSurah.addAll(dataSurah);
          isLoading = false;
          update();
        },
        onError: (error) {
          isLoading = false;
          update();
          print("errorr : $error");
        });

    super.onInit();
  }
}
