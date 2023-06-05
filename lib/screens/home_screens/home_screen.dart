import 'package:ami/business_logic/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../constants/navigation/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          OutlinedButton(
            onPressed: () {
              context.read<ThemeBloc>().add(ThemeEventChangeTheme(context: context));
            },
            child: Text('Theme'),
          ),
        ],
      ),
      body: InkWell(
          onTap: (){

            context.go(Routes.kAboutScreen);
            // Navigator.pushNamed(context,Routes.kAboutScreen);
          },
          child: Card(child: Container(height: 300,width: 300,),))
    );
  }
}
