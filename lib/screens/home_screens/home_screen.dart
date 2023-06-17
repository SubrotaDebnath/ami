import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../business_logic/theme_bloc/theme_bloc.dart';
import '../../constants/navigation/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
              context
                  .read<ThemeBloc>()
                  .add(ThemeEventChangeTheme(context: context));
            },
            child: const Text('Theme'),
          ),
        ],
      ),
      body: InkWell(
        onTap: () {
          context.go(Routes.kAboutScreen);
          // Navigator.pushNamed(context,Routes.kAboutScreen);
        },
        child: const Card(
          child: SizedBox(
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
