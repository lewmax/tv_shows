part of 'search_tv_shows_bloc.dart';

@freezed
abstract class SearchTvShowsEvent with _$SearchTvShowsEvent {
  const factory SearchTvShowsEvent.searchTvShows(String query) = _SearchTvShows;
}