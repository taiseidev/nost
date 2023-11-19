import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) => GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: $appRoutes,
    );

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
