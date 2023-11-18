import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/app/home_screen/data/datasources/news_base_remote.dart';
import 'package:new_app/app/home_screen/data/models/news_model.dart';
import 'package:new_app/core/api/api_consumer.dart';
import 'package:new_app/core/api/app_api.dart';

@LazySingleton(as: NewsBaseRemote)
class NewsRemoteImplementation implements NewsBaseRemote {
  final ApiConsumer client;

  NewsRemoteImplementation({required this.client});
  @override
  Future<NewsModel> getNews() async {
    final result = await client.get(
      path: AppApi.url,
    );
    final List jsonResponse = result['articles'] as List<dynamic>;
    debugPrint("The jsonResponse is $jsonResponse");
    debugPrint("The result is $result");

    return NewsModel.fromJson(result as Map<String, dynamic>);
    // return NewsModel.fromJson(
    //   jsonResponse as Map<String, dynamic>,
    // );
  }
}
