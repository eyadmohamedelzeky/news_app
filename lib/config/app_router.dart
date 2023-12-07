import 'package:go_router/go_router.dart';
import 'package:new_app/app/home_screen/presentation/screens/home_screen.dart';
import 'package:new_app/app/login_screen/presentation/screens/login_screen.dart';
import 'package:new_app/app/register_screen/presentation/screens/register_screen.dart';
import 'package:new_app/app/splash_screen/presentation/screens/splash_screen.dart';
import 'package:new_app/config/routes_names.dart';

final router = GoRouter(
  initialLocation: AppRouteName.splashScreen,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRouteName.splashScreen,
      name: AppRouteName.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRouteName.homeScreen,
      name: AppRouteName.homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRouteName.loginScreen,
      name: AppRouteName.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRouteName.registerScreen,
      name: AppRouteName.registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
