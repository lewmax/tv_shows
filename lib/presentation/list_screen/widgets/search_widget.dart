import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows/app/tv_show/search_tv_shows_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  String lastInputValue = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Type to search',
      ),
      onChanged: (value) {
        if (value.length > 1 && lastInputValue != value) {
          lastInputValue = value;
          context
              .read<SearchTvShowsBloc>()
              .add(SearchTvShowsEvent.searchTvShows(value));
        }
      },
    );
  }
}
