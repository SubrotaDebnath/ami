import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

abstract class Log {
  void info({
    required String title,
    required dynamic msg,
  });

  void warning({
    required String title,
    required dynamic msg,
  });

  void exception({
    required String title,
    required dynamic msg,
  });

  void error({
    required String title,
    required dynamic msg,
  });

  void debug({
    required String title,
    required dynamic msg,
  });

  void blocObserver({
    required String title,
    required dynamic msg,
  });

  void verbose({
    required String title,
    required dynamic msg,
  });
}

class LogImpl extends Log {
  final _logger = Logger(
    filter: MyLogFilter(),
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 220,
    ),
  );

  @override
  void info({
    required String title,
    required dynamic msg,
  }) {
    _logger.i('INFO:: $title\n$msg');
  }

  @override
  void warning({
    required String title,
    required dynamic msg,
  }) {
    _logger.w('WARNING:: $title\n$msg');
  }

  @override
  void exception({
    required String title,
    required dynamic msg,
  }) {
    _logger.f('Exception:: $title\n$msg');
  }

  @override
  void error({
    required String title,
    required dynamic msg,
  }) {
    _logger.e('ERROR:: $title\n$msg');
  }

  @override
  void debug({
    required String title,
    required dynamic msg,
  }) {
    _logger.d('DEBUG:: $title\n$msg');
  }

  @override
  void blocObserver({
    required String title,
    required dynamic msg,
  }) {
    _logger.t('Business Logic:: $title\n$msg');
  }

  @override
  void verbose({
    required String title,
    required dynamic msg,
  }) {
    _logger.t('Verbose:: $title\n$msg');
  }
}

class MyLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (kDebugMode) {
      return true;
    }
    return false;
  }
}
