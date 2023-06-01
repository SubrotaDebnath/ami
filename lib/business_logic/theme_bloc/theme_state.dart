part of 'theme_bloc.dart';


abstract class ThemeState extends Equatable {
  final ThemeData themeData;
  final ThemeStatus themeStatus;

  const ThemeState({
    required this.themeData,
    required this.themeStatus,
  });
}

class ThemeInitial extends ThemeState {
  ThemeInitial()
      : super(
    themeStatus: ThemeStatus.system,
    themeData: ThemeData.dark(),
  );

  @override
  List<Object> get props => [];
}

class DarkTheme extends ThemeState {
  DarkTheme()
      : super(
    themeStatus: ThemeStatus.dark,
    themeData: ThemeData.dark(),
  );

  @override
  List<Object?> get props => [];
}

class LightTheme extends ThemeState {
  LightTheme()
      : super(
    themeStatus: ThemeStatus.light,
    themeData: ThemeData.light(),
  );

  @override
  List<Object?> get props => [];
}

class Default extends ThemeState {

  const Default({
    required themeStatus,
    required themeData,
  }) : super(
    themeStatus: themeStatus,
    themeData: themeData,
  );

  @override
  List<Object?> get props => [];
}
