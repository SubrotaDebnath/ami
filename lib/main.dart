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
