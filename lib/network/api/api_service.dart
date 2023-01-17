import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mvvm_injection/network/api/i_api_service.dart';
import 'package:mvvm_injection/product/init/environment/environment_preset.dart';

@LazySingleton(as: IAPIService)
class APIService implements IAPIService {
  @override
  Dio createDio() {
    return Dio(BaseOptions(
      baseUrl: EnvironmentPreset.instance.config.baseUrl,
      connectTimeout: 15000,
      // if you need header headers:
    ));
  }
}
