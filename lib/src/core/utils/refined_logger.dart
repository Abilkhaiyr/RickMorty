import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

const logger = AppLogger();

final class AppLogger {
  const AppLogger();
  void logZoneError(Object error, StackTrace stack) => developer.log(
    'Application error',
    name: 'rick_morty',
    error: error,
    stackTrace: stack,
  );
  void logFlutterError(FlutterErrorDetails details) {
    FlutterError.presentError(details);
    logZoneError(details.exception, details.stack ?? StackTrace.current);
  }
}
