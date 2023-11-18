part of 'home_screen_cubit.dart';

abstract class HomeScreenState {
  const HomeScreenState();
}

class HomeScreenInitial extends HomeScreenState {}

class HomeScreenLoading extends HomeScreenState {}

class HomeScreenLoaded extends HomeScreenState {
  final NewsEntity newsEntity;
  const HomeScreenLoaded({required this.newsEntity});
}

class HomeScreenError extends HomeScreenState {
  final String message;
  const HomeScreenError({required this.message});
}
