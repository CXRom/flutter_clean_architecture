import 'package:flutter_clean_architecture/features/list_shows/data/data_sources/local/shows_local_source.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/data_sources/remote/shows_remote_source.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/db/show_data.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/repositories/i_shows_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shows_repository.g.dart';

class ShowsRepository extends IShowsRepository {
  final ShowsRemoteSource showsApiService;
  final IShowsLocalSource showsLocalSource;

  ShowsRepository({
    required this.showsApiService,
    required this.showsLocalSource,
  });

  @override
  Future<List<ShowEntity>> getShows(String query) async {
    final remoteData = await showsApiService.getShows(query: query);

    final data = remoteData.map((e) => ShowData.fromEntity(e.show)).toList();

    await showsLocalSource.insertList(data);

    return remoteData.map((e) => e.show).toList();
  }

  @override
  Future<ShowEntity> getShowsById(int id) async {
    final result = await showsLocalSource.getById(id);

    if (result == null) {
      final request = await showsApiService.getShowById(id: id);

      showsLocalSource.insert(ShowData.fromEntity(request));
      return request;
    }

    return result.toEntity();
  }
}

@riverpod
IShowsRepository showsRepository(ShowsRepositoryRef ref) {
  final showsApiDataSource = ref.watch(showsRemoteSourceProvider);
  final showsLocalSource = ref.watch(showsLocalSourceProvider);
  return ShowsRepository(
    showsApiService: showsApiDataSource,
    showsLocalSource: showsLocalSource,
  );
}
