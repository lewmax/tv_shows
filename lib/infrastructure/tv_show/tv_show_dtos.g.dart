// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Show _$ShowFromJson(Map<String, dynamic> json) => Show(
      id: json['id'] as int?,
      name: json['name'] as String?,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      rating: Show._ratingFromJson(json['rating'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : Images.fromJson(json['image'] as Map<String, dynamic>),
      url: json['url'] as String?,
      status: json['status'] as String?,
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$ShowToJson(Show instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genres': instance.genres,
      'rating': instance.rating,
      'url': instance.url,
      'image': instance.image,
      'status': instance.status,
      'schedule': instance.schedule,
      'summary': instance.summary,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      original: json['original'] as String?,
      medium: json['medium'] as String?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'original': instance.original,
      'medium': instance.medium,
    };

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      time: json['time'] as String?,
      days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'time': instance.time,
      'days': instance.days,
    };

_$_TvShowDto _$$_TvShowDtoFromJson(Map<String, dynamic> json) => _$_TvShowDto(
      show: json['show'] == null
          ? null
          : Show.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TvShowDtoToJson(_$_TvShowDto instance) =>
    <String, dynamic>{
      'show': instance.show,
    };
