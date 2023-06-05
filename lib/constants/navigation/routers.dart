
import 'package:ami/constants/navigation/routes.dart';
import 'package:ami/screens/about.dart';
import 'package:ami/screens/contact.dart';
import 'package:ami/screens/error_screens/navigation_error_screen.dart';
import 'package:ami/screens/home_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routers {
  GoRouter router = GoRouter(
    initialLocation: Routes.kHomeScreen,
    routes: [
      GoRoute(
        name: Routes.kHomeScreen,
        path: Routes.kHomeScreen,
        builder: (context, state) => HomeScreen(key: state.pageKey,),

      ),
      GoRoute(
        name: Routes.kAboutScreen,
        path: Routes.kAboutScreen,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: const About(),
            transitionDuration: const Duration(milliseconds: 1500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(
                opacity:
                CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: Routes.kContactScreen,
        path: Routes.kContactScreen,
        builder: (context, state) => Contact(),
        // pageBuilder: (context,state)=>MaterialPage(child: Contact()),

      ),
    ],
    // errorBuilder: (context,state)=> NavigationErrorScreen(),
    errorPageBuilder:  (context,state)=>MaterialPage(child: NavigationErrorScreen()),
  );
}
