import 'package:flutter_clean_architecture/features/list_shows/data/db/show_data.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openIsar();
  }

  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar =
        await Isar.open([ShowDataSchema], directory: dir.path, inspector: true);

    return isar;
  }
}

@riverpod
Future<Isar> getDb(GetDbRef ref) async {
  final isarService = IsarService();
  return await isarService.db;
}
