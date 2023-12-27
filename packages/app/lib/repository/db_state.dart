import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import '../util/constant/strings.dart';
import '../util/logger.dart';

part 'db_state.g.dart';

@Riverpod(keepAlive: true)
Future<Database> db(DbRef ref, String dbName) async {
  logger.i('$dbName のロードを開始します。');

  final path = join(dbDirectoryPath + dbName);
  final loadedDb = await rootBundle.load(path);
  final dbBytes = loadedDb.buffer.asUint8List();
  await databaseFactoryFfiWeb.writeDatabaseBytes(
    path,
    dbBytes,
  );
  final db = await databaseFactoryFfiWeb.openDatabase(path);

  ref.onDispose(() async {
    logger.i('dispose されたため $dbName をクローズします。');
    await db.close();
  });

  logger.i('$dbName のロードが完了しました。');
  return db;
}
