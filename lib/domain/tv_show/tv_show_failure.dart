import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_failure.freezed.dart';

@freezed
abstract class TvShowFailure with _$TvShowFailure {
  const factory TvShowFailure.serverError() = _ServerError;

  const factory TvShowFailure.unexpectedError() = _UnexpectedError;
}
