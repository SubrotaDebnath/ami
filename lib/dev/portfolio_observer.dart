import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection_container.dart';
import 'log.dart';

class PortfolioObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    sl<Log>().blocObserver(
      title: bloc.runtimeType.toString(),
      msg: '${change.currentState} -> ${change.nextState}',
    );
  }
}
