// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $MovieTableTable extends MovieTable
    with TableInfo<$MovieTableTable, MovieTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _originalTitleEntryMeta =
      const VerificationMeta('originalTitleEntry');
  @override
  late final GeneratedColumn<String> originalTitleEntry =
      GeneratedColumn<String>('original_title_entry', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _overviewEntryMeta =
      const VerificationMeta('overviewEntry');
  @override
  late final GeneratedColumn<String> overviewEntry = GeneratedColumn<String>(
      'overview_entry', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _posterPathEntryMeta =
      const VerificationMeta('posterPathEntry');
  @override
  late final GeneratedColumn<String> posterPathEntry = GeneratedColumn<String>(
      'poster_path_entry', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _releaseDateEntryMeta =
      const VerificationMeta('releaseDateEntry');
  @override
  late final GeneratedColumn<String> releaseDateEntry = GeneratedColumn<String>(
      'release_date_entry', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _popularityEntryMeta =
      const VerificationMeta('popularityEntry');
  @override
  late final GeneratedColumn<double> popularityEntry = GeneratedColumn<double>(
      'popularity_entry', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        originalTitleEntry,
        overviewEntry,
        posterPathEntry,
        releaseDateEntry,
        popularityEntry
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movie_table';
  @override
  VerificationContext validateIntegrity(Insertable<MovieTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('original_title_entry')) {
      context.handle(
          _originalTitleEntryMeta,
          originalTitleEntry.isAcceptableOrUnknown(
              data['original_title_entry']!, _originalTitleEntryMeta));
    } else if (isInserting) {
      context.missing(_originalTitleEntryMeta);
    }
    if (data.containsKey('overview_entry')) {
      context.handle(
          _overviewEntryMeta,
          overviewEntry.isAcceptableOrUnknown(
              data['overview_entry']!, _overviewEntryMeta));
    } else if (isInserting) {
      context.missing(_overviewEntryMeta);
    }
    if (data.containsKey('poster_path_entry')) {
      context.handle(
          _posterPathEntryMeta,
          posterPathEntry.isAcceptableOrUnknown(
              data['poster_path_entry']!, _posterPathEntryMeta));
    } else if (isInserting) {
      context.missing(_posterPathEntryMeta);
    }
    if (data.containsKey('release_date_entry')) {
      context.handle(
          _releaseDateEntryMeta,
          releaseDateEntry.isAcceptableOrUnknown(
              data['release_date_entry']!, _releaseDateEntryMeta));
    } else if (isInserting) {
      context.missing(_releaseDateEntryMeta);
    }
    if (data.containsKey('popularity_entry')) {
      context.handle(
          _popularityEntryMeta,
          popularityEntry.isAcceptableOrUnknown(
              data['popularity_entry']!, _popularityEntryMeta));
    } else if (isInserting) {
      context.missing(_popularityEntryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MovieTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovieTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      originalTitleEntry: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}original_title_entry'])!,
      overviewEntry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}overview_entry'])!,
      posterPathEntry: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}poster_path_entry'])!,
      releaseDateEntry: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}release_date_entry'])!,
      popularityEntry: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}popularity_entry'])!,
    );
  }

  @override
  $MovieTableTable createAlias(String alias) {
    return $MovieTableTable(attachedDatabase, alias);
  }
}

