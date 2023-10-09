import 'package:flutter_clean_architecture/features/list_shows/data/data_sources/remote/shows_api_data_source.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/repositories/i_shows_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shows_repository.g.dart';

class ShowsRepository extends IShowsRepository {
  final ShowsApiDataSource showsApiService;

  ShowsRepository({required this.showsApiService});

  @override
  Future<List<ShowEntity>> getShows(String query) async {
    final result = await showsApiService.getShows(query: query);
    return result.map((e) => e.show).toList();
  }

  @override
  Future<ShowEntity> getShowsById(int id) async {
    final result = await showsApiService.getShowById(id: id);
    return result;
  }
}

@riverpod
IShowsRepository showsRepository(ShowsRepositoryRef ref) {
  final showsApiDataSource = ref.watch(showsApiDataSourceProvider);
  return ShowsRepository(showsApiService: showsApiDataSource);
}
