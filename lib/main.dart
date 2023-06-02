import 'package:ami/business_logic/portfolio_observer.dart';
import 'package:ami/business_logic/theme_bloc/theme_bloc.dart';
import 'package:ami/constants/strings.dart';
import 'package:ami/constants/theme/app_theme.dart';
import 'package:ami/screens/large_screen_view.dart';
import 'package:ami/screens/mobile_screen_view.dart';
import 'package:ami/screens/tablet_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/navigation/route_generator.dart';
import 'constants/navigation/routes.dart';

void main() {
  Bloc.observer = PortfolioObserver();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (BuildContext context) => ThemeBloc()..add(ThemeEventSetUp(context: context)),
        ),
      ],
      child: BlocConsumer<ThemeBloc, ThemeState>(
  listener: (context, themeState) {
  },
  builder: (context, themeState) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings().kName,
        initialRoute: Routes.kHomeScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme:AppTheme(themeState: themeState).themeData(),
      );
  },
),
    );
  }
}

class ViewSelector extends StatefulWidget {
  @override
  _ViewSelectorState createState() => _ViewSelectorState();
}

class _ViewSelectorState extends State<ViewSelector> {
  Size screenSize = Size(0, 0);

  @override
  Widget build(BuildContext context) {
    setState(() {
      screenSize = MediaQuery.of(context).size;
    });

    return  screenSize.width >= 992
        ? WebView(screenSize.width)
        : screenSize.width < 992 && screenSize.width > 600
        ?TabView()
        : MobileView();

  }
}
