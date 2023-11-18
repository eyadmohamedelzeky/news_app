import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:new_app/app/home_screen/domain/entities/news_entity.dart';
import 'package:new_app/app/home_screen/domain/usecases/news_use_case.dart';
import 'package:new_app/core/base/base_use_case.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit({required this.newsUseCase}) : super(HomeScreenInitial());
  final NewsUseCase newsUseCase;
  Future<void> getNews() async {
    emit(HomeScreenLoading());
    final result = await newsUseCase.call(NoParams());
    result.fold(
      (l) {
        emit(HomeScreenError(message: l.toString()));
        debugPrint('the error is $l');
      },
      (r) {
        emit(HomeScreenLoaded(newsEntity: r));
        debugPrint('the loaded data is $r');
      },
    );
  }
}
