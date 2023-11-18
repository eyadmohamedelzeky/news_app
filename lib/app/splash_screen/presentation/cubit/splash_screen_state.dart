part of 'splash_screen_cubit.dart';

abstract class SplashScreenState {
  const SplashScreenState();
}

class SplashScreenInitial extends SplashScreenState {}

class SplashScreenLoading extends SplashScreenState {}

class SplashScreenLoaded extends SplashScreenState {}
