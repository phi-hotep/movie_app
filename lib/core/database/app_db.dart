import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'database_imports.dart';

part 'app_db.g.dart';

///Database
@DriftDatabase(tables: [MovieTable], daos: [MovieDao])
class MovieDatabase extends _$MovieDatabase {
  MovieDatabase() : super(_openDatabase());

  @override
  int get schemaVersion =>
      1; // This value is updated whenever you change or add tables
}

/// helper function that returns an instance of QueryExecutor
LazyDatabase _openDatabase() {
  return LazyDatabase(() async {
    final dbFolder = '${(await getExternalStorageDirectory())!.path}MovieApp/';
    final file = File(p.join(dbFolder,
        'dbmovie.sqlite')); //The name of the file where data are stored
    return NativeDatabase(file,
        logStatements: true); // logStatements: true only use in debug mode
  });
}

///Provider of [MovieDatabase]
final movieDatabaseProvider = Provider<MovieDatabase>((ref) {
  return MovieDatabase();
});

/// Database accessor for queries execution
@DriftAccessor(tables: [MovieTable])
class MovieDao extends DatabaseAccessor<MovieDatabase> with _$MovieDaoMixin {
  final MovieDatabase movieDatabase;
  MovieDao(this.movieDatabase) : super(movieDatabase);

  /// Select all current movies present in MovieTable
  Stream<List<dynamic>> selectAllMovies() {
    try {
      final list = select(movieTable).watch();
      return list;
    } on SqliteException {
      rethrow;
    }
  }

  /// Insert a movie in MovieTable
  Future<void> insertMovie(Insertable<MovieTableData> movieToInsert) async {
    var movieTemp = movieToInsert as MovieTableCompanion;
    try {
      final movieDataList =
          await select(movieTable).get(); //Get list of saved movies
      bool verification = movieDataList.every((movieTableData) =>
          movieTemp.originalTitleEntry.value !=
          movieTableData.originalTitleEntry); // Insert condition verification
      if (verification) {
        into(movieTable).insert(movieToInsert);
      }
    } on SqliteException {
      rethrow;
    }
  }

  /// Delete a movie in MovieTable
  Future deleteMovie(int id) async {
    print('$id before');
    try {
      Future.value(
          (delete(movieTable)..where((tbl) => tbl.id.equals(id))).go());
    } on SqliteException {
      rethrow;
    }
  }
}

/// Provider of [MovieDao]
final movieDaoProvider = Provider<MovieDao>((ref) {
  final databaseProv = ref.watch(movieDatabaseProvider);
  return MovieDao(databaseProv);
});
