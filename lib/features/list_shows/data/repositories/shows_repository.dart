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
  Future<List<ShowEntity>> getRemoteShows(String query) async {
    final remoteData = await showsApiService.getShows(query: query);
    return remoteData.map((e) => e.show).toList();
    // return data = remoteData.map((e) => ShowData.fromEntity(e.show)).toList();
    // await showsLocalSource.insertList(data);
  }

  @override
  Future<ShowEntity> getRemoteShowsById(int id) async {
    final result = await showsApiService.getShowById(id: id);
    return result;
  }

  @override
  Future<List<ShowEntity>> getLocalShows(String query) async {
    final items = await showsLocalSource.getAll();
    return items.map((e) => e.toEntity()).toList();
  }

  @override
  Future<ShowEntity?> getLocalShowsById(int id) async {
    final result = await showsLocalSource.getById(id);
    return result?.toEntity();
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
