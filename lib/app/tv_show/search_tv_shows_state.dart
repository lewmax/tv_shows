part of 'search_tv_shows_bloc.dart';

@freezed
abstract class SearchTvShowsState with _$SearchTvShowsState {

  const factory SearchTvShowsState.initial() = _Initial;

  const factory SearchTvShowsState.loadInProgress() = _LoadInProgress;

  const factory SearchTvShowsState.loadSuccess(List<TvShow> tvShows) =
  _LoadSuccess;

  const factory SearchTvShowsState.loadFailure(TvShowFailure tvShowFailure) =
  _LoadFailure;
}