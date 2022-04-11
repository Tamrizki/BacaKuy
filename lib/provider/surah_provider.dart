import 'package:baca_kuy/service/api_request.dart';
import 'package:baca_kuy/utils/constants.dart';

import '../models/surah.dart';

class SurahProvider {
  void getSurahList({
    required Function(List<SurahResponse> surah) onSuccess, 
    required Function(dynamic error) onError
  }){
    ApiService(url: '$BASE_URL/data').get(
      onSuccess: (data) {
        onSuccess((data as List).map((dataJson) => SurahResponse.fromJson(dataJson)).toList());
      }, 
      onError: (error) => {if(onError != null) onError(error)}
    );
  }
}