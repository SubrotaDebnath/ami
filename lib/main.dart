import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'business_logic/portfolio_observer.dart';
import 'business_logic/theme_bloc/theme_bloc.dart';
import 'constants/navigation/routers.dart';
import 'constants/strings.dart';
import 'constants/theme/app_theme.dart';

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
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc()..add(ThemeEventSetUp(context: context)),
        ),
      ],
      child: BlocConsumer<ThemeBloc, ThemeState>(
  listener: (context, themeState) {
  },
  builder: (context, themeState) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: Strings().kName,
        routerConfig: Routers().router,
        // routeInformationParser: Routers().router.routeInformationParser ,
        // routerDelegate: Routers().router.routerDelegate,
        // initialRoute: Routes.kHomeScreen,
        // onGenerateRoute: RouteGenerator.generateRoute,
        theme:AppTheme(themeState: themeState).themeData(),
      );
  },
),
    );
  }
}

// class ViewSelector extends StatefulWidget {
//   const ViewSelector({super.key});
//
//   @override
//   ViewSelectorState createState() => ViewSelectorState();
// }
//
// class ViewSelectorState extends State<ViewSelector> {
//   Size screenSize =  Size.zero;
//
//   @override
//   Widget build(BuildContext context) {
//     setState(() {
//       screenSize = MediaQuery.of(context).size;
//     });
//
//     return  screenSize.width >= 992
//         ? WebView(width: screenSize.width)
//         : screenSize.width < 992 && screenSize.width > 600
//         ?const TabView()
//         : const MobileView();
//
//   }
//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(DiagnosticsProperty<Size>('screenSize', screenSize));
//   }
// }
