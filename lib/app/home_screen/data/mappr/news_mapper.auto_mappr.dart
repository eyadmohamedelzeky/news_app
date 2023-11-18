// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../domain/entities/news_entity.dart' as _i3;
import '../models/news_model.dart' as _i2;

/// {@template package:new_app/app/home_screen/data/mappr/news_mapper.dart}
/// Available mappings:
/// - `NewsModel` → `NewsEntity`.
/// - `NewsModelItem` → `NewsEntityItem`.
/// {@endtemplate}
class $NewsMapper implements _i1.AutoMapprInterface {
  const $NewsMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.NewsModel>() ||
            sourceTypeOf == _typeOf<_i2.NewsModel?>()) &&
        (targetTypeOf == _typeOf<_i3.NewsEntity>() ||
            targetTypeOf == _typeOf<_i3.NewsEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.NewsModelItem>() ||
            sourceTypeOf == _typeOf<_i2.NewsModelItem?>()) &&
        (targetTypeOf == _typeOf<_i3.NewsEntityItem>() ||
            targetTypeOf == _typeOf<_i3.NewsEntityItem?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
      Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>((item) => _convert(item, canReturnNull: true));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:new_app/app/home_screen/data/mappr/news_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.NewsModel>() ||
            sourceTypeOf == _typeOf<_i2.NewsModel?>()) &&
        (targetTypeOf == _typeOf<_i3.NewsEntity>() ||
            targetTypeOf == _typeOf<_i3.NewsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$NewsModel_To__i3$NewsEntity((model as _i2.NewsModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.NewsModelItem>() ||
            sourceTypeOf == _typeOf<_i2.NewsModelItem?>()) &&
        (targetTypeOf == _typeOf<_i3.NewsEntityItem>() ||
            targetTypeOf == _typeOf<_i3.NewsEntityItem?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$NewsModelItem_To__i3$NewsEntityItem(
          (model as _i2.NewsModelItem?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.NewsEntity _map__i2$NewsModel_To__i3$NewsEntity(_i2.NewsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping NewsModel → NewsEntity failed because NewsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<NewsModel, NewsEntity> to handle null values during mapping.');
    }
    return _i3.NewsEntity(
        articles: model.articles
            ?.map<_i3.NewsEntityItem>(
                (value) => _map__i2$NewsModelItem_To__i3$NewsEntityItem(value))
            .toList());
  }

  _i3.NewsEntityItem _map__i2$NewsModelItem_To__i3$NewsEntityItem(
      _i2.NewsModelItem? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping NewsModelItem → NewsEntityItem failed because NewsModelItem was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<NewsModelItem, NewsEntityItem> to handle null values during mapping.');
    }
    return _i3.NewsEntityItem(
      title: model.title,
      description: model.description,
      urlToImage: model.urlToImage,
      url: model.url,
    );
  }
}
