import 'package:flutter_clean_architecture/features/list_shows/data/repositories/shows_repository.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/usecases/get_show.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/usecases/get_shows.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases.g.dart';

@riverpod
Future<List<ShowEntity>> getShowsUseCase(GetShowsUseCaseRef ref, String query) {
  final useCase =
      GetShowsUseCase(repository: ref.watch(showsRepositoryProvider));

  return useCase(query);
}

@riverpod
Future<ShowEntity> getShowByIdUseCase(GetShowByIdUseCaseRef ref, int id) {
  final useCase =
      GetShowUseCase(repository: ref.watch(showsRepositoryProvider));

  return useCase(id);
}
