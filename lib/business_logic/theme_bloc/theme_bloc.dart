import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/enums.dart';
import '../../data/cashed/preferences.dart';
import '../../data/cashed/preferences_key.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEventSetUp>(_onThemeEventSetUp);
    on<ThemeEventChangeTheme>(_onThemeEventChangeTheme);
  }
}

_onThemeEventSetUp(ThemeEventSetUp event, Emitter<ThemeState> emit) async {
  emit(ThemeInitial());
  int themeStatus = await Preferences().getIntValue(
    keyName: PreferencesKey.kThemeStatus,
  );

  Brightness brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;


  if (themeStatus == ThemeStatus.dark.index) {
    emit(DarkTheme());
  } else if (themeStatus == ThemeStatus.light.index) {
    emit(LightTheme());
  } else {
    await Preferences().setIntValue(
      keyName: PreferencesKey.kThemeStatus,
      value: ThemeStatus.system.index,
    );
    if (brightness == Brightness.dark) {
      emit(
        Default(
          themeStatus: ThemeStatus.system,
          themeData: ThemeData.dark(),
        ),
      );
    } else {
      emit(
        Default(
          themeStatus: ThemeStatus.system,
          themeData: ThemeData.light(),
        ),
      );
    }
  }
}

_onThemeEventChangeTheme(
  ThemeEventChangeTheme event,
  Emitter<ThemeState> emit,
) async {
  emit(ThemeInitial());
  int themeStatus = await Preferences().getIntValue(
    keyName: PreferencesKey.kThemeStatus,
  );

  Brightness brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;

  //Dark
  if (themeStatus == ThemeStatus.dark.index) {
    await Preferences().setIntValue(
      keyName: PreferencesKey.kThemeStatus,
      value: 1,
    );
    emit(LightTheme());
  }
  //Light
  else if (themeStatus == ThemeStatus.light.index) {
    await Preferences().setIntValue(
      keyName: PreferencesKey.kThemeStatus,
      value: ThemeStatus.dark.index,
    );
    emit(DarkTheme());
  } else {
    await Preferences().setIntValue(
      keyName: PreferencesKey.kThemeStatus,
      value: ThemeStatus.system.index,
    );
    //Dark
    if (brightness == Brightness.dark) {
      emit(
        Default(
          themeStatus: ThemeStatus.system,
          themeData: ThemeData.light(),
        ),
      );
    }
    //Light
    else {
      emit(
        Default(
          themeStatus: ThemeStatus.system,
          themeData: ThemeData.dark(),
        ),
      );
    }
  }
}
