import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';

/// NavigatorKey
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

const homeStatefulShellBranch = TypedStatefulShellBranch<HomeBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(
      path: MainRouteConst.homeRoutePath,
    ),
  ],
);

final class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
  static const String $restorationScopeId = 'homeRestorationScopeId';
}

final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ホーム画面'),
          ],
        ),
      ),
    );
  }
}
