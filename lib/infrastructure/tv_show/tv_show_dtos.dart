import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows/domain/tv_show/tv_show.dart';
import 'package:tv_shows/infrastructure/core/extensions.dart';

part 'tv_show_dtos.freezed.dart';

part 'tv_show_dtos.g.dart';

const String placeHolderImage =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Orange_question_mark.svg/675px-Orange_question_mark.svg.png?20220903225041';

@freezed
class TvShowDto with _$TvShowDto {
  const TvShowDto._();

  const factory TvShowDto({
    Show? show,
  }) = _TvShowDto;

  TvShow toDomain() {
    return TvShow(
      id: show?.id ?? 0,
      name: show?.name ?? '',
      genres: show?.genres ?? [],
      rating: show?.rating ?? '',
      imageUrlOriginal: show?.image?.original ?? placeHolderImage,
      imageUrlMedium: show?.image?.medium ?? placeHolderImage,
      url: show?.url ?? '',
      status: show?.status ?? '',
      schedule:
          '${show?.schedule?.time}, ${show?.schedule?.days?.map((item) => '$item ')}',
      summary: show?.summary?.clearFromHtmlTags() ?? '',
    );
  }

  factory TvShowDto.fromJson(Map<String, dynamic> json) =>
      _$TvShowDtoFromJson(json);
}

@JsonSerializable()
class Show {
  int? id;
  String? name;
  List<String> genres;
  @JsonKey(fromJson: _ratingFromJson)
  String? rating;
  String? url;
  Images? image;
  String? status;
  Schedule? schedule;
  String? summary;

  Show({
    this.id,
    this.name,
    required this.genres,
    this.rating,
    this.image,
    this.url,
    this.status,
    this.schedule,
    this.summary,
  });

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);

  static String? _ratingFromJson(Map<String, dynamic> map) =>
      map['average'] == null ? '-' : map['average'].toString();
}

@JsonSerializable()
class Images {
  final String? original;
  final String? medium;

  Images({required this.original, required this.medium});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@JsonSerializable()
class Schedule {
  final String? time;
  final List<String>? days;

  Schedule({required this.time, required this.days});

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
