import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:new_app/app/home_screen/data/mappr/news_mapper.auto_mappr.dart';
import 'package:new_app/app/home_screen/data/models/news_model.dart';
import 'package:new_app/app/home_screen/domain/entities/news_entity.dart';

@AutoMappr([
  MapType<NewsModel, NewsEntity>(),
  MapType<NewsModelItem, NewsEntityItem>(),
])
class NewsMapper extends $NewsMapper {}
