part of 'theme_bloc.dart';


abstract class ThemeState extends Equatable {

  const ThemeState({
    required this.themeData,
    required this.themeStatus,
  });

  final ThemeData themeData;
  final ThemeStatus themeStatus;
}

class ThemeInitial extends ThemeState {
  ThemeInitial()
      : super(
    themeStatus: ThemeStatus.system,
    themeData: ThemeData.dark(),
  );

  @override
  List<Object> get props => <Object>[];
}

class DarkTheme extends ThemeState {
  DarkTheme()
      : super(
    themeStatus: ThemeStatus.dark,
    themeData: ThemeData.dark(),
  );

  @override
  List<Object?> get props => <Object>[];
}

class LightTheme extends ThemeState {
  LightTheme()
      : super(
    themeStatus: ThemeStatus.light,
    themeData: ThemeData.light(),
  );

  @override
  List<Object?> get props => <Object>[];
}

class Default extends ThemeState {

  const Default({
    required super.themeStatus,
    required super.themeData,
  });

  @override
  List<Object?> get props => <Object>[];
}
