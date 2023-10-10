import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';

abstract class IShowsRepository {
  Future<List<ShowEntity>> getRemoteShows(String query);
  Future<ShowEntity?> getRemoteShowsById(int id);
  Future<List<ShowEntity>> getLocalShows(String query);
  Future<ShowEntity?> getLocalShowsById(int id);
}
