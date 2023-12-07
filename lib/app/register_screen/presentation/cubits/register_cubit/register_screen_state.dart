part of 'register_screen_cubit.dart';

abstract class RegisterScreenState {
  const RegisterScreenState();
}

class RegisterScreenInitial extends RegisterScreenState {}

class RegisterScreenLoading extends RegisterScreenState {}

class RegisterScreenSuccess extends RegisterScreenState {}

class RegisterFailure extends RegisterScreenState {
  final String messageError;
  const RegisterFailure({required this.messageError});
}
