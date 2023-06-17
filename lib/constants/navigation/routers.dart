import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screens/about.dart';
import '../../screens/contact.dart';
import '../../screens/error_screens/navigation_error_screen.dart';
import '../../screens/home_screens/home_screen.dart';
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
      GoRoute(
        name: Routes.kAboutScreen,
        path: Routes.kAboutScreen,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const About(),
          transitionDuration: const Duration(milliseconds: 1500),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          ),
        ),
      ),
      GoRoute(
        name: Routes.kContactScreen,
        path: Routes.kContactScreen,
        builder: (context, state) => const Contact(),
        // pageBuilder: (context,state)=>MaterialPage(child: Contact()),
      ),
    ],
    // errorBuilder: (context,state)=> NavigationErrorScreen(),
    errorPageBuilder: (context, state) =>
        const MaterialPage(child: NavigationErrorScreen()),
  );
}
