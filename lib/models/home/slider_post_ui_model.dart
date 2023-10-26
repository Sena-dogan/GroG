import 'package:freezed_annotation/freezed_annotation.dart';
import 'slider_post.dart';

part 'slider_post_ui_model.freezed.dart';
part 'slider_post_ui_model.g.dart';

@freezed
abstract class SliderPostUIModel with _$SliderPostUIModel {
  const factory SliderPostUIModel({
    @Default(false) bool isLoading,
    @Default(null) String? error,
    @Default(<SliderPost>[]) List<SliderPost> posts,
  }) = _SliderPostUIModel;

  factory SliderPostUIModel.fromJson(Map<String, dynamic> json) =>
      _$SliderPostUIModelFromJson(json);
}
