// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/tv_show/i_tv_show_repository.dart' as _i3;
import '../infrastructure/tv_show/tv_show_repository.dart' as _i4;
import 'tv_show/search_tv_shows_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ITvShowRepository>(() => _i4.TvShowRepository());
  gh.lazySingleton<_i5.SearchTvShowsBloc>(
      () => _i5.SearchTvShowsBloc(get<_i3.ITvShowRepository>()));
  return get;
}
