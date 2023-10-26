// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SliderPost _$SliderPostFromJson(Map<String, dynamic> json) {
  return _SliderPost.fromJson(json);
}

/// @nodoc
mixin _$SliderPost {
  String get mediaUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderPostCopyWith<SliderPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderPostCopyWith<$Res> {
  factory $SliderPostCopyWith(
          SliderPost value, $Res Function(SliderPost) then) =
      _$SliderPostCopyWithImpl<$Res, SliderPost>;
  @useResult
  $Res call({String mediaUrl});
}

/// @nodoc
class _$SliderPostCopyWithImpl<$Res, $Val extends SliderPost>
    implements $SliderPostCopyWith<$Res> {
  _$SliderPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaUrl = null,
  }) {
    return _then(_value.copyWith(
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderPostCopyWith<$Res>
    implements $SliderPostCopyWith<$Res> {
  factory _$$_SliderPostCopyWith(
          _$_SliderPost value, $Res Function(_$_SliderPost) then) =
      __$$_SliderPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mediaUrl});
}

/// @nodoc
class __$$_SliderPostCopyWithImpl<$Res>
    extends _$SliderPostCopyWithImpl<$Res, _$_SliderPost>
    implements _$$_SliderPostCopyWith<$Res> {
  __$$_SliderPostCopyWithImpl(
      _$_SliderPost _value, $Res Function(_$_SliderPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaUrl = null,
  }) {
    return _then(_$_SliderPost(
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SliderPost implements _SliderPost {
  const _$_SliderPost({required this.mediaUrl});

  factory _$_SliderPost.fromJson(Map<String, dynamic> json) =>
      _$$_SliderPostFromJson(json);

  @override
  final String mediaUrl;

  @override
  String toString() {
    return 'SliderPost(mediaUrl: $mediaUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderPost &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mediaUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderPostCopyWith<_$_SliderPost> get copyWith =>
      __$$_SliderPostCopyWithImpl<_$_SliderPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SliderPostToJson(
      this,
    );
  }
}

abstract class _SliderPost implements SliderPost {
  const factory _SliderPost({required final String mediaUrl}) = _$_SliderPost;

  factory _SliderPost.fromJson(Map<String, dynamic> json) =
      _$_SliderPost.fromJson;

  @override
  String get mediaUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SliderPostCopyWith<_$_SliderPost> get copyWith =>
      throw _privateConstructorUsedError;
}
