import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows/app/injection.dart';
import 'package:tv_shows/app/tv_show/search_tv_shows_bloc.dart';

import '../domain/tv_show/i_tv_show_repository.dart';
import 'resources/routes_manager.dart';
import 'resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SearchTvShowsBloc(getIt<ITvShowRepository>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.listScreen,
        onGenerateRoute: RouteGenerator.getRoute,
        theme: getApplicationTheme(),
      ),
    );
  }
}
