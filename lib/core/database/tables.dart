import 'package:drift/drift.dart';

/// Creation of Film Table named AppFilm

class MovieTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get originalTitleEntry => text()();
  TextColumn get overviewEntry => text()();
  TextColumn get posterPathEntry => text()();
  TextColumn get releaseDateEntry => text()();
  RealColumn get popularityEntry => real()();
}
