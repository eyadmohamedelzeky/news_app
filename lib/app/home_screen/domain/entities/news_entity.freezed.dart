// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEntity {
  List<NewsEntityItem>? get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call({List<NewsEntityItem>? articles});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity>
    implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

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
              as List<NewsEntityItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsEntityImplCopyWith<$Res>
    implements $NewsEntityCopyWith<$Res> {
  factory _$$NewsEntityImplCopyWith(
          _$NewsEntityImpl value, $Res Function(_$NewsEntityImpl) then) =
      __$$NewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsEntityItem>? articles});
}

/// @nodoc
class __$$NewsEntityImplCopyWithImpl<$Res>
    extends _$NewsEntityCopyWithImpl<$Res, _$NewsEntityImpl>
    implements _$$NewsEntityImplCopyWith<$Res> {
  __$$NewsEntityImplCopyWithImpl(
      _$NewsEntityImpl _value, $Res Function(_$NewsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_$NewsEntityImpl(
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsEntityItem>?,
    ));
  }
}

/// @nodoc

class _$NewsEntityImpl implements _NewsEntity {
  const _$NewsEntityImpl({final List<NewsEntityItem>? articles})
      : _articles = articles;

  final List<NewsEntityItem>? _articles;
  @override
  List<NewsEntityItem>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsEntity(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntityImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      __$$NewsEntityImplCopyWithImpl<_$NewsEntityImpl>(this, _$identity);
}

abstract class _NewsEntity implements NewsEntity {
  const factory _NewsEntity({final List<NewsEntityItem>? articles}) =
      _$NewsEntityImpl;

  @override
  List<NewsEntityItem>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsEntityItem {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntityItemCopyWith<NewsEntityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityItemCopyWith<$Res> {
  factory $NewsEntityItemCopyWith(
          NewsEntityItem value, $Res Function(NewsEntityItem) then) =
      _$NewsEntityItemCopyWithImpl<$Res, NewsEntityItem>;
  @useResult
  $Res call(
      {String? title, String? description, String? urlToImage, String? url});
}

/// @nodoc
class _$NewsEntityItemCopyWithImpl<$Res, $Val extends NewsEntityItem>
    implements $NewsEntityItemCopyWith<$Res> {
  _$NewsEntityItemCopyWithImpl(this._value, this._then);

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
abstract class _$$NewsEntityItemImplCopyWith<$Res>
    implements $NewsEntityItemCopyWith<$Res> {
  factory _$$NewsEntityItemImplCopyWith(_$NewsEntityItemImpl value,
          $Res Function(_$NewsEntityItemImpl) then) =
      __$$NewsEntityItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title, String? description, String? urlToImage, String? url});
}

/// @nodoc
class __$$NewsEntityItemImplCopyWithImpl<$Res>
    extends _$NewsEntityItemCopyWithImpl<$Res, _$NewsEntityItemImpl>
    implements _$$NewsEntityItemImplCopyWith<$Res> {
  __$$NewsEntityItemImplCopyWithImpl(
      _$NewsEntityItemImpl _value, $Res Function(_$NewsEntityItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? url = freezed,
  }) {
    return _then(_$NewsEntityItemImpl(
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

class _$NewsEntityItemImpl implements _NewsEntityItem {
  const _$NewsEntityItemImpl(
      {this.title, this.description, this.urlToImage, this.url});

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? urlToImage;
  @override
  final String? url;

  @override
  String toString() {
    return 'NewsEntityItem(title: $title, description: $description, urlToImage: $urlToImage, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntityItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, urlToImage, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntityItemImplCopyWith<_$NewsEntityItemImpl> get copyWith =>
      __$$NewsEntityItemImplCopyWithImpl<_$NewsEntityItemImpl>(
          this, _$identity);
}

abstract class _NewsEntityItem implements NewsEntityItem {
  const factory _NewsEntityItem(
      {final String? title,
      final String? description,
      final String? urlToImage,
      final String? url}) = _$NewsEntityItemImpl;

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
  _$$NewsEntityItemImplCopyWith<_$NewsEntityItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
