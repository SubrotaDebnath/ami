import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/navigation/routers.dart';
import 'dev/portfolio_observer.dart';


void main() {
  Bloc.observer = PortfolioObserver();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        // BlocProvider<ThemeBloc>(
        //   create: (context) =>
        //       ThemeBloc()..add(ThemeEventSetUp(context: context)),
        // ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: Routers().router,
        theme:ThemeData.dark(),
      ),
    );
  }
}
