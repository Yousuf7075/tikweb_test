import 'package:flutter/material.dart';
import 'package:tikweb_test/presentation/screens/sigin_screen/signin_screen.dart';
import 'package:tikweb_test/presentation/screens/signup_screen/signup_screen.dart';
import '../../core/exceptions/route_exception.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../screens/welcome_screen/welcome_screen.dart';

class AppRouter {
  static const String splashScreen = '/';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String userListScreen = '/userListScreen';
  static const String userProfileScreen = '/userProfileScreen';
  static const String addUserScreen = '/addUserScreen';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );
      case signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
