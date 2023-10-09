import 'package:flutter_clean_architecture/features/list_shows/data/db/isar.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/db/show_data.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shows_local_source.g.dart';

abstract class IShowsLocalSource {
  Future<ShowData?> insert(ShowData item);
  Future<ShowData?> getById(int id);
  Future<void> insertList(List<ShowData> shows);
  Future<List<ShowData>> getAll();
}

class ShowsLocalSource implements IShowsLocalSource {
  final Isar db;

  ShowsLocalSource({required this.db});

  @override
  Future<ShowData?> insert(ShowData item) async {
    await db.writeTxn(() async {
      await db.showDatas.put(item);
    });
    return item;
  }

  @override
  Future<void> insertList(List<ShowData> shows) async {
    await db.writeTxn(() async {
      await db.showDatas.putAll(shows);
    });
  }

  @override
  Future<List<ShowData>> getAll() async {
    return await db.showDatas.where().findAll();
  }

  @override
  Future<ShowData?> getById(int id) {
    return db.showDatas.where().idEqualTo(id).findFirst();
  }
}

@riverpod
IShowsLocalSource showsLocalSource(ShowsLocalSourceRef ref) {
  final db = ref.watch(getDbProvider);

  return ShowsLocalSource(db: db.value!);
}
