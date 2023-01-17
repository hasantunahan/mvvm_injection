import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_injection/product/init/navigation/navigation_route.dart';
import 'package:mvvm_injection/ui/splash/view/splash_view.dart';

class NavigationService {
  NavigationService._init();

  static NavigationService? _instance;

  static NavigationService get instance {
    return _instance ??= NavigationService._init();
  }

  BuildContext? get applicationContext => router.navigator?.context;
  final RouteObserver<ModalRoute<void>> routeObserver =
      RouteObserver<ModalRoute<void>>();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    observers: [routeObserver],
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: NavigationRoute.instance.splash,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
