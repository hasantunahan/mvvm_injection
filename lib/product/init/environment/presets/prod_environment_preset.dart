import 'package:mvvm_injection/product/init/environment/presets/i_environment_preset.dart';

class ProdEnvironmentPreset implements IEnvironmentPreset {
  @override
  String get baseUrl => 'https://pro';
}
