import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peterbk/presentation/home/pages/home.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: const <RouteBase>[],
      ),
    ],
  );
}
