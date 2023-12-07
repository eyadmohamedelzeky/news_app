import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
  bool isChanged = false;
  Locale? localelanguage;
  void changeLanguage(bool value) {
    isChanged = value;
    if (isChanged) {
      emit(LanguageScuessEn());
      localelanguage = const Locale('en');
      debugPrint('The value of isChanged is $isChanged');
      isChanged = false;
    } else {
      emit(LanguageScuessAr());
      localelanguage = const Locale('ar');
      
    }
  }
}
