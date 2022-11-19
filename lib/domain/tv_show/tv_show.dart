import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show.freezed.dart';

@freezed
abstract class TvShow implements _$TvShow {
  const TvShow._();

  const factory TvShow({
    required int id,
    required String name,
    required List<String> genres,
    required String rating,
    required String imageUrlOriginal,
    required String imageUrlMedium,
    required String url,
    required String status,
    required String schedule,
    required String summary,
  }) = _TvShow;

  factory TvShow.empty() => const TvShow(
        id: 0,
        name: '',
        genres: <String>[],
        rating: '-',
        imageUrlOriginal: '',
        imageUrlMedium: '',
        url: '',
        status: '',
        schedule: '',
        summary: '',
      );
}
