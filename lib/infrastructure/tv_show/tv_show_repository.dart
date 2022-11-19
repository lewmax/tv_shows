import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:tv_shows/domain/tv_show/i_tv_show_repository.dart';
import 'package:http/http.dart' as http;
import 'package:tv_shows/infrastructure/tv_show/tv_show_dtos.dart';
import 'package:injectable/injectable.dart';

import '../../domain/tv_show/tv_show.dart';
import '../../domain/tv_show/tv_show_failure.dart';

const String baseUrl = 'https://api.tvmaze.com/search/shows?q=';

@Injectable(as: ITvShowRepository)
class TvShowRepository implements ITvShowRepository {
  @override
  Future<Either<TvShowFailure, List<TvShow>>> searchTvShowsByQuery(
    String query,
  ) async {
    final response = await http.get(Uri.parse(baseUrl + query));

    if (response.statusCode == 200) {
      try {
        final jsonList = jsonDecode(response.body) as List<dynamic>;

        final tvShowsList = jsonList
            .map((item) {
              final a =  TvShowDto.fromJson(item);
              final b = a.toDomain();
              return b;
            })
            .toList();

        return right(tvShowsList);
      } catch (e) {
        return left(const TvShowFailure.unexpectedError());
      }
    } else {
      return left(const TvShowFailure.serverError());
    }
  }
}
