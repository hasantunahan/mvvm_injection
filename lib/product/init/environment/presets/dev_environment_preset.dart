import 'package:mvvm_injection/product/init/environment/presets/i_environment_preset.dart';

class DevEnvironmentPreset implements IEnvironmentPreset {
  @override
  String get baseUrl => 'https://reqres.in/api';

  @override
  String get env => "dev";
}