class MovieTableData extends DataClass implements Insertable<MovieTableData> {
  final int id;
  final String originalTitleEntry;
  final String overviewEntry;
  final String posterPathEntry;
  final String releaseDateEntry;
  final double popularityEntry;
  const MovieTableData(
      {required this.id,
      required this.originalTitleEntry,
      required this.overviewEntry,
      required this.posterPathEntry,
      required this.releaseDateEntry,
      required this.popularityEntry});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['original_title_entry'] = Variable<String>(originalTitleEntry);
    map['overview_entry'] = Variable<String>(overviewEntry);
    map['poster_path_entry'] = Variable<String>(posterPathEntry);
    map['release_date_entry'] = Variable<String>(releaseDateEntry);
    map['popularity_entry'] = Variable<double>(popularityEntry);
    return map;
  }

  MovieTableCompanion toCompanion(bool nullToAbsent) {
    return MovieTableCompanion(
      id: Value(id),
      originalTitleEntry: Value(originalTitleEntry),
      overviewEntry: Value(overviewEntry),
      posterPathEntry: Value(posterPathEntry),
      releaseDateEntry: Value(releaseDateEntry),
      popularityEntry: Value(popularityEntry),
    );
  }

  factory MovieTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieTableData(
      id: serializer.fromJson<int>(json['id']),
      originalTitleEntry:
          serializer.fromJson<String>(json['originalTitleEntry']),
      overviewEntry: serializer.fromJson<String>(json['overviewEntry']),
      posterPathEntry: serializer.fromJson<String>(json['posterPathEntry']),
      releaseDateEntry: serializer.fromJson<String>(json['releaseDateEntry']),
      popularityEntry: serializer.fromJson<double>(json['popularityEntry']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'originalTitleEntry': serializer.toJson<String>(originalTitleEntry),
      'overviewEntry': serializer.toJson<String>(overviewEntry),
      'posterPathEntry': serializer.toJson<String>(posterPathEntry),
      'releaseDateEntry': serializer.toJson<String>(releaseDateEntry),
      'popularityEntry': serializer.toJson<double>(popularityEntry),
    };
  }

  MovieTableData copyWith(
          {int? id,
          String? originalTitleEntry,
          String? overviewEntry,
          String? posterPathEntry,
          String? releaseDateEntry,
          double? popularityEntry}) =>
      MovieTableData(
        id: id ?? this.id,
        originalTitleEntry: originalTitleEntry ?? this.originalTitleEntry,
        overviewEntry: overviewEntry ?? this.overviewEntry,
        posterPathEntry: posterPathEntry ?? this.posterPathEntry,
        releaseDateEntry: releaseDateEntry ?? this.releaseDateEntry,
        popularityEntry: popularityEntry ?? this.popularityEntry,
      );
  MovieTableData copyWithCompanion(MovieTableCompanion data) {
    return MovieTableData(
      id: data.id.present ? data.id.value : this.id,
      originalTitleEntry: data.originalTitleEntry.present
          ? data.originalTitleEntry.value
          : this.originalTitleEntry,
      overviewEntry: data.overviewEntry.present
          ? data.overviewEntry.value
          : this.overviewEntry,
      posterPathEntry: data.posterPathEntry.present
          ? data.posterPathEntry.value
          : this.posterPathEntry,
      releaseDateEntry: data.releaseDateEntry.present
          ? data.releaseDateEntry.value
          : this.releaseDateEntry,
      popularityEntry: data.popularityEntry.present
          ? data.popularityEntry.value
          : this.popularityEntry,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableData(')
          ..write('id: $id, ')
          ..write('originalTitleEntry: $originalTitleEntry, ')
          ..write('overviewEntry: $overviewEntry, ')
          ..write('posterPathEntry: $posterPathEntry, ')
          ..write('releaseDateEntry: $releaseDateEntry, ')
          ..write('popularityEntry: $popularityEntry')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, originalTitleEntry, overviewEntry,
      posterPathEntry, releaseDateEntry, popularityEntry);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieTableData &&
          other.id == this.id &&
          other.originalTitleEntry == this.originalTitleEntry &&
          other.overviewEntry == this.overviewEntry &&
          other.posterPathEntry == this.posterPathEntry &&
          other.releaseDateEntry == this.releaseDateEntry &&
          other.popularityEntry == this.popularityEntry);
}

