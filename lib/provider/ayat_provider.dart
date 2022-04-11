import 'package:baca_kuy/service/api_request.dart';
import 'package:baca_kuy/utils/constants.dart';

import '../models/ayat.dart';
class AyatProvider{
  
  void getListAyat({
    required String noSurah,
    required Function(List<AyatResponse> ayat) onSuccess, 
    required Function(dynamic error) onError
  }){
    ApiService(url: '$BASE_URL/surat/$noSurah').get(
      onSuccess: ((data) => {
        onSuccess((data as List).map((dataJson) => AyatResponse.fromJson(dataJson)).toList())
      }), 
      onError: (e) => {if (onError != null) onError(e) } 
    );
  }

}