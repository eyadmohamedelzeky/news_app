import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_model.freezed.dart';
part 'news_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class NewsModel with _$NewsModel {
  const factory NewsModel({
    List<NewsModelItem>? articles,
  }) = _NewsModel;
  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class NewsModelItem with _$NewsModelItem {
  const factory NewsModelItem({
    String? title,
    String? description,
    String? urlToImage,
    String? url,
  }) = _NewsModelItem;
  factory NewsModelItem.fromJson(Map<String, dynamic> json) =>
      _$NewsModelItemFromJson(json);
}
