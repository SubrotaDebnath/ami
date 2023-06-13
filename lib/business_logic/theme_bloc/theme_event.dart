part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeEventSetUp extends ThemeEvent {
  const ThemeEventSetUp({required this.context}) : super();
  final BuildContext context;


  @override
  List<Object?> get props => <Object>[] ;
}
class ThemeEventChangeTheme extends ThemeEvent {
  const ThemeEventChangeTheme({required this.context}) : super();
  final BuildContext context;


  @override
  List<Object?> get props => <Object> [];
}
