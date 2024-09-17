import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peterbk/presentation/home/pages/home.dart';
import 'package:peterbk/presentation/work/pages/work_page.dart';

class AppRouter {
  
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'work',
            builder: (BuildContext context, GoRouterState state) {
              return const WorkPage();
            },
          ),
        ],
      ),
    ],
  );
}
