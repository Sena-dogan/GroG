// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_post_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SliderPostUIModel _$SliderPostUIModelFromJson(Map<String, dynamic> json) {
  return _SliderPostUIModel.fromJson(json);
}

/// @nodoc
mixin _$SliderPostUIModel {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<SliderPost> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderPostUIModelCopyWith<SliderPostUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderPostUIModelCopyWith<$Res> {
  factory $SliderPostUIModelCopyWith(
          SliderPostUIModel value, $Res Function(SliderPostUIModel) then) =
      _$SliderPostUIModelCopyWithImpl<$Res, SliderPostUIModel>;
  @useResult
  $Res call({bool isLoading, String? error, List<SliderPost> posts});
}

/// @nodoc
class _$SliderPostUIModelCopyWithImpl<$Res, $Val extends SliderPostUIModel>
    implements $SliderPostUIModelCopyWith<$Res> {
  _$SliderPostUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<SliderPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderPostUIModelCopyWith<$Res>
    implements $SliderPostUIModelCopyWith<$Res> {
  factory _$$_SliderPostUIModelCopyWith(_$_SliderPostUIModel value,
          $Res Function(_$_SliderPostUIModel) then) =
      __$$_SliderPostUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, List<SliderPost> posts});
}

/// @nodoc
class __$$_SliderPostUIModelCopyWithImpl<$Res>
    extends _$SliderPostUIModelCopyWithImpl<$Res, _$_SliderPostUIModel>
    implements _$$_SliderPostUIModelCopyWith<$Res> {
  __$$_SliderPostUIModelCopyWithImpl(
      _$_SliderPostUIModel _value, $Res Function(_$_SliderPostUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? posts = null,
  }) {
    return _then(_$_SliderPostUIModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<SliderPost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SliderPostUIModel implements _SliderPostUIModel {
  const _$_SliderPostUIModel(
      {this.isLoading = false,
      this.error = null,
      final List<SliderPost> posts = const <SliderPost>[]})
      : _posts = posts;

  factory _$_SliderPostUIModel.fromJson(Map<String, dynamic> json) =>
      _$$_SliderPostUIModelFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? error;
  final List<SliderPost> _posts;
  @override
  @JsonKey()
  List<SliderPost> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'SliderPostUIModel(isLoading: $isLoading, error: $error, posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderPostUIModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error,
      const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderPostUIModelCopyWith<_$_SliderPostUIModel> get copyWith =>
      __$$_SliderPostUIModelCopyWithImpl<_$_SliderPostUIModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SliderPostUIModelToJson(
      this,
    );
  }
}

abstract class _SliderPostUIModel implements SliderPostUIModel {
  const factory _SliderPostUIModel(
      {final bool isLoading,
      final String? error,
      final List<SliderPost> posts}) = _$_SliderPostUIModel;

  factory _SliderPostUIModel.fromJson(Map<String, dynamic> json) =
      _$_SliderPostUIModel.fromJson;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  List<SliderPost> get posts;
  @override
  @JsonKey(ignore: true)
  _$$_SliderPostUIModelCopyWith<_$_SliderPostUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
