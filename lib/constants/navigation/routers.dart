import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

class Routers {
  GoRouter router = GoRouter(
    initialLocation: Routes.kHomeScreen,
    routes: [
      GoRoute(
        name: Routes.kHomeScreen,
        path: Routes.kHomeScreen,
        builder: (context, state) => HomeScreen(
          key: state.pageKey,
        ),
      ),
    ],
    errorPageBuilder: (context, state) =>
        const MaterialPage(child: NavigationErrorScreen()),
  );
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    appBar: AppBar(),
    body: Container(),
  );
  }
}

class NavigationErrorScreen extends StatelessWidget {
  const NavigationErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
