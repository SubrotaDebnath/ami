import 'package:flutter_bloc/flutter_bloc.dart';
import '../dev/log.dart';


class PortfolioObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    final Log log = Log(tag: bloc.runtimeType.toString());
    log.blocObserver(title: change.toString(), msg: '${change.currentState} -> ${change.nextState}');
  }
}
