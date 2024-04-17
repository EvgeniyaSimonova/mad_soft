import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/dio_client/dio_client.dart';
import 'package:mad_soft/home/data/repository/home_repo_impl.dart';
import 'package:mad_soft/home/presentation/screens/home_screen.dart';

import 'home/presentation/screens/plan_screen.dart';

class MyApp extends StatelessWidget {
  final DioClient _dioClient;

  const MyApp({super.key, required DioClient dioClient})
      : _dioClient = dioClient;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => HomeRepo(_dioClient),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const MyHomePage(),
          '/plan': (context) => const PlanScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
