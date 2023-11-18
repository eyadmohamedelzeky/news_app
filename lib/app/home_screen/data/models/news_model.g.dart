// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => NewsModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$NewsModelItemImpl _$$NewsModelItemImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelItemImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      urlToImage: json['urlToImage'] as String?,
      url: json['url'] as String?,
    );
