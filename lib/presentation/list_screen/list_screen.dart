import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tv_shows/app/tv_show/search_tv_shows_bloc.dart';
import 'package:tv_shows/presentation/list_screen/widgets/grid_item.dart';
import 'package:tv_shows/presentation/resources/values_manager.dart';

import 'widgets/search_widget.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchWidget(),
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: BlocBuilder<SearchTvShowsBloc, SearchTvShowsState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) {
                    return const Center(child: Text('Type the show\'s name'));
                  },
                  loadInProgress: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  loadFailure: (_) {
                    return const Center(child: Text('Error has happened'));
                  },
                  loadSuccess: (state) {
                    if (state.tvShows.isNotEmpty) {
                      return StaggeredGrid.count(
                        mainAxisSpacing: AppSize.s12,
                        crossAxisSpacing: AppSize.s12,
                        axisDirection: AxisDirection.down,
                        crossAxisCount: 2,
                        children: state.tvShows
                            .map((tvShow) => GridItem(tvShow: tvShow))
                            .toList(),
                      );
                    } else {
                      return const Center(
                        child: Text('Sorry, nothing found with this search'),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
