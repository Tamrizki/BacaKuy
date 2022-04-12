import 'package:audioplayers/audioplayers.dart';
import 'package:baca_kuy/models/ayat.dart';
import 'package:baca_kuy/provider/ayat_provider.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  List<AyatResponse> listAyat = [];
  bool isLoading = true;
  final isId = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setIdMode(){
    isId.value = (isId.value) ? false : true;
    update();
  }
  void fetchAyat(String noSurah) {
    AyatProvider().getListAyat(
      noSurah: noSurah,
      onSuccess: (dataSurah) {
        listAyat.clear();
        listAyat.addAll(dataSurah);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print('=====> error : ${error}');
      },
    );
  }
  void play(String url) async {
    int result = await AudioPlayer(mode: PlayerMode.LOW_LATENCY).play(url);
  }
}
