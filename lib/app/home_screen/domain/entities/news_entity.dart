import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class NewsEntity with _$NewsEntity {
  const factory NewsEntity({
    List<NewsEntityItem>? articles,
  }) = _NewsEntity;
}

@Freezed(fromJson: false, toJson: false)
class NewsEntityItem with _$NewsEntityItem {
  const factory NewsEntityItem({
    String? title,
    String? description,
    String? urlToImage,
    String? url,
  }) = _NewsEntityItem;
}
