import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';

abstract class IShowsRepository {
  Future<List<ShowEntity>> getShows(String query);
  Future<ShowEntity> getShowsById(int id);
}
