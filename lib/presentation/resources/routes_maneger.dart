import 'package:flutter/material.dart';

import '../../presentation/splash/splash.dart';
import '../../presentation/forgot_password/forgot_password.dart';
import '../../presentation/login/login.dart';
import '../../presentation/main/main_view.dart';
import '../../presentation/onboarding/onboarding.dart';
import '../../presentation/register/register.dart';
import '../../presentation/resources/string_maneger.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
  static const String forgotPasswordRoute = '/forgotPassword';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      default:
        return UnDefinedRoute();
    }
  }

  // ignore: non_constant_identifier_names
  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
