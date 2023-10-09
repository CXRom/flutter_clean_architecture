import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:isar/isar.dart';

part 'show_data.g.dart';

@collection
class ShowData {
  Id id;

  late String url;
  late String name;
  late String type;
  late String language;
  late String status;

  ShowData({
    required this.id,
    required this.url,
    required this.name,
    required this.type,
    required this.language,
    required this.status,
  });

  factory ShowData.fromEntity(ShowEntity entity) {
    return ShowData(
      id: entity.id,
      url: entity.url,
      name: entity.name,
      type: entity.type,
      language: entity.language,
      status: entity.status,
    );
  }

  ShowEntity toEntity() {
    return ShowEntity(
      id: id,
      url: url,
      name: name,
      type: type,
      language: language,
      status: status,
    );
  }
}
