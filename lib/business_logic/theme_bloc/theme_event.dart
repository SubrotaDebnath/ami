part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeEventSetUp extends ThemeEvent {
  final BuildContext context;
  const ThemeEventSetUp({required this.context}) : super();

  @override
  List<Object?> get props => [];
}
class ThemeEventChangeTheme extends ThemeEvent {
  final BuildContext context;
  const ThemeEventChangeTheme({required this.context}) : super();

  @override
  List<Object?> get props => [];
}
