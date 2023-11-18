import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/app/home_screen/domain/entities/news_entity.dart';
import 'package:new_app/app/home_screen/domain/repositories/news_base_repo.dart';
import 'package:new_app/core/base/base_use_case.dart';
import 'package:new_app/core/error_handler/failure.dart';

@lazySingleton
class NewsUseCase implements BaseUseCase<NewsEntity, NoParams> {
  final NewsBaseRepo newsBaseRepo;

  NewsUseCase({required this.newsBaseRepo});

  @override
  Future<Either<Failure, NewsEntity>> call(NoParams params) {
    return newsBaseRepo.getNews();
  }
}
