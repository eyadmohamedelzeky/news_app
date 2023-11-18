import 'package:new_app/app/home_screen/data/models/news_model.dart';

abstract interface class NewsBaseRemote {
  Future<NewsModel> getNews();
}
