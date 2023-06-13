import 'package:flutter_bloc/flutter_bloc.dart';

import '../dev/log.dart';


class PortfolioObserver extends BlocObserver {

  @override
  void onChange( BlocBase<dynamic> bloc,   Change<dynamic> change) {
    super.onChange(bloc, change);
    Log(tag: bloc.runtimeType.toString()).blocObserver(title: change.toString(), msg: '${change.currentState} -> ${change.nextState}');
  }
}
