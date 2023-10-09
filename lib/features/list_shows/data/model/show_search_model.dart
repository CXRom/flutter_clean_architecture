import 'package:flutter_clean_architecture/features/list_shows/data/model/show_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_search_model.freezed.dart';
part 'show_search_model.g.dart';

@freezed
class ShowSearchModel with _$ShowSearchModel {
  const factory ShowSearchModel({
    required double score,
    required ShowModel show,
  }) = _ShowSearchModel;

  factory ShowSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ShowSearchModelFromJson(json);
}
