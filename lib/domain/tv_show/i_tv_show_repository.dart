import 'package:dartz/dartz.dart';
import 'package:tv_shows/domain/tv_show/tv_show.dart';
import 'package:tv_shows/domain/tv_show/tv_show_failure.dart';

abstract class ITvShowRepository {
  Future<Either<TvShowFailure, List<TvShow>>> searchTvShowsByQuery(
    String query,
  );
}
