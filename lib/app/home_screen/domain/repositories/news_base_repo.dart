import 'package:dartz/dartz.dart';
import 'package:new_app/app/home_screen/domain/entities/news_entity.dart';
import 'package:new_app/core/error_handler/failure.dart';

abstract interface class NewsBaseRepo {
  Future<Either<Failure, NewsEntity>> getNews();
}
