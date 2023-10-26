// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_post_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SliderPostUIModel _$$_SliderPostUIModelFromJson(Map<String, dynamic> json) =>
    _$_SliderPostUIModel(
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String? ?? null,
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => SliderPost.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SliderPost>[],
    );

Map<String, dynamic> _$$_SliderPostUIModelToJson(
        _$_SliderPostUIModel instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'error': instance.error,
      'posts': instance.posts,
    };
