import 'package:flutter_clean_architecture/core/infrastructure/usecase.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/entities/show_entity.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/repositories/i_shows_repository.dart';

class GetShowUseCase extends UseCase {
  final IShowsRepository repository;

  GetShowUseCase({required this.repository});

  Future<ShowEntity?> call(int id) =>
      safe(() => repository.getRemoteShowsById(id));
}
