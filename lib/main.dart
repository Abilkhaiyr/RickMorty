import 'dart:async';
import 'package:rick_morty/src/core/utils/refined_logger.dart';
import 'package:rick_morty/src/feature/app/logic/app_runner.dart';

void main() => runZonedGuarded(
  () => const AppRunner().initializeAndRun(),
  logger.logZoneError,
);
