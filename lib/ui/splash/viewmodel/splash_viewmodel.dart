import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'splash_viewmodel.g.dart';

@LazySingleton(as: ISplashViewModel)
class SplashViewModel = ISplashViewModel with _$SplashViewModel;

abstract class ISplashViewModel with Store {
}
