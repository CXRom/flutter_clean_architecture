import 'package:flutter_clean_architecture/features/list_shows/data/db/isar.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/db/show_data.dart';
import 'package:flutter_clean_architecture/features/list_shows/domain/repositories/i_shows_repository.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shows_local_source.g.dart';

abstract class IShowsLocalSource {
  Future<void> insertShows(List<ShowData> shows);
  Future<List<ShowData>> getShows();
}

class ShowsLocalSource implements IShowsLocalSource {
  final Isar db;

  ShowsLocalSource({required this.db});

  @override
  Future<void> insertShows(List<ShowData> shows) async {
    await db.writeTxn(() async {
      await db.showDatas.putAll(shows);
    });
  }

  @override
  Future<List<ShowData>> getShows() async {
    return await db.showDatas.where().findAll();
  }
}

@riverpod
IShowsLocalSource showsLocalSource(ShowsLocalSourceRef ref) {
  final db = ref.watch(getDbProvider);

  return ShowsLocalSource(db: db.value!);
}
