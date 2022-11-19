// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_show_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvShowDto _$TvShowDtoFromJson(Map<String, dynamic> json) {
  return _TvShowDto.fromJson(json);
}

/// @nodoc
mixin _$TvShowDto {
  Show? get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowDtoCopyWith<TvShowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowDtoCopyWith<$Res> {
  factory $TvShowDtoCopyWith(TvShowDto value, $Res Function(TvShowDto) then) =
      _$TvShowDtoCopyWithImpl<$Res, TvShowDto>;
  @useResult
  $Res call({Show? show});
}

/// @nodoc
class _$TvShowDtoCopyWithImpl<$Res, $Val extends TvShowDto>
    implements $TvShowDtoCopyWith<$Res> {
  _$TvShowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      show: freezed == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as Show?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TvShowDtoCopyWith<$Res> implements $TvShowDtoCopyWith<$Res> {
  factory _$$_TvShowDtoCopyWith(
          _$_TvShowDto value, $Res Function(_$_TvShowDto) then) =
      __$$_TvShowDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Show? show});
}

/// @nodoc
class __$$_TvShowDtoCopyWithImpl<$Res>
    extends _$TvShowDtoCopyWithImpl<$Res, _$_TvShowDto>
    implements _$$_TvShowDtoCopyWith<$Res> {
  __$$_TvShowDtoCopyWithImpl(
      _$_TvShowDto _value, $Res Function(_$_TvShowDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(_$_TvShowDto(
      show: freezed == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as Show?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvShowDto extends _TvShowDto {
  const _$_TvShowDto({this.show}) : super._();

  factory _$_TvShowDto.fromJson(Map<String, dynamic> json) =>
      _$$_TvShowDtoFromJson(json);

  @override
  final Show? show;

  @override
  String toString() {
    return 'TvShowDto(show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvShowDto &&
            (identical(other.show, show) || other.show == show));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvShowDtoCopyWith<_$_TvShowDto> get copyWith =>
      __$$_TvShowDtoCopyWithImpl<_$_TvShowDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvShowDtoToJson(
      this,
    );
  }
}

abstract class _TvShowDto extends TvShowDto {
  const factory _TvShowDto({final Show? show}) = _$_TvShowDto;
  const _TvShowDto._() : super._();

  factory _TvShowDto.fromJson(Map<String, dynamic> json) =
      _$_TvShowDto.fromJson;

  @override
  Show? get show;
  @override
  @JsonKey(ignore: true)
  _$$_TvShowDtoCopyWith<_$_TvShowDto> get copyWith =>
      throw _privateConstructorUsedError;
}
