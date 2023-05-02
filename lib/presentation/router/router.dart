import 'package:calcule_imc/core/enums/route_enum.dart';
import 'package:calcule_imc/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteEnum.home.path,
  routes: <GoRoute>[
    GoRoute(
      path: RouteEnum.home.path,
      name: RouteEnum.home.name,
      builder: (_, GoRouterState state) => const HomePage(
        key: ValueKey('home-page'),
      ),
    ),
  ],
);
