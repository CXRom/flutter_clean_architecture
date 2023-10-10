import 'package:flutter_clean_architecture/core/infrastructure/usecase.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/repositories/i_shows_repository.dart';

class GetShowsUseCase extends UseCase {
  final IShowsRepository repository;

  GetShowsUseCase({required this.repository});

  Future<List<ShowEntity>> call(String query) =>
      safe(() => repository.getRemoteShows(query));
}
