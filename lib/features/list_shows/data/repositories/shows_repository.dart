import 'package:flutter_clean_architecture/features/list_shows/data/data_sources/local/shows_local_source.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/data_sources/remote/shows_data_source.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/db/show_data.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/repositories/i_shows_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shows_repository.g.dart';

class ShowsRepository extends IShowsRepository {
  final ShowsDataSource showsApiService;
  final IShowsLocalSource showsLocalSource;

  ShowsRepository({
    required this.showsApiService,
    required this.showsLocalSource,
  });

  @override
  Future<List<ShowEntity>> getShows(String query) async {
    final result = await showsApiService.getShows(query: query);

    final shows = result.map((e) => ShowData.fromEntity(e.show)).toList();
    //inser in local db
    await showsLocalSource.insertShows(shows);

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
  final showsApiDataSource = ref.watch(showsDataSourceProvider);
  final showsLocalSource = ref.watch(showsLocalSourceProvider);
  return ShowsRepository(
    showsApiService: showsApiDataSource,
    showsLocalSource: showsLocalSource,
  );
}
