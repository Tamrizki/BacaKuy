import 'package:dio/dio.dart';

class ApiService {
  final String url;
  final Map<String, dynamic>? data;

  ApiService({
    required this.url,
    this.data,
  });

  Dio _dio() {
    return Dio();
  }

  void get({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio().get(this.url, queryParameters: this.data).then((value) {
      if (onSuccess != null) onSuccess(value.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
