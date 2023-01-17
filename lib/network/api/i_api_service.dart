import 'package:dio/dio.dart';

abstract class IAPIService {
  Dio createDio();
}
