// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowSearchModel _$$_ShowSearchModelFromJson(Map<String, dynamic> json) =>
    _$_ShowSearchModel(
      score: (json['score'] as num).toDouble(),
      show: ShowModel.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShowSearchModelToJson(_$_ShowSearchModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'show': instance.show,
    };
