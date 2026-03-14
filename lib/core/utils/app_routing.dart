import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/views/login_view.dart';
import 'package:to_do_app/features/auth/presentation/views/singup_view.dart';
import 'package:to_do_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:to_do_app/features/onboarding/presentation/views/welcome_view.dart';

class AppRouting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingView.routeName:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case WelcomeView.routeName:
        return MaterialPageRoute(builder: (_) => WelcomeView());
      case LoginView.routeName:
        return MaterialPageRoute(builder: (_) => LoginView());
      case SingupView.routeName:
        return MaterialPageRoute(builder: (_) => SingupView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
