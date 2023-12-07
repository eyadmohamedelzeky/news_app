import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'register_screen_state.dart';

class RegisterScreenCubit extends Cubit<RegisterScreenState> {
  RegisterScreenCubit() : super(RegisterScreenInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> registerUser() async {
    try {
      emit(RegisterScreenLoading());
      final auth = FirebaseAuth.instance;
      final UserCredential userCredential =
          await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(RegisterScreenSuccess());

      debugPrint(
        "This Email is${userCredential.user!.email}",
      );
    } catch (e) {
      emit(RegisterFailure(messageError: e.toString()));
      debugPrint('The Error is $e');
    }
  }
}
