import 'package:audioplayers/audioplayers.dart';
import 'package:baca_kuy/models/surah.dart';
import 'package:baca_kuy/provider/surah_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<SurahResponse> listSurah = [];
  bool isLoading = true;
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  int surahPlayed = 0;

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

  void play(String url) async{
    int result = await audioPlayer.play(url);
    isPlaying = (result == 1) ? true : false;
    update();
  }

  void pause() async{
    int result = await audioPlayer.pause();
    isPlaying = (result == 1) ? false : true;
    update();
  }

  void onTapAudio(int numberSurah, String url) {
    print('surahPlayed : $surahPlayed = $numberSurah and isPlaying : $isPlaying');
    if(numberSurah == surahPlayed){
      print('pause');
      (isPlaying) ? pause() : play(url);
    } else {
      print('play');
      play(url);
      surahPlayed = numberSurah;
      update();
    }
  }
}
