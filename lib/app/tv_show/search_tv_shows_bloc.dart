import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows/domain/tv_show/tv_show_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/tv_show/i_tv_show_repository.dart';
import '../../domain/tv_show/tv_show.dart';

part 'search_tv_shows_event.dart';

part 'search_tv_shows_state.dart';

part 'search_tv_shows_bloc.freezed.dart';

@LazySingleton()
class SearchTvShowsBloc extends Bloc<SearchTvShowsEvent, SearchTvShowsState> {
  final ITvShowRepository tvShowRepository;

  SearchTvShowsBloc(this.tvShowRepository)
      : super(const SearchTvShowsState.initial()) {
    on<SearchTvShowsEvent>((event, emit) async {
      await event.map(
        searchTvShows: (e) async {
          emit(const SearchTvShowsState.loadInProgress());
          final tvShowsOrFailure =
              await tvShowRepository.searchTvShowsByQuery(e.query);

          tvShowsOrFailure.fold(
            (f) => emit(SearchTvShowsState.loadFailure(f)),
            (tvShows) => emit(SearchTvShowsState.loadSuccess(tvShows)),
          );
        },
      );
    });
  }
}
