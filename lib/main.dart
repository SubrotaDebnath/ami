import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/navigation/routers.dart';
import 'dev/portfolio_observer.dart';
import 'injection_container.dart' as di;


Future<void> main() async {
  Bloc.observer = PortfolioObserver();
  await di.init();
  runApp(
    const MyPortfolioApp(),
  );
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Without BLoC
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routers().router,
      theme: ThemeData.light(useMaterial3: true),
    );

    //With BLoC
    // return MultiBlocProvider(
    //   providers: const [
    //     // BlocProvider<ThemeBloc>(
    //     //   create: (context) =>
    //     //       ThemeBloc()..add(ThemeEventSetUp(context: context)),
    //     // ),
    //   ],
    //   child: MaterialApp.router(
    //     debugShowCheckedModeBanner: false,
    //     routerConfig: Routers().router,
    //     theme:ThemeData.dark(),
    //   ),
    // );
  }
}
