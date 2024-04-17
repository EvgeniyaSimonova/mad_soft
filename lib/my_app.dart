import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mad_soft/dio_client/dio_client.dart';
import 'package:mad_soft/home/data/repository/home_repo_impl.dart';
import 'package:mad_soft/home/presentation/screens/main_screen.dart';

import 'home/presentation/screens/plan_screen.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
    ),
    GoRoute(
      path: '/plan',
      builder: (BuildContext context, GoRouterState state) {
        return PlanScreen(
          extra: state.extra as PlanScreenExtra,
        );
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required DioClient dioClient,
  }) : _dioClient = dioClient;

  final DioClient _dioClient;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => HomeRepo(_dioClient),
      child: MaterialApp.router(
        theme: ThemeData(),
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      ),
    );
  }
}
