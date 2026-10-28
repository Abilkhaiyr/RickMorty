import 'package:flutter/foundation.dart';
import 'package:talker/talker.dart';

abstract final class TalkerLoggerUtil {
  static final Talker talker = Talker(
    settings: TalkerSettings(useConsoleLogs: kDebugMode),
  );
}
