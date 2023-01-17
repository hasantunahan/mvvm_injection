import 'package:mvvm_injection/product/init/environment/presets/dev_environment_preset.dart';
import 'package:mvvm_injection/product/init/environment/presets/i_environment_preset.dart';
import 'package:mvvm_injection/product/init/environment/presets/prod_environment_preset.dart';

class EnvironmentPreset {
  EnvironmentPreset._init();
  static EnvironmentPreset? _instance;
  static EnvironmentPreset get i => instance;
  static EnvironmentPreset get instance {
    _instance ??= EnvironmentPreset._init();
    return _instance!;
  }

  static const String test = 'test';
  static const String dev = 'dev';
  static const String prod = 'prod';

  IEnvironmentPreset config = DevEnvironmentPreset();

  void initConfig(String environment) {
    config = _getConfig(environment);
  }

  IEnvironmentPreset _getConfig(String environment) {
    switch (environment) {
      case EnvironmentPreset.prod:
        return ProdEnvironmentPreset();
      default:
        return DevEnvironmentPreset();
    }
  }
}