class MovieTableCompanion extends UpdateCompanion<MovieTableData> {
  final Value<int> id;
  final Value<String> originalTitleEntry;
  final Value<String> overviewEntry;
  final Value<String> posterPathEntry;
  final Value<String> releaseDateEntry;
  final Value<double> popularityEntry;
  const MovieTableCompanion({
    this.id = const Value.absent(),
    this.originalTitleEntry = const Value.absent(),
    this.overviewEntry = const Value.absent(),
    this.posterPathEntry = const Value.absent(),
    this.releaseDateEntry = const Value.absent(),
    this.popularityEntry = const Value.absent(),
  });
  MovieTableCompanion.insert({
    this.id = const Value.absent(),
    required String originalTitleEntry,
    required String overviewEntry,
    required String posterPathEntry,
    required String releaseDateEntry,
    required double popularityEntry,
  })  : originalTitleEntry = Value(originalTitleEntry),
        overviewEntry = Value(overviewEntry),
        posterPathEntry = Value(posterPathEntry),
        releaseDateEntry = Value(releaseDateEntry),
        popularityEntry = Value(popularityEntry);
  static Insertable<MovieTableData> custom({
    Expression<int>? id,
    Expression<String>? originalTitleEntry,
    Expression<String>? overviewEntry,
    Expression<String>? posterPathEntry,
    Expression<String>? releaseDateEntry,
    Expression<double>? popularityEntry,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (originalTitleEntry != null)
        'original_title_entry': originalTitleEntry,
      if (overviewEntry != null) 'overview_entry': overviewEntry,
      if (posterPathEntry != null) 'poster_path_entry': posterPathEntry,
      if (releaseDateEntry != null) 'release_date_entry': releaseDateEntry,
      if (popularityEntry != null) 'popularity_entry': popularityEntry,
    });
  }

  MovieTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? originalTitleEntry,
      Value<String>? overviewEntry,
      Value<String>? posterPathEntry,
      Value<String>? releaseDateEntry,
      Value<double>? popularityEntry}) {
    return MovieTableCompanion(
      id: id ?? this.id,
      originalTitleEntry: originalTitleEntry ?? this.originalTitleEntry,
      overviewEntry: overviewEntry ?? this.overviewEntry,
      posterPathEntry: posterPathEntry ?? this.posterPathEntry,
      releaseDateEntry: releaseDateEntry ?? this.releaseDateEntry,
      popularityEntry: popularityEntry ?? this.popularityEntry,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (originalTitleEntry.present) {
      map['original_title_entry'] = Variable<String>(originalTitleEntry.value);
    }
    if (overviewEntry.present) {
      map['overview_entry'] = Variable<String>(overviewEntry.value);
    }
    if (posterPathEntry.present) {
      map['poster_path_entry'] = Variable<String>(posterPathEntry.value);
    }
    if (releaseDateEntry.present) {
      map['release_date_entry'] = Variable<String>(releaseDateEntry.value);
    }
    if (popularityEntry.present) {
      map['popularity_entry'] = Variable<double>(popularityEntry.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableCompanion(')
          ..write('id: $id, ')
          ..write('originalTitleEntry: $originalTitleEntry, ')
          ..write('overviewEntry: $overviewEntry, ')
          ..write('posterPathEntry: $posterPathEntry, ')
          ..write('releaseDateEntry: $releaseDateEntry, ')
          ..write('popularityEntry: $popularityEntry')
          ..write(')'))
        .toString();
  }
}

abstract class _$MovieDatabase extends GeneratedDatabase {
  _$MovieDatabase(QueryExecutor e) : super(e);
  $MovieDatabaseManager get managers => $MovieDatabaseManager(this);
  late final $MovieTableTable movieTable = $MovieTableTable(this);
  late final MovieDao movieDao = MovieDao(this as MovieDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movieTable];
}

typedef $$MovieTableTableCreateCompanionBuilder = MovieTableCompanion Function({
  Value<int> id,
  required String originalTitleEntry,
  required String overviewEntry,
  required String posterPathEntry,
  required String releaseDateEntry,
  required double popularityEntry,
});
typedef $$MovieTableTableUpdateCompanionBuilder = MovieTableCompanion Function({
  Value<int> id,
  Value<String> originalTitleEntry,
  Value<String> overviewEntry,
  Value<String> posterPathEntry,
  Value<String> releaseDateEntry,
  Value<double> popularityEntry,
});

class $$MovieTableTableFilterComposer
    extends Composer<_$MovieDatabase, $MovieTableTable> {
  $$MovieTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get originalTitleEntry => $composableBuilder(
      column: $table.originalTitleEntry,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get overviewEntry => $composableBuilder(
      column: $table.overviewEntry, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get posterPathEntry => $composableBuilder(
      column: $table.posterPathEntry,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get releaseDateEntry => $composableBuilder(
      column: $table.releaseDateEntry,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get popularityEntry => $composableBuilder(
      column: $table.popularityEntry,
      builder: (column) => ColumnFilters(column));
}

class $$MovieTableTableOrderingComposer
    extends Composer<_$MovieDatabase, $MovieTableTable> {
  $$MovieTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalTitleEntry => $composableBuilder(
      column: $table.originalTitleEntry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get overviewEntry => $composableBuilder(
      column: $table.overviewEntry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get posterPathEntry => $composableBuilder(
      column: $table.posterPathEntry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get releaseDateEntry => $composableBuilder(
      column: $table.releaseDateEntry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get popularityEntry => $composableBuilder(
      column: $table.popularityEntry,
      builder: (column) => ColumnOrderings(column));
}

class $$MovieTableTableAnnotationComposer
    extends Composer<_$MovieDatabase, $MovieTableTable> {
  $$MovieTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get originalTitleEntry => $composableBuilder(
      column: $table.originalTitleEntry, builder: (column) => column);

  GeneratedColumn<String> get overviewEntry => $composableBuilder(
      column: $table.overviewEntry, builder: (column) => column);

  GeneratedColumn<String> get posterPathEntry => $composableBuilder(
      column: $table.posterPathEntry, builder: (column) => column);

  GeneratedColumn<String> get releaseDateEntry => $composableBuilder(
      column: $table.releaseDateEntry, builder: (column) => column);

  GeneratedColumn<double> get popularityEntry => $composableBuilder(
      column: $table.popularityEntry, builder: (column) => column);
}

class $$MovieTableTableTableManager extends RootTableManager<
    _$MovieDatabase,
    $MovieTableTable,
    MovieTableData,
    $$MovieTableTableFilterComposer,
    $$MovieTableTableOrderingComposer,
    $$MovieTableTableAnnotationComposer,
    $$MovieTableTableCreateCompanionBuilder,
    $$MovieTableTableUpdateCompanionBuilder,
    (
      MovieTableData,
      BaseReferences<_$MovieDatabase, $MovieTableTable, MovieTableData>
    ),
    MovieTableData,
    PrefetchHooks Function()> {
  $$MovieTableTableTableManager(_$MovieDatabase db, $MovieTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MovieTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MovieTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MovieTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> originalTitleEntry = const Value.absent(),
            Value<String> overviewEntry = const Value.absent(),
            Value<String> posterPathEntry = const Value.absent(),
            Value<String> releaseDateEntry = const Value.absent(),
            Value<double> popularityEntry = const Value.absent(),
          }) =>
              MovieTableCompanion(
            id: id,
            originalTitleEntry: originalTitleEntry,
            overviewEntry: overviewEntry,
            posterPathEntry: posterPathEntry,
            releaseDateEntry: releaseDateEntry,
            popularityEntry: popularityEntry,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String originalTitleEntry,
            required String overviewEntry,
            required String posterPathEntry,
            required String releaseDateEntry,
            required double popularityEntry,
          }) =>
              MovieTableCompanion.insert(
            id: id,
            originalTitleEntry: originalTitleEntry,
            overviewEntry: overviewEntry,
            posterPathEntry: posterPathEntry,
            releaseDateEntry: releaseDateEntry,
            popularityEntry: popularityEntry,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MovieTableTableProcessedTableManager = ProcessedTableManager<
    _$MovieDatabase,
    $MovieTableTable,
    MovieTableData,
    $$MovieTableTableFilterComposer,
    $$MovieTableTableOrderingComposer,
    $$MovieTableTableAnnotationComposer,
    $$MovieTableTableCreateCompanionBuilder,
    $$MovieTableTableUpdateCompanionBuilder,
    (
      MovieTableData,
      BaseReferences<_$MovieDatabase, $MovieTableTable, MovieTableData>
    ),
    MovieTableData,
    PrefetchHooks Function()>;

class $MovieDatabaseManager {
  final _$MovieDatabase _db;
  $MovieDatabaseManager(this._db);
  $$MovieTableTableTableManager get movieTable =>
      $$MovieTableTableTableManager(_db, _db.movieTable);
}

mixin _$MovieDaoMixin on DatabaseAccessor<MovieDatabase> {
  $MovieTableTable get movieTable => attachedDatabase.movieTable;
}
