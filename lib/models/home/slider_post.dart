import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_post.g.dart';
part 'slider_post.freezed.dart';

@freezed
abstract class SliderPost with _$SliderPost {
  const factory SliderPost({
    required String mediaUrl,
  }) = _SliderPost;

  factory SliderPost.fromJson(Map<String, dynamic> json) =>
      _$SliderPostFromJson(json);
}
