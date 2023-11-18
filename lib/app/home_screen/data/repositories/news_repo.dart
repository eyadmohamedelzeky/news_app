import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/app/home_screen/data/datasources/news_base_remote.dart';
import 'package:new_app/app/home_screen/data/mappr/news_mapper.dart';
import 'package:new_app/app/home_screen/domain/entities/news_entity.dart';
import 'package:new_app/app/home_screen/domain/repositories/news_base_repo.dart';
import 'package:new_app/core/error_handler/failure.dart';

@LazySingleton(as: NewsBaseRepo)
class NewsRepo implements NewsBaseRepo {
  final NewsBaseRemote newsBaseRemote;

  NewsRepo({required this.newsBaseRemote});

  @override
  Future<Either<Failure, NewsEntity>> getNews() async {
    try {
      final result = await newsBaseRemote.getNews();
      return Right(NewsMapper().convert(result));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
