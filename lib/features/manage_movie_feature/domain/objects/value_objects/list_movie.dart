// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/error_imports.dart';
import '../../domain_imports.dart';

part 'list_movie.freezed.dart';

@freezed
class ListMovie with _$ListMovie {
  const factory ListMovie() = _Init;
  const factory ListMovie.success({required List<Movie> list}) = _Success;
  const factory ListMovie.failure({required RemoteFailure fail}) = _Failure;
}
