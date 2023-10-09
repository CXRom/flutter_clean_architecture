import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_model.freezed.dart';
part 'show_model.g.dart';

@freezed
class ShowModel with _$ShowModel implements ShowEntity {
  const factory ShowModel({
    required int id,
    required String url,
    required String name,
    required String type,
    required String language,
    required String status,
  }) = _ShowModel;

  factory ShowModel.fromJson(Map<String, dynamic> json) =>
      _$ShowModelFromJson(json);
}
