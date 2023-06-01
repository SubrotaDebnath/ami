import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class Log {
  final dynamic tag;

  Log({required this.tag,});

  final logger = Logger(
      filter: MyLogFilter(),
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 5,
        lineLength: 220,
        colors: true,
        printEmojis: true,
        printTime: false,
      )
  );

  info({required String title, required dynamic msg,}){
    logger.i('INFO:: $tag\n$title\n$msg');
  }
 warning({required String title, required dynamic msg,}){
    logger.w('WARNING:: $tag\n$title\n$msg');
  }

  exception({required String title, required dynamic msg,}){
    logger.wtf('Exception:: $tag \n$title\n$msg');
  }

  error({required String title, required dynamic msg,}){
    logger.e('ERROR:: $tag \n$title\n$msg');
  }

  debug({required String title, required dynamic msg,}){
    logger.d('DEBUG:: $tag \n$title\n$msg');
  }
  blocObserver({required String title, required dynamic msg,}){
    // logger.v('\x1B[33m${'Bloc Observer:: $tag \n${'\x1B[33m$title\x1B[0m'}\x1B[0m}\n\x1B[36m$msg\x1B[0m'}\x1B[0m');
    logger.v('Business Logic:: $tag \n$title\n$msg');
  }
  verbose({required String title, required dynamic msg,}){
    // logger.v('\x1B[33m${'Bloc Observer:: $tag \n${'\x1B[33m$title\x1B[0m'}\x1B[0m}\n\x1B[36m$msg\x1B[0m'}\x1B[0m');
    logger.v('Verbose:: $tag \n$title\n$msg');
  }


// info({required String title, required dynamic msg,}){
  //   logger.i('INFO::----- $tag -------\n$title\n$msg');
  // }
  //
  // info({required String title, required dynamic msg,}){
  //   logger.i('INFO::----- $tag -------\n$title\n$msg');
  // }

}



class MyLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {

    if(kDebugMode){
      return true;
    }
    return false;
  }
}
