import 'package:flutter/material.dart';
import 'package:mvvm_injection/configure_dependencies.dart';
import 'package:mvvm_injection/product/init/environment/environment_preset.dart';
import 'package:mvvm_injection/product/init/navigation/navigation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final environment = _setEnvironment();
  configureDependencies(environment: environment);
  runApp(
    const MvvmInjection(),
  );
}

String _setEnvironment() {
  // default environment `dev`
  // `dev` or `prod`
  // flutter run --dart-define=ENVIRONMENT=dev
  // flutter run --dart-define=ENVIRONMENT=prod
  // or
  // visual studio code or android studio define prod || dev environment create
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: EnvironmentPreset.dev,
  );
  EnvironmentPreset.instance.initConfig(environment);
  return environment;
}

class MvvmInjection extends StatelessWidget {
  const MvvmInjection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "MVVM Injectable Project",
      debugShowCheckedModeBanner: false,
      routerDelegate: NavigationService.instance.router.routerDelegate,
      routeInformationProvider:
          NavigationService.instance.router.routeInformationProvider,
      routeInformationParser:
          NavigationService.instance.router.routeInformationParser,
    );
  }
}
