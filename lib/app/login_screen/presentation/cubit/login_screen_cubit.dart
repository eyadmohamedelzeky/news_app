import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(LoginScreenInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> signInUser() async {
    try {
      emit(LoginScreenLoading());
      final auth = FirebaseAuth.instance;
      final UserCredential userCredential =
          await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(LoginScreenSuccess());

      debugPrint(
        "This Email is${userCredential.user!.email}",
      );
    } catch (e) {
      emit(LoginScreenError(message: e.toString()));
    }
  }
}
