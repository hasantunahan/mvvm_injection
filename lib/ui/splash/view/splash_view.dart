import 'package:flutter/material.dart';
import 'package:mvvm_injection/product/init/environment/environment_preset.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const FlutterLogo(
                size: 128,
              ),
              Text(EnvironmentPreset.instance.config.baseUrl),
            ],
          ),
        ),
      ),
    );
  }
}
