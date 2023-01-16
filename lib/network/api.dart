import 'package:dio/dio.dart';

class API {
  API._init();
  static API? _instance;
  static API get instance {
    return _instance ??= API._init();
  }

  final baseURL = "https:xxx";

  Dio createDio() {
    return Dio(BaseOptions(
      baseUrl: baseURL,
      connectTimeout: 15000,
      // if you need header headers:
    ));
  }
}
