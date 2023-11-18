// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  List<NewsModelItem>? get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call({List<NewsModelItem>? articles});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsModelItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsModelItem>? articles});
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_$NewsModelImpl(
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsModelItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$NewsModelImpl with DiagnosticableTreeMixin implements _NewsModel {
  const _$NewsModelImpl({final List<NewsModelItem>? articles})
      : _articles = articles;

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  final List<NewsModelItem>? _articles;
  @override
  List<NewsModelItem>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsModel(articles: $articles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsModel'))
      ..add(DiagnosticsProperty('articles', articles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel({final List<NewsModelItem>? articles}) =
      _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  List<NewsModelItem>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsModelItem _$NewsModelItemFromJson(Map<String, dynamic> json) {
  return _NewsModelItem.fromJson(json);
}

/// @nodoc
mixin _$NewsModelItem {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsModelItemCopyWith<NewsModelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelItemCopyWith<$Res> {
  factory $NewsModelItemCopyWith(
          NewsModelItem value, $Res Function(NewsModelItem) then) =
      _$NewsModelItemCopyWithImpl<$Res, NewsModelItem>;
  @useResult
  $Res call(
      {String? title, String? description, String? urlToImage, String? url});
}

/// @nodoc
class _$NewsModelItemCopyWithImpl<$Res, $Val extends NewsModelItem>
    implements $NewsModelItemCopyWith<$Res> {
  _$NewsModelItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsModelItemImplCopyWith<$Res>
    implements $NewsModelItemCopyWith<$Res> {
  factory _$$NewsModelItemImplCopyWith(
          _$NewsModelItemImpl value, $Res Function(_$NewsModelItemImpl) then) =
      __$$NewsModelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title, String? description, String? urlToImage, String? url});
}

/// @nodoc
class __$$NewsModelItemImplCopyWithImpl<$Res>
    extends _$NewsModelItemCopyWithImpl<$Res, _$NewsModelItemImpl>
    implements _$$NewsModelItemImplCopyWith<$Res> {
  __$$NewsModelItemImplCopyWithImpl(
      _$NewsModelItemImpl _value, $Res Function(_$NewsModelItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? url = freezed,
  }) {
    return _then(_$NewsModelItemImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$NewsModelItemImpl
    with DiagnosticableTreeMixin
    implements _NewsModelItem {
  const _$NewsModelItemImpl(
      {this.title, this.description, this.urlToImage, this.url});

  factory _$NewsModelItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelItemImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? urlToImage;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsModelItem(title: $title, description: $description, urlToImage: $urlToImage, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsModelItem'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('urlToImage', urlToImage))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, urlToImage, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelItemImplCopyWith<_$NewsModelItemImpl> get copyWith =>
      __$$NewsModelItemImplCopyWithImpl<_$NewsModelItemImpl>(this, _$identity);
}

abstract class _NewsModelItem implements NewsModelItem {
  const factory _NewsModelItem(
      {final String? title,
      final String? description,
      final String? urlToImage,
      final String? url}) = _$NewsModelItemImpl;

  factory _NewsModelItem.fromJson(Map<String, dynamic> json) =
      _$NewsModelItemImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get urlToImage;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelItemImplCopyWith<_$NewsModelItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
