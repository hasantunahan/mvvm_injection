import 'package:mvvm_injection/product/init/manager/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderManager {
  ProviderManager._init();
  static ProviderManager? _instance;
  static ProviderManager get instance {
    _instance ??= ProviderManager._init();
    return _instance!;
  }

  List<SingleChildWidget> list = [
    ChangeNotifierProvider(
      create: (context) {
        return ThemeProvider();
      },
    ),
  ];
}
