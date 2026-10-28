import 'package:flutter/material.dart';
import '../../../core/constant/config.dart';
import '../../../core/utils/refined_logger.dart';
import '../initialization/logic/composition_root.dart';
import '../initialization/widget/initialization_failed_app.dart';
import '../presentation/app.dart';

final class AppRunner {
  const AppRunner();
  Future<void> initializeAndRun() async {
    final binding = WidgetsFlutterBinding.ensureInitialized();
    binding.deferFirstFrame();
    FlutterError.onError = logger.logFlutterError;
    binding.platformDispatcher.onError = (error, stack) {
      logger.logZoneError(error, stack);
      return true;
    };
    try {
      final result = await const CompositionRoot(Config()).compose();
      runApp(App(result: result));
    } catch (error, stack) {
      logger.logZoneError(error, stack);
      runApp(InitializationFailedApp(retryInitialization: initializeAndRun));
    } finally {
      binding.allowFirstFrame();
    }
  }
}
