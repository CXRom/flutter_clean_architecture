import 'package:flutter_clean_architecture/features/list_shows/data/db/isar.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/db/show_data.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shows_local_source.g.dart';

abstract class IShowsLocalSource {
  Future<ShowData?> getShowById(int id);
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

  @override
  Future<ShowData?> getShowById(int id) {
    return db.showDatas.where().idEqualTo(id).findFirst();
  }
}

@riverpod
IShowsLocalSource showsLocalSource(ShowsLocalSourceRef ref) {
  final db = ref.watch(getDbProvider);

  return ShowsLocalSource(db: db.value!);
}
