import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../single_static_page/presentation/screens/home_screens/static_desktop_home_screen.dart';
import '../../single_static_page/presentation/screens/landing_screens/static_landing_screen.dart';
import 'routes.dart';

class Routers {
  GoRouter router = GoRouter(
    // initialLocation: Routes.kHomeScreen,
    // Static Single Page
    initialLocation: Routes.kLandingScreen,
    routes: [

      // Static Screens
      GoRoute(
        // name: Routes.kHomeScreen,
        path: Routes.kHomeScreen,
        builder: (context, state) => StaticDesktopHomeScreen(

        ),
      ),
      GoRoute(
        name: Routes.kLandingScreen,
        path: Routes.kLandingScreen,
        builder: (context, state) => StaticLandingScreen(
        ),
      ),
    ],
    errorPageBuilder: (context, state) =>
        const MaterialPage(child: NavigationErrorScreen()),
  );
}


class NavigationErrorScreen extends StatelessWidget {
  const NavigationErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
